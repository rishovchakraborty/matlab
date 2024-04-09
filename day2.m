
// Newton's Forward Interpolation (C)
#include <stdio.h>

// Function to calculate factorial
int factorial(int n) {
    int fact = 1;
    for (int i = 2; i <= n; i++) {
        fact *= i;
    }
    return fact;
}

int main() {
    int n; // Number of data points
    printf("Enter the number of data points: ");
    scanf("%d", &n);

    double x[n], y[n][n];

    // Input x and y values
    printf("Enter the data points:\n");
    for (int i = 0; i < n; i++) {
        printf("x%d y%d: ", i, i);
        scanf("%lf %lf", &x[i], &y[i][0]);
    }

    // Calculate the divided differences
    for (int j = 1; j < n; j++) {
        for (int i = 0; i < n - j; i++) {
            y[i][j] = y[i + 1][j - 1] - y[i][j - 1];
        }
    }

    // Input the value for interpolation
    double value;
    printf("Enter the value for interpolation: ");
    scanf("%lf", &value);

    // Using Newton's Forward Interpolation Formula
    double result = y[0][0];
    double u = (value - x[0]) / (x[1] - x[0]);
    double term = 1.0;
    for (int i = 1; i < n; i++) {
        term *= (u - i + 1) / i;
        result += term * y[0][i] / factorial(i);
    }

    printf("Interpolated value at %lf is %lf\n", value, result);

    return 0;
}

// Newton's Backward Interpolation (C)
#include <stdio.h>

// Function to calculate factorial
int factorial(int n) {
    int fact = 1;
    for (int i = 2; i <= n; i++) {
        fact *= i;
    }
    return fact;
}

int main() {
    int n; // Number of data points
    printf("Enter the number of data points: ");
    scanf("%d", &n);

    double x[n], y[n][n];

    // Input x and y values
    printf("Enter the data points:\n");
    for (int i = 0; i < n; i++) {
        printf("x%d y%d: ", i, i);
        scanf("%lf %lf", &x[i], &y[i][0]);
    }

    // Calculate the divided differences
    for (int j = 1; j < n; j++) {
        for (int i = n - 1; i >= j; i--) {
            y[i][j] = y[i][j - 1] - y[i - 1][j - 1];
        }
    }

    // Input the value for interpolation
    double value;
    printf("Enter the value for interpolation: ");
    scanf("%lf", &value);

    // Using Newton's Backward Interpolation Formula
    double result = y[n - 1][0];
    double u = (value - x[n - 1]) / (x[1] - x[0]);
    double term = 1.0;
    for (int i = 1; i < n; i++) {
        term *= (u + i - 1) / i;
        result += term * y[n - 1][i] / factorial(i);
    }

    printf("Interpolated value at %lf is %lf\n", value, result);

    return 0;
}

// Newton's Forward Interpolation (MATLAB)
function newtonForwardInterpolation()

    % Number of data points
    n = input('Enter the number of data points: ');

    x = zeros(1, n);
    y = zeros(n, n);

    % Input x and y values
    fprintf('Enter the data points:\n');
    for i = 1:n
        x(i) = input(sprintf('x%d: ', i));
        y(i, 1) = input(sprintf('y%d: ', i));
    end

    % Calculate the divided differences
    for j = 2:n
        for i = 1:n-j+1
            y(i, j) = y(i+1, j-1) - y(i, j-1);
        end
    end

    % Input the value for interpolation
    value = input('Enter the value for interpolation: ');

    % Using Newton's Forward Interpolation Formula
    result = y(1, 1);
    u = (value - x(1)) / (x(2) - x(1));
    term = 1;
    for i = 2:n
        term = term * (u - i + 1) / i;
        result = result + term * y(1, i) / factorial(i-1);
    end

    fprintf('Interpolated value at %f is %f\n', value, result);
end
