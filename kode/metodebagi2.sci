function akar = metodebagi2(nilaia, nilaib, eps, delta)
    i = 1;
    a(i) = nilaia;
    b(i) = nilaib;
    fa(i) = f(a(i)); 
    fb(i) = f(b(i));
    c(i) = (a(i)+b(i))/2;
    fc(i) = f(c(i));
    g(i) = abs(a(i)-b(i));
    while abs (fc(i)) > eps & g(i) > delta
        if fa(i) * fc(i) < 0 then
            nilaib = c(i);
        else
            nilaia = c(i);
        end
        //Setelah nilai terganti
        i = i+1;
        a(i) = nilaia;
        b(i) = nilaib;
        fa(i) = f(a(i)); 
        fb(i) = f(b(i));
        c(i) = (a(i)+b(i))/2;
        fc(i) = f(c(i));
        g(i) = abs(a(i)-b(i));
        gc(i) = abs(c(i)-c(i-1));
        
    end
    akar = [a c b fa fc fb g gc];
endfunction

function nilaif = f(x)
    nilaif = x^2-4*x-20;
endfunction
