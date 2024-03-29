-- ==============================================================
-- File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2014.4
-- Copyright (C) 2014 Xilinx Inc. All rights reserved.
-- 
-- ==============================================================

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity acorn128_dec_onebyte_AXILiteS_s_axi is
    generic (
        C_ADDR_WIDTH    : INTEGER := 11;
        C_DATA_WIDTH    : INTEGER := 32);
    port (
        -- axi4 lite slave signals
        ACLK                  :in   STD_LOGIC;
        ARESET                :in   STD_LOGIC;
        ACLK_EN               :in   STD_LOGIC;
        AWADDR                :in   STD_LOGIC_VECTOR(C_ADDR_WIDTH-1 downto 0);
        AWVALID               :in   STD_LOGIC;
        AWREADY               :out  STD_LOGIC;
        WDATA                 :in   STD_LOGIC_VECTOR(C_DATA_WIDTH-1 downto 0);
        WSTRB                 :in   STD_LOGIC_VECTOR(C_DATA_WIDTH/8-1 downto 0);
        WVALID                :in   STD_LOGIC;
        WREADY                :out  STD_LOGIC;
        BRESP                 :out  STD_LOGIC_VECTOR(1 downto 0);
        BVALID                :out  STD_LOGIC;
        BREADY                :in   STD_LOGIC;
        ARADDR                :in   STD_LOGIC_VECTOR(C_ADDR_WIDTH-1 downto 0);
        ARVALID               :in   STD_LOGIC;
        ARREADY               :out  STD_LOGIC;
        RDATA                 :out  STD_LOGIC_VECTOR(C_DATA_WIDTH-1 downto 0);
        RRESP                 :out  STD_LOGIC_VECTOR(1 downto 0);
        RVALID                :out  STD_LOGIC;
        RREADY                :in   STD_LOGIC;
        interrupt             :out  STD_LOGIC;
        -- user signals
        ap_start              :out  STD_LOGIC;
        ap_done               :in   STD_LOGIC;
        ap_ready              :in   STD_LOGIC;
        ap_idle               :in   STD_LOGIC;
        ap_return             :in   STD_LOGIC_VECTOR(31 downto 0);
        state_address0        :in   STD_LOGIC_VECTOR(8 downto 0);
        state_ce0             :in   STD_LOGIC;
        state_we0             :in   STD_LOGIC;
        state_d0              :in   STD_LOGIC_VECTOR(7 downto 0);
        state_q0              :out  STD_LOGIC_VECTOR(7 downto 0);
        plaintextbyte         :out  STD_LOGIC_VECTOR(7 downto 0);
        ciphertextbyte        :out  STD_LOGIC_VECTOR(7 downto 0);
        ksbyte                :out  STD_LOGIC_VECTOR(7 downto 0);
        cabyte                :out  STD_LOGIC_VECTOR(7 downto 0);
        cbbyte                :out  STD_LOGIC_VECTOR(7 downto 0));
end entity acorn128_dec_onebyte_AXILiteS_s_axi;

