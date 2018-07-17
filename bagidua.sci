function y=g(x)
y=x^3 + 2*x^2 + 10*x - 20;
endfunction
function pn=metodesecant(x0, x1, aprox)
j=2;
i=1;
pn(1)=x0;
pn(2)=x1;
er(i)=1;
while abs(er(i))>=aprox
   pn(j+1)=(pn(j-1)*f(pn(j))-pn(j)*f(pn(j-1)))/(f(pn(j))-f(pn(j-1)));
   er(i+1)=abs((pn(j+1)-pn(j))/pn(j+1));
   j=j+1;
   i=i+1;
end

printf(' i \t\t pn(i) \t\t Error aprox (i) \n');
printf('%2d \t %11.7f \t\t \n',0,pn(1));

for k=2:j;
printf('%2d \t %11.7f \t %7.8f \n',k,pn(k),er(k-1));
end
endfunction