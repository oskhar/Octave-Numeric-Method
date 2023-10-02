% Fungsi regula_falsi
function regula_falsi(func, a, b, tolerance, max_iterations)
    % Inisialisasi nilai awal untuk root
    root = NaN;

    % Mengecek apakah fungsi a dan b memiliki tanda yang berbeda
    if func(a) * func(b) >= 0
        error('Error: Fungsi a dan b harus memiliki tanda yang berbeda.');
    end

    % Algoritma Regula Falsi
    iterations = 0;
    while iterations < max_iterations
        % Menghitung titik potong dengan sumbu x
        c = (a * func(b) - b * func(a)) / (func(b) - func(a));

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
