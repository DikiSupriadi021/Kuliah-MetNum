function nilai=hampiran(x,xo)
    nilaif = [sin(xo);cos(xo);-sin(xo);-cos(xo);sin(xo)];
    f=0;
    for i=1 : 5
        f =f+nilaif(i)*(x-xo)^(i-1)/factorial(i-1);
        hasil(i)=f;
        eror(i)=abs(f-sin(x))
    end
    nilai = [hasil eror];
endfunction
