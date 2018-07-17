function total = bayar (belanja)
    if belanja>=500000 then
        total = belanja - (0.01*belanja);
    else
        total = belanja;
    end    
        
endfunction
