function y=f(x)
y=x^3-9*x^2+23*x-16;
endfunction

function fx=metodesecant(a, b, tol)
j=2;
i=1;
fx(1)=a;
fx(2)=b;
galat(i)=1;
while abs(galat(i))>=tol
   fx(j+1)=(fx(j-1)*f(fx(j))-fx(j)*f(fx(j-1)))/(f(fx(j))-f(fx(j-1)));
   galat(i+1)=abs((fx(j+1)-fx(j))/fx(j+1));
   j=j+1;
   i=i+1;
end

printf('|    i   |        fx(i)        |        Galat       | \n');
printf('----------------------------------------------------- \n');
printf('|   %2d   |     %11.7f     | \n',0,fx(1));

for k=2:j;
printf('|   %2d   |     %11.7f     |     %7.8f     |\n',k,fx(k),galat(k-1));
end
endfunction
write(%io(2),'Masukkan nilai a           : ');
x=read(%io(1),1,1);
write(%io(2),'Masukkan nilai b           : ');
y=read(%io(1),1,1);
write(%io(2),'Masukkan nilai toleransi   : ');
toleransi=read(%io(1),1,1);
metodesecant(x,y,toleransi); 
