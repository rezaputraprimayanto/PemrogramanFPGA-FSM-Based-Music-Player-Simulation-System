case state_reg is
    when idle =>
      if play = '1' then
        state_next <= song1;
      else
        state_next <= idle;
      end if;

    -- lagu ke-1
    when song1 =>
        if nexts = '1' then
          state_next <= song2;
        elsif
          prevs = '1' then
          state_next <= song1;
        end if;

    -- lagu ke-2
    when song2 =>
      if nexts = '1' then
        state_next <= song3;
      elsif
        prevs = '1' then
        state_next <= song1;
      else
        state_next <= song2;
      end if;

    -- lagu ke-3
    when song3 =>
      if nexts = '1' then
        state_next <= song4;
      elsif
        prevs = '1' then
        state_next <= song2;
      else
        state_next <= song3;
      end if;

    -- lagu ke-4
    when song4 =>
      if nexts = '1' then
        state_next <= song1;
      elsif
        prevs = '1' then
        state_next <= song3;
      else
        state_next <= song4;
      end if;
    end case;
end process;