--------------------------Address Info-------------------
-- 0x000 : Control signals
--         bit 0  - ap_start (Read/Write/COH)
--         bit 1  - ap_done (Read/COR)
--         bit 2  - ap_idle (Read)
--         bit 3  - ap_ready (Read)
--         bit 7  - auto_restart (Read/Write)
--         others - reserved
-- 0x004 : Global Interrupt Enable Register
--         bit 0  - Global Interrupt Enable (Read/Write)
--         others - reserved
-- 0x008 : IP Interrupt Enable Register (Read/Write)
--         bit 0  - Channel 0 (ap_done)
--         bit 1  - Channel 1 (ap_ready)
--         others - reserved
-- 0x00c : IP Interrupt Status Register (Read/TOW)
--         bit 0  - Channel 0 (ap_done)
--         bit 1  - Channel 1 (ap_ready)
--         others - reserved
-- 0x010 : Data signal of ap_return
--         bit 31~0 - ap_return[31:0] (Read)
-- 0x400 : Data signal of plaintextbyte
--         bit 7~0 - plaintextbyte[7:0] (Read/Write)
--         others  - reserved
-- 0x404 : reserved
-- 0x408 : Data signal of ciphertextbyte
--         bit 7~0 - ciphertextbyte[7:0] (Read/Write)
--         others  - reserved
-- 0x40c : reserved
-- 0x410 : Data signal of ksbyte
--         bit 7~0 - ksbyte[7:0] (Read/Write)
--         others  - reserved
-- 0x414 : reserved
-- 0x418 : Data signal of cabyte
--         bit 7~0 - cabyte[7:0] (Read/Write)
--         others  - reserved
-- 0x41c : reserved
-- 0x420 : Data signal of cbbyte
--         bit 7~0 - cbbyte[7:0] (Read/Write)
--         others  - reserved
-- 0x424 : reserved
-- 0x200 ~
-- 0x3ff : Memory 'state' (293 * 8b)
--         Word n : bit [ 7: 0] - state[4n]
--                  bit [15: 8] - state[4n+1]
--                  bit [23:16] - state[4n+2]
--                  bit [31:24] - state[4n+3]
-- (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

architecture behave of acorn128_dec_onebyte_AXILiteS_s_axi is
    constant ADDR_BITS          : INTEGER   := 11;
    constant ADDR_AP_CTRL : INTEGER :=16#000#;
    constant ADDR_GIE : INTEGER :=16#004#;
    constant ADDR_IER : INTEGER :=16#008#;
    constant ADDR_ISR : INTEGER :=16#00c#;
    constant ADDR_AP_RETURN_0 : INTEGER :=16#010#;
    constant ADDR_PLAINTEXTBYTE_DATA_0 : INTEGER :=16#400#;
    constant ADDR_PLAINTEXTBYTE_CTRL : INTEGER :=16#404#;
    constant ADDR_CIPHERTEXTBYTE_DATA_0 : INTEGER :=16#408#;
    constant ADDR_CIPHERTEXTBYTE_CTRL : INTEGER :=16#40c#;
    constant ADDR_KSBYTE_DATA_0 : INTEGER :=16#410#;
    constant ADDR_KSBYTE_CTRL : INTEGER :=16#414#;
    constant ADDR_CABYTE_DATA_0 : INTEGER :=16#418#;
    constant ADDR_CABYTE_CTRL : INTEGER :=16#41c#;
    constant ADDR_CBBYTE_DATA_0 : INTEGER :=16#420#;
    constant ADDR_CBBYTE_CTRL : INTEGER :=16#424#;
    constant ADDR_STATE_BASE : INTEGER :=16#200#;
    constant ADDR_STATE_HIGH : INTEGER :=16#3ff#;
    type states is (wridle, wrdata, wrresp, rdidle, rddata);  -- read and write FSM states
    signal wstate, wnext, rstate, rnext: states;
    -- Local signal
    signal waddr               : UNSIGNED(ADDR_BITS-1 downto 0);
    signal wmask               : UNSIGNED(31 downto 0);
    signal aw_hs               : STD_LOGIC;
    signal w_hs                : STD_LOGIC;
    signal rdata_data          : UNSIGNED(31 downto 0);
    signal ar_hs               : STD_LOGIC;
    signal raddr               : UNSIGNED(ADDR_BITS-1 downto 0);
    signal AWREADY_t           : STD_LOGIC;
    signal WREADY_t            : STD_LOGIC;
    signal ARREADY_t           : STD_LOGIC;
    signal RVALID_t            : STD_LOGIC;
    -- internal registers
    signal int_ap_idle         : STD_LOGIC;
    signal int_ap_ready        : STD_LOGIC;
    signal int_ap_done         : STD_LOGIC;
    signal int_ap_start        : STD_LOGIC;
    signal int_auto_restart    : STD_LOGIC;
    signal int_gie             : STD_LOGIC;
    signal int_ier             : UNSIGNED(1 downto 0);
    signal int_isr             : UNSIGNED(1 downto 0);
    signal int_ap_return       : UNSIGNED(31 downto 0);
    signal int_plaintextbyte   : UNSIGNED(7 downto 0);
    signal int_ciphertextbyte  : UNSIGNED(7 downto 0);
    signal int_ksbyte          : UNSIGNED(7 downto 0);
    signal int_cabyte          : UNSIGNED(7 downto 0);
    signal int_cbbyte          : UNSIGNED(7 downto 0);
    -- memory signals
    signal int_state_address0  : UNSIGNED(6 downto 0);
    signal int_state_ce0       : STD_LOGIC;
    signal int_state_we0       : STD_LOGIC;
    signal int_state_be0       : UNSIGNED(3 downto 0);
    signal int_state_d0        : UNSIGNED(31 downto 0);
    signal int_state_q0        : UNSIGNED(31 downto 0);
    signal int_state_address1  : UNSIGNED(6 downto 0);
    signal int_state_ce1       : STD_LOGIC;
    signal int_state_we1       : STD_LOGIC;
    signal int_state_be1       : UNSIGNED(3 downto 0);
    signal int_state_d1        : UNSIGNED(31 downto 0);
    signal int_state_q1        : UNSIGNED(31 downto 0);
    signal int_state_read      : STD_LOGIC;
    signal int_state_write     : STD_LOGIC;
    signal int_state_shift     : UNSIGNED(1 downto 0);

    component acorn128_dec_onebyte_AXILiteS_s_axi_ram is
        generic (
            BYTES   : INTEGER :=4;
            DEPTH   : INTEGER :=256;
            AWIDTH  : INTEGER :=8);
        port (
            clk     : in  STD_LOGIC;
            address0: in  UNSIGNED(AWIDTH-1 downto 0);
            ce0     : in  STD_LOGIC;
            we0     : in  STD_LOGIC;
            be0     : in  UNSIGNED(BYTES-1 downto 0);
            d0      : in  UNSIGNED(BYTES*8-1 downto 0);
            q0      : out UNSIGNED(BYTES*8-1 downto 0);
            address1: in  UNSIGNED(AWIDTH-1 downto 0);
            ce1     : in  STD_LOGIC;
            we1     : in  STD_LOGIC;
            be1     : in  UNSIGNED(BYTES-1 downto 0);
            d1      : in  UNSIGNED(BYTES*8-1 downto 0);
            q1      : out UNSIGNED(BYTES*8-1 downto 0));
    end component acorn128_dec_onebyte_AXILiteS_s_axi_ram;

    function log2 (x : INTEGER) return INTEGER is
        variable n, m : INTEGER;
    begin
        n := 1;
        m := 2;
        while m < x loop
            n := n + 1;
            m := m * 2;
        end loop;
        return n;
    end function log2;

begin
    -- int_state
    int_state : acorn128_dec_onebyte_AXILiteS_s_axi_ram
        generic map (
         BYTES    => 4,
         DEPTH    => 74,
         AWIDTH   => log2(74))
        port map (
         clk      => ACLK,
         address0 => int_state_address0,
         ce0      => int_state_ce0,
         we0      => int_state_we0,
         be0      => int_state_be0,
         d0       => int_state_d0,
         q0       => int_state_q0,
         address1 => int_state_address1,
         ce1      => int_state_ce1,
         we1      => int_state_we1,
         be1      => int_state_be1,
         d1       => int_state_d1,
         q1       => int_state_q1);

    -- axi write
    AWREADY_t <=  '1' when wstate = wridle else '0';
    AWREADY   <=  AWREADY_t;
    WREADY_t  <=  '1' when wstate = wrdata else '0';
    WREADY    <=  WREADY_t;
    BRESP     <=  "00";  -- OKAY
    BVALID    <=  '1' when wstate = wrresp else '0';
    wmask     <=  (31 downto 24 => WSTRB(3), 23 downto 16 => WSTRB(2), 15 downto 8 => WSTRB(1), 7 downto 0 => WSTRB(0));
    aw_hs     <=  AWVALID and AWREADY_t;
    w_hs      <=  WVALID and WREADY_t;

    -- write FSM
    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
            if (ARESET = '1') then
                wstate <= wridle;
            else
                wstate <= wnext;
            end if;
        end if;
    end process;

    process (wstate, AWVALID, WVALID, BREADY)
    begin
        case (wstate) is
        when wridle =>
            if (AWVALID = '1') then
                wnext <= wrdata;
            else
                wnext <= wridle;
            end if;
        when wrdata =>
            if (WVALID = '1') then
                wnext <= wrresp;
            else
                wnext <= wrdata;
            end if;
        when wrresp =>
            if (BREADY = '1') then
                wnext <= wridle;
            else
                wnext <= wrresp;
            end if;
        when others =>
            wnext <= wridle;
        end case;
    end process;

    waddr_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
            if (aw_hs = '1') then
                waddr <= UNSIGNED(AWADDR(ADDR_BITS-1 downto 0));
            end if;
        end if;
    end process;

    -- axi read
    ARREADY_t <= '1' when (rstate = rdidle) else '0';
    ARREADY <= ARREADY_t;
    RDATA   <= STD_LOGIC_VECTOR(rdata_data);
    RRESP   <= "00";  -- OKAY
    RVALID_t  <= '1' when (rstate = rddata) and (int_state_read = '0') else '0';
    RVALID    <= RVALID_t;
    ar_hs   <= ARVALID and ARREADY_t;
    raddr   <= UNSIGNED(ARADDR(ADDR_BITS-1 downto 0));

    -- read FSM
    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
            if (ARESET = '1') then
                rstate <= rdidle;
            else
                rstate <= rnext;
            end if;
        end if;
    end process;

    process (rstate, ARVALID, RREADY, RVALID_t)
    begin
        case (rstate) is
        when rdidle =>
            if (ARVALID = '1') then
                rnext <= rddata;
            else
                rnext <= rdidle;
            end if;
        when rddata =>
            if (RREADY = '1' and RVALID_t = '1') then
                rnext <= rdidle;
            else
                rnext <= rddata;
            end if;
        when others =>
            rnext <= rdidle;
        end case;
    end process;

    rdata_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
            if (ar_hs = '1') then
                case (TO_INTEGER(raddr)) is
                when ADDR_AP_CTRL =>
                    rdata_data <= (7 => int_auto_restart, 3 => int_ap_ready, 2 => int_ap_idle, 1 => int_ap_done, 0 => int_ap_start, others => '0');
                when ADDR_GIE =>
                    rdata_data <= (1 => int_gie, others => '0');
                when ADDR_IER =>
                    rdata_data <= (2 => int_ier(1), 1 => int_ier(0), others => '0');
                when ADDR_ISR =>
                    rdata_data <= (2 => int_isr(1), 1 => int_isr(0), others => '0');
                when ADDR_AP_RETURN_0 =>
                    rdata_data <= RESIZE(int_ap_return(31 downto 0), 32);
                when ADDR_PLAINTEXTBYTE_DATA_0 =>
                    rdata_data <= RESIZE(int_plaintextbyte(7 downto 0), 32);
                when ADDR_CIPHERTEXTBYTE_DATA_0 =>
                    rdata_data <= RESIZE(int_ciphertextbyte(7 downto 0), 32);
                when ADDR_KSBYTE_DATA_0 =>
                    rdata_data <= RESIZE(int_ksbyte(7 downto 0), 32);
                when ADDR_CABYTE_DATA_0 =>
                    rdata_data <= RESIZE(int_cabyte(7 downto 0), 32);
                when ADDR_CBBYTE_DATA_0 =>
                    rdata_data <= RESIZE(int_cbbyte(7 downto 0), 32);
                when others =>
                    rdata_data <= (others => '0');
                end case;
            elsif (int_state_read = '1') then
                rdata_data <= int_state_q1;
            end if;
        end if;
    end process;

    -- internal registers
    interrupt <= int_gie and (int_isr(0) or int_isr(1));
    ap_start <= int_ap_start;
    int_ap_idle <= ap_idle;
    int_ap_ready <= ap_ready;
    plaintextbyte <= STD_LOGIC_VECTOR(int_plaintextbyte);
    ciphertextbyte <= STD_LOGIC_VECTOR(int_ciphertextbyte);
    ksbyte <= STD_LOGIC_VECTOR(int_ksbyte);
    cabyte <= STD_LOGIC_VECTOR(int_cabyte);
    cbbyte <= STD_LOGIC_VECTOR(int_cbbyte);

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_start <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_AP_CTRL and WSTRB(0) = '1' and WDATA(0) = '1') then
                    int_ap_start <= '1';
                elsif (int_ap_ready = '1') then
                    int_ap_start <= int_auto_restart; -- clear on handshake/auto restart
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_done <= '0';
            elsif (ACLK_EN = '1') then
                if (ap_done = '1') then
                    int_ap_done <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_AP_CTRL) then
                    int_ap_done <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_auto_restart <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_AP_CTRL and WSTRB(0) = '1') then
                    int_auto_restart <= WDATA(7);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_gie <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_GIE and WSTRB(0) = '1') then
                    int_gie <= WDATA(0);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ier <= "00";
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_IER and WSTRB(0) = '1') then
                    int_ier <= UNSIGNED(WDATA(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_isr(0) <= '0';
            elsif (ACLK_EN = '1') then
                if (int_ier(0) = '1' and ap_done = '1') then
                    int_isr(0) <= '1';
                elsif (w_hs = '1' and waddr = ADDR_ISR and WSTRB(0) = '1') then
                    int_isr(0) <= int_isr(0) xor WDATA(0); -- toggle on write
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_isr(1) <= '0';
            elsif (ACLK_EN = '1') then
                if (int_ier(1) = '1' and ap_ready = '1') then
                    int_isr(1) <= '1';
                elsif (w_hs = '1' and waddr = ADDR_ISR and WSTRB(0) = '1') then
                    int_isr(1) <= int_isr(1) xor WDATA(1); -- toggle on write
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_return <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (ap_done = '1') then
                    int_ap_return <= UNSIGNED(ap_return);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_PLAINTEXTBYTE_DATA_0) then
                    int_plaintextbyte(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_plaintextbyte(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_CIPHERTEXTBYTE_DATA_0) then
                    int_ciphertextbyte(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_ciphertextbyte(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_KSBYTE_DATA_0) then
                    int_ksbyte(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_ksbyte(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_CABYTE_DATA_0) then
                    int_cabyte(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_cabyte(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_CBBYTE_DATA_0) then
                    int_cbbyte(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_cbbyte(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    -- state
    int_state_address0 <= SHIFT_RIGHT(UNSIGNED(state_address0), 2)(6 downto 0);
    int_state_ce0 <= state_ce0;
    int_state_we0 <= state_we0;
    int_state_be0 <= SHIFT_LEFT(TO_UNSIGNED(1, 4), TO_INTEGER(UNSIGNED(state_address0(1 downto 0))));
    int_state_d0 <= UNSIGNED(state_d0) & UNSIGNED(state_d0) & UNSIGNED(state_d0) & UNSIGNED(state_d0);
    state_q0 <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_state_q0, TO_INTEGER(int_state_shift) * 8)(7 downto 0));
    int_state_address1 <= raddr(8 downto 2) when ar_hs = '1' else waddr(8 downto 2);
    int_state_ce1 <= '1' when ar_hs = '1' or (int_state_write = '1' and WVALID  = '1') else '0';
    int_state_we1 <= '1' when int_state_write = '1' and WVALID = '1' else '0';
    int_state_be1 <= UNSIGNED(WSTRB);
    int_state_d1 <= UNSIGNED(WDATA);

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_state_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_STATE_BASE and raddr <= ADDR_STATE_HIGH) then
                    int_state_read <= '1';
                else
                    int_state_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_state_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_STATE_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_STATE_HIGH) then
                    int_state_write <= '1';
                elsif (WVALID = '1') then
                    int_state_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (state_ce0 = '1') then
                    int_state_shift <= UNSIGNED(state_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

end architecture behave;

library IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;

entity acorn128_dec_onebyte_AXILiteS_s_axi_ram is
    generic (
        BYTES   : INTEGER :=4;
        DEPTH   : INTEGER :=256;
        AWIDTH  : INTEGER :=8);
    port (
        clk     : in  STD_LOGIC;
        address0: in  UNSIGNED(AWIDTH-1 downto 0);
        ce0     : in  STD_LOGIC;
        we0     : in  STD_LOGIC;
        be0     : in  UNSIGNED(BYTES-1 downto 0);
        d0      : in  UNSIGNED(BYTES*8-1 downto 0);
        q0      : out UNSIGNED(BYTES*8-1 downto 0);
        address1: in  UNSIGNED(AWIDTH-1 downto 0);
        ce1     : in  STD_LOGIC;
        we1     : in  STD_LOGIC;
        be1     : in  UNSIGNED(BYTES-1 downto 0);
        d1      : in  UNSIGNED(BYTES*8-1 downto 0);
        q1      : out UNSIGNED(BYTES*8-1 downto 0));

end entity acorn128_dec_onebyte_AXILiteS_s_axi_ram;

architecture behave of acorn128_dec_onebyte_AXILiteS_s_axi_ram is
    signal address0_tmp : UNSIGNED(AWIDTH-1 downto 0);
    signal address1_tmp : UNSIGNED(AWIDTH-1 downto 0);
    type RAM_T is array (0 to DEPTH - 1) of UNSIGNED(BYTES*8 - 1 downto 0);
    shared variable mem : RAM_T := (others => (others => '0'));
begin

    process (address0)
    begin
    address0_tmp <= address0;
    --synthesis translate_off
          if (address0 > DEPTH-1) then
              address0_tmp <= (others => '0');
          else
              address0_tmp <= address0;
          end if;
    --synthesis translate_on
    end process;

    process (address1)
    begin
    address1_tmp <= address1;
    --synthesis translate_off
          if (address1 > DEPTH-1) then
              address1_tmp <= (others => '0');
          else
              address1_tmp <= address1;
          end if;
    --synthesis translate_on
    end process;

    --read port 0
    process (clk) begin
        if (clk'event and clk = '1') then
            if (ce0 = '1') then
                q0 <= mem(to_integer(address0_tmp));
            end if;
        end if;
    end process;

    --read port 1
    process (clk) begin
        if (clk'event and clk = '1') then
            if (ce1 = '1') then
                q1 <= mem(to_integer(address1_tmp));
            end if;
        end if;
    end process;

    gen_write : for i in 0 to BYTES - 1 generate
    begin
        --write port 0
        process (clk)
        begin
            if (clk'event and clk = '1') then
                if (ce0 = '1' and we0 = '1' and be0(i) = '1') then
                    mem(to_integer(address0_tmp))(8*i+7 downto 8*i) := d0(8*i+7 downto 8*i);
                end if;
            end if;
        end process;

        --write port 1
        process (clk)
        begin
            if (clk'event and clk = '1') then
                if (ce1 = '1' and we1 = '1' and be1(i) = '1') then
                    mem(to_integer(address1_tmp))(8*i+7 downto 8*i) := d1(8*i+7 downto 8*i);
                end if;
            end if;
        end process;

    end generate;

end architecture behave;


