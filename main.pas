program tinh_toan;
uses crt;
procedure menu;
   var k,w:byte;
       x:word;
   procedure TT;
   var a,b:extended;
       w:byte;
       d:char;
   begin
      clrscr;
      gotoxy(20,1); textcolor(14); writeln('TINH TOAN (+ , - , * , / , ^ , v , )'); textcolor(15);
      writeln;
      writeln('Cach su dung: - Nhap so thu nhat (enter)');
      writeln('              - Nhap dau phep tinh (enter)');
      writeln('              - Nhap so thu hai (enter)');
      writeln;
      readln(a); gotoxy(10,7); readln(d); gotoxy(12,7); readln(b);
      case d of
         '+': begin gotoxy(22,7); write(' =',a+b:1:5); end;
         '-': begin gotoxy(22,7); write(' =',a-b:1:5); end;
         '*': begin gotoxy(22,7); write(' =',a*b:1:5); end;
         '/': begin
                 if b<>0 then begin
                    gotoxy(22,7); write(' =',a/b:1:5);
                             end
                 else writeln('Math error');
              end;
         '^': begin gotoxy(22,7); write(' =',exp(b*ln(a)):1:5); end;
         'v': begin gotoxy(22,7); write(' =',Exp(ln(b)/a):1:5); end;
         else TT;
      end;
      writeln;
      writeln;
      writeln('0: Tro ve');
      writeln('1: Tiep tuc');
      write('Xin chon yeu cau: '); readln(w);
      case w of
         0: menu;
         else TT;
      end;
      readln;
end;
procedure Qr;
   var a,b:longint;
       w: byte;
   begin
    clrscr;
    gotoxy(30,1); textcolor(14); writeln('Chia lay du');
    textcolor(15);
    write('Nhap so bi chia: '); readln(a);
    write('Nhap so chia: '); readln(b);
    writeln('Q...r(',a,',',b,') = ',a div b,' du ',a mod b);
    writeln;
    writeln('0: Tro ve');
    writeln('1: Tiep tuc');
    write('Xin chon yeu cau: '); readln(w);
    case w of
       0: menu;
       else Qr;
    end;
    readln;
   end;
function GT(x:longint):longint;
   var i:longint;
   begin
    GT:=1;
    for i:=1 to x do GT:=GT*i;
   end;
procedure GT;
   var x:longint;
       w:byte;
   begin
      clrscr;
      gotoxy(30,1); textcolor(14); writeln('Tinh giai thua');
      textcolor(15); write('Nhap so can tinh giai thua: '); readln(x);
      if x>=0 then writeln(x,'! = ',GT(x))
      else writeln('Math error');
      writeln;
      writeln('0: Tro ve');
      writeln('1: Tiep tuc');
      write('Xin chon yeu cau: '); readln(w);
      case w of
         0: menu;
         else GT;
      end;
      readln;
   end;
procedure UB;
   var a,b,m,n:longint;
       w:byte;
   begin
      clrscr;
      gotoxy(30,1); textcolor(14); writeln('Tim UCLN_BCNN cua 2 so');
      textcolor(15);
      write('Nhap so thu nhat: '); readln(m);
      write('Nhap so thu hai: '); readln(n);
      a:=m; b:=n;
      if (a<>0) and (b<>0) then begin
         while a<>b do begin
            if a>b then a:=a-b else b:=b-a;
                       end;
            writeln('UCLN(',m,',',n,')=',a,'. BCNN(',m,',',n,')=',m*n/a:1:0);
                               end
      else begin
         if a=b then writeln('UCLN(0,0)=0. BCNN(0,0)=0')
         else begin
            if a=0 then writeln('UCLN(',m,',',n,')=',n,'. BCNN(',m,',',n,')=',0);
            if b=0 then writeln('UCLN(',m,',',n,')=',m,'. BCNN(',m,',',n,')=',0);
               end;
           end;
      writeln;
      writeln('0: Tro ve');
      writeln('1: Tiep tuc');
      write('Xin chon yeu cau: '); readln(w);
      case w of
         0: menu;
         else UB;
      end;
      readln;
   end;
