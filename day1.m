
clc 
clear all 
close all

% 1. Square root of a value using function 
x=121 
root=sqrt(x); 
disp(root)

%2. find the determinant of a inverse matrix bu inbuilt function
% Define a 3x3 matrix
A = [1, 2, 3; 4, 5, 6; 7, 8, 9];
disp('Matrix A:')
disp(A)

% Calculate the inverse of A
A_inv = inv(A);
disp('Inverse of Matrix A:')
disp(A_inv)

% Calculate the determinant of A
det_A = det(A);
disp('Determinant of Matrix A:')
disp(det_A)

%3. delete an element , entire row or column
% Create a sample matrix A
A = [1, 2, 3; 4, 5, 6; 7, 8, 9];

% Delete the element at row 2, column 3
A(2, 3) = [];  % Just set it to empty, effectively "deleting" it

disp('Matrix after deleting element at (2,3):')
disp(A)
% Create a sample matrix B
B = [10, 20, 30; 40, 50, 60; 70, 80, 90];

% Delete the 2nd row
B(2, :) = [];  % Empty square brackets deletes the entire row

disp('Matrix after deleting 2nd row:')
disp(B)

% Create a sample matrix C
C = [100, 200, 300; 400, 500, 600; 700, 800, 900];

% Delete the 3rd column
C(:, 3) = [];  % Empty square brackets deletes the entire column

disp('Matrix after deleting 3rd column:')
disp(C)

%4(i) let x=5 find sinx cosx cosecx and secx

% Given value
x = 5;

% Convert degrees to radians
x_rad = deg2rad(x);

% Calculate trigonometric functions
sin_x = sin(x_rad);
cos_x = cos(x_rad);
sec_x = 1/cos(x_rad);  % sec(x) = 1/cos(x)
cosec_x = 1/sin(x_rad);  % cosec(x) = 1/sin(x)

% Display the results
disp(['For x = 5 degrees (converted to radians):']);
disp(['sin(x) = ', num2str(sin_x)]);
disp(['cos(x) = ', num2str(cos_x)]);
disp(['sec(x) = ', num2str(sec_x)]);
disp(['cosec(x) = ', num2str(cosec_x)]);

%4(ii) y=pi/2 find tanx and cotx
% Given value
y = pi/2;

% Calculate trigonometric functions
tan_y = tan(y);
cot_y = 1/tan(y);  % cot(y) = 1/tan(y)

% Display the results
disp(['For y = pi/2:']);
disp(['tan(y) = ', num2str(tan_y)]);
disp(['cot(y) = ', num2str(cot_y)]);

%5. a=[1x2] b=[1x2] matrix now perform +,-,*,^,%
% Define the matrices
a = [3, 5]; % 1x2 matrix [3, 5]
b = [1, 2]; % 1x2 matrix [1, 2]

% Perform operations
addition = a + b;
subtraction = a - b;
multiplication = a .* b;  % Element-wise multiplication
exponentiation = a .^ b;  % Element-wise exponentiation
modulus = mod(a, b);      % Element-wise modulus

% Display the results
disp('Matrix a:')
disp(a)
disp('Matrix b:')
disp(b)

disp('Addition (a + b):')
disp(addition)

disp('Subtraction (a - b):')
disp(subtraction)

disp('Multiplication (a .* b):')
disp(multiplication)

disp('Exponentiation (a .^ b):')
disp(exponentiation)

disp('Modulus (a % b):')
disp(modulus)


