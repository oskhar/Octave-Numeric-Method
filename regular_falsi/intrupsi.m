% Definisikan fungsi yang ingin Anda cari akarnya (sin(x) - 0)
func = @(x) sin(x) * 2;

% Batas awal a dan b
a = 0.0;
b = 10.14;

% Toleransi untuk akurasi hasil
tolerance = 1e-6;

% Jumlah maksimal iterasi
max_iterations = 100;

% Panggil fungsi regula_falsi
[root, iterations] = regula_falsi(func, a, b, tolerance, max_iterations);

% Plot hasil
x = linspace(0, 3.14, 1000);
y = func(x);

figure;
plot(x, y, 'b-', 'LineWidth', 2);
hold on;
plot(root, 0, 'ro', 'MarkerSize', 10);
xlabel('x');
ylabel('f(x)');
title('Metode Regula Falsi untuk sin(x) = 0');
legend('f(x) = sin(x)', 'Akar yang Ditemukan');
grid on;