function arccos(x:real):extended;
   begin
      if x=-1 then arccos:=3.141592653589793
      else if x=0 then arccos:=3.141592653589793/2
         else if x=1 then arccos:=0
            else arccos:=arctan(sqrt(1-sqr(x))/x);
      end;
function CBB(q:extended):extended;
   begin
      if (q>0) then CBB:=exp(ln(q)/3)
      else if (q=0) then CBB:=0
           else CBB:=-(exp(ln(abs(q))/3));
   end;
procedure PT;
   var q: byte;
   procedure PT1;
      var a,b: extended;
          w: byte;
      begin
        clrscr;
        writeln('Phuong trinh co dang: ax + b = 0');
        write('a= '); readln(a);
        write('b= '); readln(b);
        if a<>0 then writeln('x = ',-b/a:1:5)
        else if b<>0 then writeln('Vo nghiem')
             else writeln('Vo so nghiem');
        writeln;
        writeln('0: Tro ve');
        writeln('1: Tiep tuc');
        write('Xin chon yeu cau: '); readln(w);
        case w of
           0: PT;
           else PT1;
        end;
        readln;
        PT1;
      end;
   procedure PT2;
      var a,b,c,delta:extended;
          w:byte;
      begin
         clrscr;
         writeln('Phuong trinh co dang: ax2 + bx + c = 0');
         write('a= '); readln(a);
         write('b= '); readln(b);
         write('c= '); readln(c);
        delta:=b*b-4*a*c;
         if a<>0 then begin
            if delta>0 then writeln('x1= ',(-b+sqrt(delta))/(2*a):1:5,' va x2= ',(-b-sqrt(delta))/(2*a):1:5);
            if delta=0 then writeln('x= ',-b/(2*a):1:5);
            if delta<0 then writeln('Vo nghiem');
                   end
         else if b<>0 then writeln('x = ',-b/a:1:5)
              else if c<>0 then writeln('Vo nghiem')
                   else writeln('Vo so nghiem');
        writeln;
        writeln('0: Tro ve');
        writeln('1: Tiep tuc');
        write('Xin chon yeu cau: '); readln(w);
        case w of
           0: PT;
           else PT2;
        end;
         readln;
      end;
   procedure PT3;
      var a,b,c,d,delta,n,k,x1,x2,x3:extended;
          w:byte;
      begin
       clrscr;
       writeln('Phuong trinh co dang: ax3 + bx2 + cx + d = 0');
       write('a= '); readln(a);
       write('b= '); readln(b);
       write('c= '); readln(c);
       write('d= '); readln(d);
       if a<>0 then begin
          delta:=b*b-3*a*c;
          if delta<>0 then begin
             k:=(9*a*b*c-2*b*b*b-27*a*a*d)/(2*sqrt(abs(delta)*abs(delta)*abs(delta)));
             if (delta>0) then begin
                if (abs(k)<=1) then begin
                   x1:=(2*sqrt(delta)*cos(arccos(k)/3)-b)/(3*a);
                   x2:=(2*sqrt(delta)*cos(arccos(k)/3-2*3.141592653589793/3)-b)/(3*a);
                   x3:=(2*sqrt(delta)*cos(arccos(k)/3+2*3.141592653589793/3)-b)/(3*a);
                   writeln('Phuong trinh co 3 nghiem: ');
                   writeln(' x1= ',x1:1:5);
                   writeln(' x2= ',x2:1:5);
                   writeln(' x3= ',x3:1:5);
                                    end
                else begin
                   x1:=(sqrt(delta)*abs(k)/(3*a*k))*(CBB(abs(k)+sqrt(k*k-1))+CBB(abs(k)-sqrt(k*k-1)))-(b/(3*a));
                   writeln('x= ',x1:1:5);
                     end;
                       end
             else begin
                x1:=(sqrt(abs(delta))/(3*a))*(CBB(k+sqrt(sqr(k)+1))+CBB(k-sqrt(sqr(k)+1)))-(b/(3*a));
                writeln('x= ',x1:1:5);
                  end;
                                end
      else begin
         x1:=(-b+CBB(b*b*b-27*a*a*d))/(3*a);
       writeln('x= ',x1:1:5);
           end;
                      end
