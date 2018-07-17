clear;clc;
function met_regula_falsi(a,b,toleransi)
    printf('                                             METODE REGULAFALSI\n');  
    printf('--------------------------------------------------------------------------------------------------------|\n');  
    printf('|No  |    a   |    b     |    c   |    f(a)   |      f(b)    |      f(c)   |     galat relatif hampiran |\n');
    fa=cos(a)-exp(-2*a);
    fb=cos(b)-exp(-2*b);    
    
    if((fa*fb >0)) then
    printf('interval yang dipilih kemungkinan tidak ditemukan akar \n');
    else
            i=0;
            c_lama=0;
            c=b-((fb*(b-a))/(fb-fa));
            
            while(abs((c-c_lama)/c)>toleransi) 

            fc=cos(c)-exp(-2*c);            
            
            printf('--------------------------------------------------------------------------------------------------|');  
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
                printf('  | -                                  |\n');    
            end
            
            if (fa*fc<0) then
                b=c
            else
                a=c
           end
           
            c_lama=c;
            fa=cos(a)-exp(-2*a);
            fb=cos(b)-exp(-2*b);
            c=b-((fb*(b-a))/(fb-fa));
            
            i=i+1;
            end
    end
printf('--------------------------------------------------------------------|\n');   
endfunction

//input nilai
write(%io(2),'Masukkan nilai dari batas bawah : ','(a)');
x=read(%io(1),1,1);
write(%io(2),'Masukkan nilai dari batas atas : ','(a)');
y=read(%io(1),1,1);
write(%io(2),'Masukkan nilai dari toleransi : ','(a)');
toleransi=read(%io(1),1,1);
//hitung
met_regula_falsi(x,y,toleransi);
