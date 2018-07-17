function y=f(x)
y=x^3 + 2*x^2 + 10*x - 20;
endfunction

function y=df(x)
y=3*x^2 + 4*x + 10;
endfunction

function xr=newtonraphson(f, x0, aprox);
i=1;
er(1)=1;
xr(1)=x0;
while abs(er(i))>=aprox;
    xr(i+1)=xr(i)-f(xr(i))/df(xr(i));
    er(i+1)=abs((xr(i+1)-xr(i))/xr(i+1));
    i=i+1;
end
printf(' i  \t      xn(i)      Error aprox (i) \n');
for j=1:i;
    printf('%2d \t %11.7f \t %7.6f \n',j-1,xr(j),er(j));
end
endfunction
