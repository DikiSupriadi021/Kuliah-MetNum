function solusi=sub_balik(A,b)
    [n,m]=size(A);//A hrs matriks segitiga atas dan tidak bole elemen diagonal utaman = 0
    x(n)=b(n)/A(n,n);
    for k=n-1:-1:1
        jum=0;
        for j = k+1:n
            jum=jum+A(k,j)*x(j);
        end
        x(k)=(b(k)-jum)/A(k,k)
    end
    solusi=x;
endfunction
