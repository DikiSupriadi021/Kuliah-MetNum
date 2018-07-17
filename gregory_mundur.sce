function polinom=gregoryMundur(x,fx,xTaksir,jmlPol)
    [n,m]=size(x);
    [a,b]=size(fx);
 if ~(n == a) then
        printf("Ukuran x dan f(x) tidak sama!");
    elseif xTaksir < min(x) | xTaksir > max(x) then
        printf("Nilai interval tidak memenuhi syarat !"); 
       
    else   
            m=zeros(n,n);
            m(:,1)=fx;
            for i=1:n
                for j=2:i
                    m(i,j)=(m(i,j-1)-m(i-1,j-1))
                end
            end    
            disp(m);
        k = 1;
        h=x(2) - x(1);
        s= (xTaksir -x(n))/h;
        jumlah = m(n,1);
        temp=1;
        l=0;
        k = 0;
        for i=2:jmlPol
            temp=temp*(s+l);
            hasil=temp*m(n,i);
            for j=1:1
                k = k + 1;
                lol = hasil / factorial(k);
            end
            l=l+1;
            jumlah=jumlah+lol;
        
        end    
            
        end 
        polinom=jumlah; 
        printf("====================================== \n"); 
        printf("P = %d",polinom)  
endfunction
        clc;
        printf("Masukkan [Xo;X1...]]");
            x=input("X     : ");
         printf("Masukkan [fx0;fx1,....]");
            fx=input("F(x)   :");
         printf("Masukkan X Taksir");
          xTaksir=input("x     :");
         printf("Masukkan jumlah polinom");
           jmlPol=input("jumlah polinom  :");  
         printf("====================================== \n");       
gregoryMundur(x,fx,xTaksir,jmlPol);
