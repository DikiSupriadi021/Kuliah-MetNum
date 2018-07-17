function solusi = subtitusiBalik(a,b)
    [n,m] = size(a); //n: baris   m:kolom
    x(n) = b(n)/a(n,n);
    for k=n-1:-1:1
        jumlah = 0;
        for j = k+1:n
            jumlah = jumlah + a(k,j) * x(j);
        end
    x(k)=(b(k)-jumlah) / a(k,k);
end
    solusi = x;
endfunction

/*tampilan di output
>> a=[5 4 1; 0 3 1; 0 0 2]
>> b=[4; 12; 12]
>> subtitusiBalik(a,b)
*/

fuction solusix=naifgauss(a,b)
    M=[a,b];
    [n,m]=size(m);
    for j = 1 : n-1
        for i = j+1 : n
            M(i,:)= -M(i,j)/M(j,j) * M(j,:)+M(i,:);
        end
    end
    a = M(1:n, 1:n);
    b = M(:, n+1);
    solusix = subtitusiBalik(a,b)
endfunction
/*tampilan di output
>> a=[1 1 0 3; 2 1 -1 1; 3 -1 -1 2; -1 2 3 -1]
>> b=[4; -7; -15- 8]
>> naifgauss(a,b)
*/