else if b<>0 then begin
   delta:=c*c-4*b*d;
   if delta>0 then writeln('x1= ',(-c+sqrt(delta))/(2*b):1:5,' va x2= ',(-c-sqrt(delta))/(2*b):1:5)
   else if delta=0 then writeln('x= ',-c/(2*b):1:5)
        else writeln('Vo nghiem');
                  end
     else if c<>0 then writeln('x= ',-d/c:1:5)
          else if d<>0 then writeln('Vo nghiem')
               else writeln('Vo so nghiem');
 writeln;
 writeln('0: Tro ve');
 writeln('1: Tiep tuc');
 write('Xin chon yeu cau: '); readln(w);
 case w of
    0: PT;
    else PT3;
 end;
   readln;
end;
   begin
      clrscr;
      gotoxy(15,1); textcolor(14); writeln('Giai phuong trinh');
      textcolor(15);
      writeln('0: Tro ve');
      writeln('1: Phuong trinh bac 1 mot an');
      writeln('2: Phuong trinh bac 2 mot an');
      writeln('3: Phuong trinh bac 3 mot an');
      write('Xin chon yeu cau: '); readln(q);
      case q of
         0: menu;
         1: PT1;
         2: PT2;
         3: PT3;
         else PT;
      end;
   end;
procedure HPT;
   var q:byte;
      procedure HPT2;
      var a1,a2,b1,b2,c1,c2,D,Dx,Dy:extended;
          w:byte;
      begin
         clrscr;
         writeln('He phuong trinh co dang: | a1*x + b1*y = c1|');
         writeln('                         | a2*x + b2*y = c2|');
         write('a1='); readln(a1); gotoxy(15,3);write('b1='); readln(b1); gotoxy(30,3); write('c1='); readln(c1);
         write('a2='); readln(a2); gotoxy(15,4);write('b2='); readln(b2); gotoxy(30,4); write('c2='); readln(c2);
         D:=a1*b2-a2*b1;
         Dx:=c1*b2-c2*b1;
         Dy:=a1*c2-a2*c1;
         if D<>0 then writeln('He phuong trinh co 1 ngiem (',Dx/D:2:5,';',Dy/D:2:5,')')
         else if (Abs(Dx)+Abs(Dy)=0) then writeln('Vo so nghiem.')
              else writeln('Vo nghiem.');
         writeln;
         writeln('0: Tro ve');
         writeln('1: Tiep tuc');
         write('Xin chon yeu cau: '); readln(w);
         case w of
           0: HPT;
           else HPT2;
         end;
         readln;
      end;
   procedure HPT3;
      var a1,a2,a3,b1,b2,b3,c1,c2,c3,d1,d2,d3,D,Dx,Dy,Dz:extended;
          w:byte;
      begin
         clrscr;
         writeln('                         |a1*x + b1*y + c1*z = d1|');
         writeln('He phuong trinh co dang: |a2*x + b2*y + c2*z = d2|');
         writeln('                         |a3*x + b3*y + c3*z = d3|');
         write('a1='); read(a1); gotoxy(15,4); write('b1='); read(b1); gotoxy(30,4); write('c1='); read(c1); gotoxy(45,4); write('d1='); readln(d1);
         write('a2='); read(a2); gotoxy(15,5); write('b2='); read(b2); gotoxy(30,5); write('c2='); read(c2); gotoxy(45,5); write('d2='); readln(d2);
         write('a3='); read(a3); gotoxy(15,6); write('b3='); read(b3); gotoxy(30,6); write('c3='); read(c3); gotoxy(45,6); write('d3='); readln(d3);
         D := a1*b2*c3 + a2*b3*c1 + a3*b1*c2 - a3*b2*c1 - a1*b3*c2 - a2*b1*c3;
         Dx:= d1*b2*c3 + d2*b3*c1 + d3*b1*c2 - d3*b2*c1 - d1*b3*c2 - d2*b1*c3;
         Dy:= a1*d2*c3 + a2*d3*c1 + a3*d1*c2 - a3*d2*c1 - a1*d3*c2 - a2*d1*c3;
         Dz:= a1*b2*d3 + a2*b3*d1 + a3*b1*d2 - a3*b2*d1 - a1*b3*d2 - a2*b1*d3;
         if D<>0 then writeln('He phuong trinh co 1 ngiem (',Dx/D:2:10,';',Dy/D:2:10,';',Dz/D:2:10,')')
         else if (Abs(Dx)+Abs(Dy)+Abs(Dz)=0) then writeln('Vo so nghiem.')
             else writeln('Vo nghiem.');
         writeln;
         writeln('0: Tro ve');
         writeln('1: Tiep tuc');
         write('Xin chon yeu cau: '); readln(w);
         case w of
            0: HPT;
            else HPT3;
         end;
         readln;
      end;
   begin
     clrscr;
     gotoxy(30,1); textcolor(14); writeln('Giai he phuong trinh');
     textcolor(15);
     writeln('0: Tro ve');
     writeln('1: He phuong trinh bac nhat 2 an');
     writeln('2: He phuong trinh bac nhat 3 an');
     write('Xin chon yeu cau: '); readln(q);
     case q of
        0: menu;
        1: HPT2;
        2: HPT3;
        else HPT;
     end;
   end;
