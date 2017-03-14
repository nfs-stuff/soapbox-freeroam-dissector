function setHelloFields(buf, pkt, subtree)
    local cli_cli_type = detectDirection(pkt)
    pkt.cols.protocol = 'SB-HELLO'
    pkt.cols.info = 'Hello Protocol [' .. cli_cli_type .. ']'

    if (cli_cli_type == 'C->S') then
        subtree:add(f_fr_pid, buf(10, 1))
--        subtree:add(f_fr_pid, buf(20, 4))
    else
        
    end
end

