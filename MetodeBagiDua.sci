function MetodeBagiDua(a,b,toleransi)
    //inisialisasi
    c=0; fa=0; fb=0; fc=0; galat=1;

    //header
    printf(' ----------------------------------------------------------------------------\n');
    printf(' |   a    |   c    |   b    |  f(a)   |  f(c)   |  f(b)   | |f(c)| |   ε    |\n');
    printf(' ----------------------------------------------------------------------------\n');

    //penghitungan
    while (galat > toleransi )
        temp  = c;
        c     = (a+b)/2;
        fa    = a.^3-9*a.^2+23*a-16;
        fb    = b.^3-9*b.^2+23*b-16;
        fc    = c.^3-9*c.^2+23*c-16;
        galat = (c - temp)/c;

        if(galat >= toleransi)
            //tampilan
            if (fa < 0)
              if (fc < 0)
                printf(' | %.4f | %.4f | %.4f | %.4f | %.4f | %.4f  | %.4f | %.4f |\n',a,c,b,fa,fc,fb,abs(fc),galat)
                else
                  printf(' | %.4f | %.4f | %.4f | %.4f | %.4f  | %.4f  | %.4f | %.4f |\n',a,c,b,fa,fc,fb,abs(fc),galat)
              end //endif    
                else // (fa > 0)
                  if (fc < 0)
                    printf(' | %.4f | %.4f | %.4f | %.4f  | %.4f | %.4f | %.4f | %.4f |\n',a,c,b,fa,fc,fb,abs(fc),galat)
                    else
                      printf(' | %.4f | %.4f | %.4f | %.4f  | %.4f  | %.4f | %.4f | %.4f |\n',a,c,b,fa,fc,fb,abs(fc),galat)
                  end; //endif     
            end; //endif
        end; //endif

        //pertukaran c dengan a atau b
        if ((fa*fc) < 0)
          b = c
          else
            a = c
        end; //endif
    end; //endwhile

    printf(' ----------------------------------------------------------------------------\n');
    
endfunction
write(%io(2),'Masukkan nilai a           : ');
x=read(%io(1),1,1);
write(%io(2),'Masukkan nilai b           : ');
y=read(%io(1),1,1);
write(%io(2),'Masukkan nilai toleransi   : ');
toleransi=read(%io(1),1,1);
MetodeBagiDua(x,y,toleransi);