procedure MM2;
   var a,b,c,delta:extended;
       w:byte;
   begin
      clrscr; gotoxy(20,1); textcolor(14);
      writeln('Tim Min-Max cua phuong trinh bac 2 mot an');
      textcolor(15); writeln('Phuong trinh co dang: ax2 + bx +c = 0');
      write('a= '); readln(a); gotoxy(15,3);
      write('b= '); readln(b); gotoxy(30,3);
      write('c= '); readln(c);
      delta:=b*b-4*a*c;
      if a=0 then writeln('Math error')
      else if a>0 then writeln('Min= ',-delta/(4*a):1:5,' <=> x= ',-b/(2*a):1:5)
           else writeln('Max= ',-delta/(4*a):1:5,' <=> x= ',-b/(2*a):1:5);
      writeln;
      writeln('0: Tro ve');
      writeln('1: Tiep tuc');
      write('Xin chon yeu cau: '); readln(w);
      case w of
         0: menu;
         else MM2;
      end;
      readln;
   end;
function can(a:word):word;
   var b:word;
   begin
      b:=a mod 10;
      case b of
         0: write('Canh');
         1: write('Tan');
         2: write('Nham');
         3: write('Quy');
         4: write('Giap');
         5: write('At');
         6: write('Binh');
         7: write('Dinh');
         8: write('Mau');
         9: write('Ky');
      end;
   end;
function chi(c:word):word;
   var d:word;
   begin
      d:=c mod 12;
      case d of
         0: write('Than');
         1: write('Dau');
         2: write('Tuat');
         3: write('Hoi');
         4: write('Ti');
         5: write('Suu');
         6: write('Dan');
         7: write('Mao');
         8: write('Thin');
         9: write('Ty');
         10: write('Ngo');
         11: write('Mui');
      end;
   end;
function TK(e:word):word;
   begin
      TK:=(e-1) div 100 + 1;
   end;
procedure CCTK;
   var x:longint;
       w:byte;
   begin
      clrscr;
      gotoxy(10,1); textcolor(14);
      writeln('Chuong trinh tinh can chi, the ki va xet nam nhuan, thuong');
      writeln; textcolor(15);
      write('Nhap nam: '); readln(x);
      writeln('Mot so thong tin ve nam ',x,':');
      if (x mod 4 = 0) then writeln(' -Nam nhuan')
      else writeln(' -Nam thuong');
      write(' -Nam am lich: '); can(x); write(' '); chi(x);
      writeln; textcolor(15);
      writeln(' -The ki: ',TK(x));
      writeln;
      writeln('0: Tro ve');
      writeln('1: Tiep tuc');
      write('Xin chon yeu cau: '); readln(w);
      case w of
         0: menu;
         else CCTK;
      end;
      readln;
   end;
