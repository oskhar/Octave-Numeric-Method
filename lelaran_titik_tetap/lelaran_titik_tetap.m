% Fungsi yang ingin dicari akarnya 
f = @(x) x.^3 - 2*x.^2 + 4;

% Tebakan awal
x0 = 2;

% Toleransi
tol = 0.1;

% Maksimum iterasi
max_iter = 100;

fprintf('Iterasi\t  x\t\t f(x)\n');
fprintf('------------------------------\n');

iter = 0;
x = x0;

while iter < max_iter
    x_next = f(x);  % Rumus iterasi titik tetap
    
    fprintf('%d\t  %f\t %f\n', iter, x, f(x));
    
    if abs(x_next - x) < tol
        fprintf('\nKonvergensi tercapai.\n');
        fprintf('\nAkar perkiraan: %f\n', x_next);
        fprintf('Iterasi yang diperlukan: %d\n', iter + 1); % Jumlah iterasi yang diperlukan
        break;  % Konvergen
    end
    
    x = x_next;
    iter = iter + 1;
end

if iter == max_iter
    fprintf('\nIterasi maksimum tercapai tanpa konvergensi.\n');
end
