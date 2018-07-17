function newton=asep (a,b)
    i = 1;
    fc(i) = 1;
    while fc(i) < 0.00001 or c < 0.0001
       c(i) = b - (((b^3-9*b^2+23*b-16)-(b-a))/((b^3-9*b^2+23*b-16)-(a^3-9*a^2+23*a-16)));
       fa(i) = a^3-9*a^2+23*a-16;
       fb(i) = b^3-9*b^2+23*b-16;
       fc(i)=c^3-9*c^2+23*c-16; 
       i=i+1;
   end;    
       newton = [fa fc fb]; 
endfunction