procedure F;
   var i,n,a,b,c:longint;
       w:byte;
   begin
      clrscr;
      gotoxy(30,1); textcolor(14); writeln('Fibonacci'); textcolor(15);
      writeln; write('Nhap so thu tu cua so hang can tim: '); readln(n);
      a:=1; b:=1;
      gotoxy(4,4); write('STT'); gotoxy(13,4); writeln('So hang');
      gotoxy(5,5); write('1'); gotoxy(15,5); writeln('1');
      gotoxy(5,6); write('2'); gotoxy(15,6); writeln('1');
      for i:=3 to n do begin
         c:=a+b; a:=b; b:=c;
         gotoxy(5,i+4); write(i);
         gotoxy(15,i+4); write(c);
                       end;
      writeln;
      writeln;
      writeln('0: Tro ve');
      writeln('1: Tiep tuc');
      write('Xin chon yeu cau: '); readln(w);
      case w of
         0: menu;
         else F;
      end;
      readln;
   end;
procedure fact;
   var i,w:byte;
       n:longint;
   begin
      clrscr;
      gotoxy(20,1); writeln('Phan tich thua so nguyen to');
      writeln;
      write('Nhap so can phan tich: '); readln(n);
      if n>0 then begin
         i:=2; write('KQ: ');
         repeat
            while (n mod i<>0) do
               i:=i+1;
               write(i);
               n:= n div i;
               if n>1 then write('*');
         until n=1;
                  end
      else fact;
      writeln;
      writeln;
      writeln('0: Tro ve');
      writeln('1: Tiep tuc');
      write('Xin chon yeu cau: '); readln(w);
      case w of
         0: menu;
         else fact;
      end;
      readln;
   end;
procedure BPT;
   var q:byte;
      procedure BPT1;
      var q:byte;
         procedure BPT1L;
         var a,b:extended;
             w:byte;
         begin
          clrscr;
          gotoxy(20,1); writeln('ax +b > 0');
          write('a= '); readln(a);
          write('b= '); readln(b);
          if a<>0 then begin
             if a>0 then writeln('x > ',-b/a:1:5)
             else writeln('x < ',-b/a:1:5);
                        end
         else if b>0 then writeln('Vo so nghiem')
              else writeln('Vo nghiem');
        writeln;
        writeln('0: Tro ve');
        writeln('1: Tiep tuc');
        write('Xin chon yeu cau: '); readln(w);
        case w of
           0: BPT1;
           else BPT1L;
        end;
        readln;
        end;
      procedure BPT1LB;
         var a,b:extended;
             w:byte;
         begin
          clrscr;
          gotoxy(20,1); writeln('ax +b >= 0');
          write('a= '); readln(a);
          write('b= '); readln(b);
          if a<>0 then begin
             if a>0 then writeln('x >= ',-b/a:1:5)
             else writeln('x <= ',-b/a:1:5);
                        end
           else if b>=0 then writeln('Vo so nghiem')
              else writeln('Vo nghiem');
          writeln;
          writeln('0: Tro ve');
          writeln('1: Tiep tuc');
          write('Xin chon yeu cau: '); readln(w);
          case w of
             0: BPT1;
             else BPT1LB;
          end;
         readln;
        end;
      procedure BPT1B;
         var a,b:extended;
             w:byte;
         begin
          clrscr;
          gotoxy(20,1); writeln('ax +b < 0');
          write('a= '); readln(a);
          write('b= '); readln(b);
          if a<>0 then begin
             if a>0 then writeln('x < ',-b/a:1:5)
             else writeln('x > ',-b/a:1:5);
                      end
          else if b>=0 then writeln('Vo nghiem')
               else writeln('Vo so nghiem');
          writeln;
          writeln('0: Tro ve');
          writeln('1: Tiep tuc');
          write('Xin chon yeu cau: '); readln(w);
          case w of
             0: BPT1;
             else BPT1B;
          end;
          readln;
         end;
       procedure BPT1BB;
         var a,b:extended;
             w:byte;
         begin
          clrscr;
          gotoxy(20,1); writeln('ax +b <= 0');
          write('a= '); readln(a);
          write('b= '); readln(b);
          if a<>0 then begin
             if a>0 then writeln('x <= ',-b/a:1:5)
             else writeln('x >= ',-b/a:1:5)
                      end
          else if b>0 then writeln('Vo nghiem')
                  else writeln('Vo so nghiem');
          writeln;
          writeln('0: Tro ve');
          writeln('1: Tiep tuc');
          write('Xin chon yeu cau: '); readln(w);
          case w of
             0: BPT1;
             else BPT1LB;
          end;
          readln;
        end;
   begin
    clrscr;
    gotoxy(15,1); textcolor(14); writeln('Giai bat phuong trinh bac 1 mot an');
    textcolor(15);
    writeln('0: Tro ve');
    writeln('1: ax + b > 0');
    writeln('2: ax + b >= 0');
    writeln('3: ax + b < 0');
    writeln('4: ax + b <= 0');
    write('Xin chon yeu cau: '); readln(q);
    case q of
       0:BPT;
       1:BPT1L;
       2:BPT1LB;
       3:BPT1B;
       4:BPT1BB
       else BPT1;
    end;
   end;
