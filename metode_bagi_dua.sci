//awal program
clear;clc;
function met_bagi_dua(a,b,toleransi)
    printf('                                             METODE BAGI DUA\n');  
    printf('--------------------------------------------------------------------|\n');  
    printf('|No.|    a       |       b    |       c   |      f(a)   |      f(b)    |      f(c)   |   galat relatif hampiran   |\n');
    
    fa=a^3-9*a^2+23*a-16;
    fb=b^3-9*b^2+23*b-16;    
    
    if((fa*fb >0)) then
    printf('interval yang dipilih kemungkinan tidak ditemukan akar \n');
    else

        i=0;
        c_lama=0;
        c=(a+b)/2;

        while(abs((c-c_lama)/c)>toleransi) 
            
            fc=cos(c)-exp(-2*c);
            
            printf('--------------------------------------------------------------------|');  
            printf('\n| %2d', i+1);
            printf(' | %.4f',a);
            printf(' | %.4f',b);
            printf(' | %.4f',c);
            printf(' |  %.4f',fa);
            printf(' |  %.4f',fb);
            printf(' |  %.4f',fc);
            if(i ~= 0) then
                printf(' | %.4f                          |\n',abs((c-c_lama)/c));
            else
                printf(' | -                                     |\n');    
            end
            if (fa*fc<0) then
                b=c
            else
                a=c
           end

            c_lama=c;
            c=(a+b)/2;   
            i=i+1;

        end
end
printf('--------------------------------------------------------------------|\n Bayu F. Paoh. 10113076. Metnum - 1\n');   
endfunction

//input nilai
write(%io(2),'Masukkan nilai dari batas bawah : ','(a)');
x=read(%io(1),1,1);
write(%io(2),'Masukkan nilai dari batas atas : ','(a)');
y=read(%io(1),1,1);
write(%io(2),'Masukkan nilai dari toleransi : ','(a)');
toleransi=read(%io(1),1,1);
//hitung
met_bagi_dua(x,y,toleransi);
