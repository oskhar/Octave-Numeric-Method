% Definisikan fungsi yang ingin Anda cari akarnya (exp(x) - 5*x^2)
func = @(x) e.^x - 5*x.^2;

% Batas awal a dan b
a = -0.50;
b = 1.40;
tolerance = 0.001;
max_iterations = 100;

% Membuat array
akumulasiAngka = -2.0:0.01:2.0;

% Membuat plot sederhana untuk persamaannya
plot(akumulasiAngka, func(akumulasiAngka));
hold on;
% Membuat garis horizontal pada y = 0
plot([-2, 2], [0, 0], 'r', 'LineWidth', 1);

% Membuat garis vertikal pada x = 0
plot([0, 0], [min(func(akumulasiAngka)), 5], 'b', 'LineWidth', 1);

xlabel('x');
ylabel('f(x)');
title('Plot Fungsi exp(x) - 5*x^2');
grid on;

legend('f(x)', 'Garis Y', 'Garis X');

hold off;