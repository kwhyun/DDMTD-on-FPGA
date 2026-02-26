library ieee;
use ieee.std_logic_1164.all;   -- std_logic, std_logic_vector 같은 디지털 신호 타입 정의
use ieee.NUMERIC_STD.all;      -- unsigned/signed 및 산술 연산(+, -, 비교 등) 지원

library work;
use work.gencores_pkg.all;     -- 프로젝트 내부 공용 패키지 (여기서는 gc_sync 등에서 사용)

entity dmtd_sampler is
  port (
    -- input clock: 측정 대상(또는 비교 대상) 입력 클록
    clk_in_i : in std_logic;

    -- enable: '1'이면 동작, '0'이면 샘플 갱신을 억제/고정하는 쪽으로 동작(모드별로 다름)
    en_i : in std_logic := '1';

    -- DMTD sampling clock: DMTD 샘플링 클록(일반 모드에서 사용)
    clk_dmtd_i : in std_logic;

    -- 최종 출력: 샘플된 DMTD 비트열(느리게 변화하는 0/1)
    clk_sampled_o : out std_logic
    );

end dmtd_sampler;

architecture rtl of dmtd_sampler is

  -- 내부에서 사용할 입력 클록(분주 옵션이 켜지면 clk_in_i/2가 될 수 있음)
  signal clk_in : std_logic := '0';

  -- 샘플/파이프라인 레지스터들
  -- clk_i_d0~d3: 단계별로 신호를 한 클록씩 지연(레지스터 체인)
  signal clk_i_d0, clk_i_d1, clk_i_d2, clk_i_d3 : std_logic;

  -- attribute keep: 합성/최적화 과정에서 이 신호들을 "없애지 말고 유지"하라는 힌트
  -- (DMTD는 미묘한 타이밍/지터/배치 영향을 받기 쉬워서, 의도적으로 레지스터 체인을 남기려는 의도)
  attribute keep             : string;
  attribute keep of clk_in   : signal is "true";
  attribute keep of clk_i_d0 : signal is "true";
  attribute keep of clk_i_d1 : signal is "true";
  attribute keep of clk_i_d2 : signal is "true";
  attribute keep of clk_i_d3 : signal is "true";

  -- enable 신호도 레지스터로 한 번 받아 타이밍을 맞춤(일반 모드에서 사용)
  signal en_i_d0 : std_logic;
  
begin  -- rtl

    gen_input_straight : if(true) generate
      clk_in <= clk_in_i;
    end generate gen_input_straight;

    -- 핵심: clk_dmtd_i 도메인에서 clk_in을 샘플링 + 파이프라인
    p_the_dmtd_itself : process(clk_dmtd_i)
    begin
      if rising_edge(clk_dmtd_i) then
        -- 1단 샘플
        clk_i_d0 <= clk_in;

        -- enable도 1단 지연(타이밍 정렬)
        en_i_d0 <= en_i;

        -- 중요한 포인트:
        -- clk_i_d1 <= not( clk_i_d0 and en_i_d0 );
        --
        -- en_i_d0='1'이면: clk_i_d1 = not(clk_i_d0)  (샘플을 반전해서 사용)
        -- en_i_d0='0'이면: clk_i_d1 = not(0) = '1'   (출력을 강제로 1 쪽으로 고정)
        --
        -- 즉 enable을 끄면 샘플된 비트열이 갱신/변동하는 것을 막는 효과가 생김.
        clk_i_d1 <= not( clk_i_d0 and en_i_d0 );

        -- 추가 지연(레지스터 체인):
        -- 지터/글리치 완화라기보다, 합성/배치에서 경로를 안정화하고
        -- 다음 단계(deglitcher 등)에서 타이밍을 잡기 쉽도록 만드는 역할이 큼.
        clk_i_d2 <= clk_i_d1;
        clk_i_d3 <= clk_i_d2;
      end if;
    end process;

    -- 최종 출력
    clk_sampled_o <= clk_i_d3;

end rtl;
