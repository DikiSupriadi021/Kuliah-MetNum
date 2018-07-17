function seidel=test(x0,xz,xy)

        x1 = (23-3*xz+4*xy)/10;
        x2 = (15-(3*x1)-(2*xy))/8;
        x3 = (24+x1-3*x2)/6;
        
        abs1 = abs((x1-x0)/x1);
        abs2 = abs((x2-xz)/x2);
        abs3 = abs((x3-xy)/x3)
    
  
seidel = [x1 x2 x3 abs1 abs2 abs3];
endfunction
