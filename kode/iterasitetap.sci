function akar = iterasitetap (x0, eps)
    x(1) = x0; 
    g(1) = 100; 
    r = 1;
    /*for r = 1 : 11
        //Fungsi
        //x(r+1) = sqrt(4*x(r)+20);
        //x(r+1) = (x(r)^2-20)/4;
        //x(r+1) = 20/(x(r)-4);
        x(r+1) = (20/x(r))+4;
        
        //Galat
        g(r+1) = x(r+1)-x(r);
    end*/
    
    while abs (g(r))>eps
        //Fungsi
        //x(r+1) = sqrt(4*x(r)+20);
        //x(r+1) = (x(r)^2-20)/4;
        //x(r+1) = 20/(x(r)-4);
        x(r+1) = (20/x(r))+4;
        
        //Galat
        g(r+1) = x(r+1)-x(r);
        r = r+1;
    end
    
    g(1) = 0;
    akar = [x g];
endfunction
