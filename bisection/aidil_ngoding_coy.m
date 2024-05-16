%clc;
f = @(x) e.^x - 5*x.^2;
a=input ('input batas bawah (a) : ');
b=input ('input batas atas (b): ');
error= input ('input toleransi error: ');
iterasi= 0;
x = (a+b)/2;
fx=f(x);


disp('========================================================================================');
disp('  i       a        b        f(a)        f(b)         x        f(x)');
disp('========================================================================================');

if f(a) * f(b) > 0
  disp('tak ada akar');
else
  while abs(fx)> error
    iterasi += 1;
    x = (a+b)/2;
    fx=f(x);
    disp(sprintf('%3g %10.7f %10.7f %10.7f %10.7f %10.7f %10.7f', iterasi,a,b,f(a),f(b),x,f(x)));
    if f(x)*f(a)<0
      b=x;
    else
      a=x;
    endif
  endwhile
  disp(sprintf('sksr ditemukan: %10.7f', x));
end