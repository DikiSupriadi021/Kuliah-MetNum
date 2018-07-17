function akar=nrapson(x0,eps)
    r=1;
    x(1)=x0;g(1)=100;
    while g(r)>eps
        x(r+1)=x(r)-f(x(r))/faksen(x(r))
        g(r+1)=abs(x(r+1)-x(r));
        r=r+1;
    end
    g(1)=0;
    akar=[x g];
endfunction
function nilaif=f(x)
    nilaif=x^2-4*x-20;
endfunction
function nilaif=faksen(x)
    nilaif=2*x-4;
endfunction