procedure BPT2;
   var q:byte;
   procedure BPT2L;
   var a,b,c,delta,x,x1,x2:extended;
       w:byte;
   begin
    clrscr;
    gotoxy(15,1); writeln('ax2 + bx +c > 0');
    write('a= '); readln(a);
    write('b= '); readln(b);
    write('c= '); readln(c);
    if a<>0 then begin
       delta:=b*b-4*a*c;
       if a>0 then begin
          if delta>0 then begin
             x1:=(-b+sqrt(delta))/(2*a);
             x2:=(-b-sqrt(delta))/(2*a);
            writeln('x < ',x2:1:5,' hoac ',x1:1:5,' < x');
                         end
          else if delta=0 then writeln('x <>',-b/(2*a):1:5)
             else writeln('Vo so nghiem');
                   end
       else begin
          if delta>0 then begin
             x1:=(-b+sqrt(delta))/(2*a);
             x2:=(-b-sqrt(delta))/(2*a);
             writeln(x1:1:5,' < x < ',x2:1:5);
                          end
          else if delta=0 then writeln('Vo nghiem')
             else writeln('Vo nghiem');
                   end
                 end
    else if b<>0 then begin
       if b>0 then writeln('x > ',-c/b:1:5)
       else writeln('x < ',-c/b:1:5)
                      end
         else if c>0 then writeln('Vo so nghiem')
              else writeln('Vo nghiem');
    writeln;
    writeln('0: Tro ve');
    writeln('1: Tiep tuc');
    write('Xin chon yeu cau: '); readln(w);
    case w of
           0: BPT2;
           else BPT2L;
    end;
    readln;
   end;
procedure BPT2LB;
   var a,b,c,delta,x,x1,x2:extended;
       w:byte;
   begin
    clrscr;
    gotoxy(15,1); writeln('ax2 + bx +c >= 0');
    write('a= '); readln(a);
    write('b= '); readln(b);
    write('c= '); readln(c);
    if a<>0 then begin
       delta:=b*b-4*a*c;
       if a>0 then begin
          if delta>0 then begin
             x1:=(-b+sqrt(delta))/(2*a);
             x2:=(-b-sqrt(delta))/(2*a);
            writeln('x <= ',x2:1:5,' hoac ',x1:1:5,' <= x');
                         end
          else writeln('Vo so nghiem')
                 end
       else begin
          if delta>0 then begin
             x1:=(-b+sqrt(delta))/(2*a);
             x2:=(-b-sqrt(delta))/(2*a);
             writeln(x1:1:5,' <= x <= ',x2:1:5);
                          end
          else if delta=0 then writeln('x = ',-b/(2*a):1:5)
             else writeln('Vo nghiem');
                   end
                 end
    else if b<>0 then begin
       if b>0 then writeln('x >= ',-c/b:1:5)
       else writeln('x <= ',-c/b:1:5)
                      end
         else if c>=0 then writeln('Vo so nghiem')
              else writeln('Vo nghiem');
    writeln;
    writeln('0: Tro ve');
    writeln('1: Tiep tuc');
    write('Xin chon yeu cau: '); readln(w);
    case w of
           0: BPT2;
           else BPT2LB;
    end;
    readln;
   end;
