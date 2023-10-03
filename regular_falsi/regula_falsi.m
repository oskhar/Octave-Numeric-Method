% Fungsi regula_falsi
function root = regula_falsi(func, a, b, tolerance, max_iterations)
    % Inisialisasi nilai awal untuk root
    root = NaN;

    % Menampilkan data ke konsol
    fprintf('%-5s%-12s%-12s%-12s%-12s%-12s%-12s\n', 'Iter', 'a', 'b', 'c', 'f(a)', 'f(b)', 'f(c)');

    % Algoritma Regula Falsi
    iterations = 0;
    while iterations < max_iterations

        % Menghitung titik potong dengan sumbu x
        c = (a * func(b) - b * func(a)) / (func(b) - func(a));

        % Menampilkan nilai a, c, b, f(a), f(c), dan f(b) dalam bentuk tabel
        fprintf('%-5d%-12.6f%-12.6f%-12.6f%-12.6f%-12.6f%-12.6f\n', iterations, a, b, c, func(a), func(b), func(c));

        % Mengecek apakah nilai c sudah sangat mendekati akar
        if abs(func(c)) < tolerance
            root = c;
            break;
        end

        % Memperbarui nilai a dan b berdasarkan nilai c
        if func(c) * func(a) < 0
            b = c;
        else
            a = c;
        end

        % Menambah jumlah iterasi
        iterations = iterations + 1;
    end

    % Menampilkan hasil
    if isnan(root)
        disp('Metode Regula Falsi tidak konvergen dalam jumlah iterasi maksimum.');
    else
        disp(['Akar yang ditemukan: ', num2str(root)]);
        disp(['Iterasi yang dibutuhkan: ', num2str(iterations)]);
    end
end
