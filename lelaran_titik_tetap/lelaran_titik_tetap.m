% Fungsi iterasi (g(x))
g = @(x) sqrt(4 + x);

% Tebakan awal
x0 = 1.5;

% Toleransi
tol = 0.0000001;

% Maksimum iterasi
max_iter = 100;

fprintf('Iterasi\t  x\t\t g(x)\n');
fprintf('------------------------------\n');

iter = 0;
x = x0;

while iter < max_iter
    x_next = g(x);  % Rumus iterasi titik tetap
    
    % Melakukan print untuk setiap perhitungan yang dilakukan
    fprintf('%d\t  %.6f\t %.6f\n', iter, x_next, g(x_next));
    
    % Mengecek apakah x sebelumnya dikurang x baru memiliki hasil yang diinginkan
    if abs(x_next - x) < tol
        fprintf('\nKonvergensi tercapai.\n');
        fprintf('\nAkar perkiraan: %.6f\n', x_next);
        fprintf('Iterasi yang diperlukan: %d\n', iter + 1); % Jumlah iterasi yang diperlukan
        break;  % Konvergen
    end
    
    x = x_next;
    iter = iter + 1;
end

if iter == max_iter
    fprintf('\nIterasi maksimum tercapai tanpa konvergensi.\n');
end