procedure BPT2B;
   var a,b,c,delta,x,x1,x2:extended;
       w:byte;
   begin
    clrscr;
    gotoxy(15,1); writeln('ax2 + bx +c < 0');
    write('a= '); readln(a);
    write('b= '); readln(b);
    write('c= '); readln(c);
    if a<>0 then begin
       delta:=b*b-4*a*c;
       if a>0 then begin
          if delta>0 then begin
             x1:=(-b+sqrt(delta))/(2*a);
             x2:=(-b-sqrt(delta))/(2*a);
            writeln(x2:1:5,' < x < ',x1:1:5);
                         end
          else writeln('Vo nghiem');
                    end
       else begin
          if delta>0 then begin
             x1:=(-b+sqrt(delta))/(2*a);
             x2:=(-b-sqrt(delta))/(2*a);
             writeln('x < ',x1:1:5,' hoac ',x2:1:5,' < x');
                          end
          else if delta=0 then writeln('x <> ',-b/(2*a):1:5)
             else writeln('Vo so nghiem');
                   end
                 end
    else if b<>0 then begin
       if b>0 then writeln('x < ',-c/b:1:5)
       else writeln('x > ',-c/b:1:5)
                      end
         else if c>=0 then writeln('Vo nghiem')
              else writeln('Vo so nghiem');
    writeln;
    writeln('0: Tro ve');
    writeln('1: Tiep tuc');
    write('Xin chon yeu cau: '); readln(w);
    case w of
           0: BPT2;
           else BPT2B;
    end;
    readln;
   end;
procedure BPT2BB;
   var a,b,c,delta,x,x1,x2:extended;
       w:byte;
   begin
    clrscr;
    gotoxy(15,1); writeln('ax2 + bx +c <= 0');
    write('a= '); readln(a);
    write('b= '); readln(b);
    write('c= '); readln(c);
    if a<>0 then begin
       delta:=b*b-4*a*c;
       if a>0 then begin
          if delta>0 then begin
             x1:=(-b+sqrt(delta))/(2*a);
             x2:=(-b-sqrt(delta))/(2*a);
            writeln(x2:1:5,' <= x <= ',x1:1:5);
                         end
          else if delta=0 then writeln('x = ',-b/(2*a):1:5)
               else writeln('Vo nghiem');
                    end
       else begin
          if delta>0 then begin
             x1:=(-b+sqrt(delta))/(2*a);
             x2:=(-b-sqrt(delta))/(2*a);
             writeln('x <= ',x1:1:5,' hoac ',x2:1:5,' <= x');
                          end
          else writeln('Vo so nghiem');
                   end
                 end
    else if b<>0 then begin
       if b>0 then writeln('x <= ',-c/b:1:5)
       else writeln('x >= ',-c/b:1:5)
                      end
         else if c>0 then writeln('Vo nghiem')
              else writeln('Vo so nghiem');
    writeln;
    writeln('0: Tro ve');
    writeln('1: Tiep tuc');
    write('Xin chon yeu cau: '); readln(w);
    case w of
           0: BPT2;
           else BPT2BB;
    end;
    readln;
   end;
   begin
    clrscr;
    gotoxy(15,1); textcolor(14); writeln('Giai bat phuong trinh bac 2 mot an');
    textcolor(15);
    writeln('0: Tro ve');
    writeln('1: ax2 + bx + c > 0');
    writeln('2: ax2 + bx + c >= 0');
    writeln('3: ax2 + bx + c < 0');
    writeln('4: ax2 + bx + c <= 0');
    write('Xin chon yeu cau: '); readln(q);
    case q of
       0:BPT;
       1:BPT2L;
       2:BPT2LB;
       3:BPT2B;
       4:BPT2BB
       else BPT2;
    end;
   end;
   begin
    clrscr;
    gotoxy(15,1); textcolor(14); writeln('Giai bat phuong trinh');
    textcolor(15);
    writeln('0: Tro ve');
    writeln('1: Bat phuong trinh bac 1 mot an');
    writeln('2: Bat phuong trinh bac 2 mot an');
    write('Xin chon yeu cau: '); readln(q);
    case q of
       0:menu;
       1:BPT1;
       2:BPT2;
       else BPT;
    end;
   end;
procedure C;
   var x,y,w:word;
   begin
    clrscr;
    gotoxy(20,1); textcolor(14);
    writeln('Tinh to hop (nCm)');
    textcolor(15);
    write('n= '); readln(x);
    write('m= '); readln(y);
    if x>y then writeln(x,'C',y,' = ',GT(x)/(GT(y)*GT(x-y)):1:0)
    else C;
    writeln;
    writeln('0: Tro ve');
    writeln('1: Tiep tuc');
    write('Xin chon yeu cau: '); readln(w);
    case w of
           0: menu;
           else C;
    end;
    readln;
   end;
procedure A;
   var x,y,w:word;
   begin
    clrscr;
    gotoxy(20,1); textcolor(14); writeln('Tinh chinh hop (nAm)');
    textcolor(15);
    write('n= '); readln(x);
    write('m= '); readln(y);
    if x>y then writeln(x,'A',y,' = ',GT(x)/GT(x-y):1:0)
    else A;
    writeln;
    writeln('0: Tro ve');
    writeln('1: Tiep tuc');
    write('Xin chon yeu cau: '); readln(w);
    case w of
           0: menu;
           else A;
    end;
    readln;
   end;
   procedure ran;
      var q:longint;
      begin
            clrscr;
            write('Nhap pham vi cua so ngau nhien: ');readln(q);
            writeln('So ngau nhien: ',random(q));
            writeln;
            writeln('0: Tro ve');
            writeln('1: Tiep tuc');
            write('Xin chon yeu cau: '); readln(w);
            case w of
               0:menu;
               else ran;
            end;
            end;
procedure B;
   var i,w:byte;
   procedure nam;
      var h,m,BMI:real;
      begin
         clrscr;
         write('Nhap chieu cao (m): '); readln(h);
         write('Nhap can nang (kg): '); readln(m);
         BMI:=m/(h*h);
         if BMI<20 then writeln('Thieu can')
         else if BMI<25 then writeln('Binh thuong')
            else if BMI<30 then writeln('Thua can')
               else writeln('Beo phi');
         writeln;
         writeln('0: Tro ve');
         writeln('1: Tiep tuc');
         write('Xin chon yeu cau: '); readln(w);
         case w of
            0: B;
            else nam;
         end;
         readln;
      end;
   procedure nu;
      var h,m,BMI:real;
      begin
         clrscr;
         write('Nhap chieu cao (m): '); readln(h);
         write('Nhap can nang (kg): '); readln(m);
         BMI:=m/(h*h);
         if BMI<18 then writeln('Thieu can')
         else if BMI<23 then writeln('Binh thuong')
            else if BMI<30 then writeln('Thua can')
               else writeln('Beo phi');
         writeln;
         writeln('0: Tro ve');
         writeln('1: Tiep tuc');
         write('Xin chon yeu cau: '); readln(w);
         case w of
            0:B;
            else nu;
         end;
         readln;
      end;
   begin
      clrscr;
      gotoxy(20,1); writeln('Do muc do gay-beo dua vao BMI');
      writeln('1: nam');
      writeln('2: nu');
      write('Xin chon gioi tinh: '); readln(i);
      case i of
         1:nam;
         2:nu;
         else write('.');
      end;
   end;
   begin
      clrscr;
      gotoxy(30,1); textcolor(14); writeln('MAY TINH');
      textcolor(15);
      writeln('0: Thoat');
      writeln('1: Tinh toan thong thuong');
      writeln('2: Chia lay du');
      writeln('3: Giai thua');
      writeln('4: UCLN-BCNN');
      writeln('5: Phan tich thua so nguyen to');
      writeln('6: Giai phuong trinh');
      writeln('7: Giai he phuong trinh');
      writeln('8: Giai bat phuong trinh');
      writeln('9: Tim Min-Max cua phuong trinh bac 2 mot an');
      writeln('10: Tinh can, chi, the ki');
      writeln('11: Fibonacci');
      writeln('12: To hop');
      writeln('13: Chinh hop');
      writeln('14: So ngau nhien (0-65535)');
      writeln('15: Do muc do gay-beo');
      writeln;
      write('Xin chon yeu cau: '); readln(k);
      case k of
        0:halt; 1:TT; 2:Qr; 3:GT; 4:UB;
        5:FACT; 6:PT; 7:HPT; 8:BPT; 9:MM2;
        10:CCTK; 11:F; 12:C; 13:A; 14: ran;
        15:B;
        else menu;
      end;
   end;
begin
 menu;
 readln;
end.
