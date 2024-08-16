clear all
close all
clc

A = [1 2 3 4; 2 5 4 7; 3 7 8 12; 4 8 14 19];
if size(A, 1) == size(A, 2) && det(A) ~= 0
    I = eye(size(A));
    
    I(2, :) = I(2, :) - (A(2, 1)/A(1, 1)) * I(1, :);
    A(2, :) = A(2, :) - (A(2, 1)/A(1, 1)) * A(1, :);
    
    I(3, :) = I(3, :) - (A(3, 1)/A(1, 1)) * I(1, :);
    A(3, :) = A(3, :) - (A(3, 1)/A(1, 1)) * A(1, :);
    
    I(4, :) = I(4, :) - (A(4, 1)/A(1, 1)) * I(1, :);
    A(4, :) = A(4, :) - (A(4, 1)/A(1, 1)) * A(1, :);
    
    I(1, :) = I(1, :) - (A(1, 2)/A(2, 2)) * I(2, :);
    A(1, :) = A(1, :) - (A(1, 2)/A(2, 2)) * A(2, :);
    
     I(3, :) = I(3, :) - (A(3, 2)/A(2, 2)) * I(2, :);
    A(3, :) = A(3, :) - (A(3, 2)/A(2, 2)) * A(2, :);
    
     I(4, :) = I(4, :) - (A(4, 2)/A(2, 2)) * I(2, :);
    A(4, :) = A(4, :) - (A(4, 2)/A(2, 2)) * A(2, :);
    
     I(1, :) = I(1, :) - (A(1, 3)/A(3, 3)) * I(3, :);
    A(1, :) = A(1, :) - (A(1, 3)/A(3, 3)) * A(3, :);
    
     I(2, :) = I(2, :) - (A(2, 3)/A(3, 3)) * I(3, :);
    A(2, :) = A(2, :) - (A(2, 3)/A(3, 3)) * A(3, :);
    
    I(4, :) = I(4, :) - (A(4, 3)/A(3, 3)) * I(3, :);
    A(4, :) = A(4, :) - (A(4, 3)/A(3, 3)) * A(3, :);
    
    I(1, :) = I(1, :) - (A(1, 4)/A(4, 4)) * I(4, :);
    A(1, :) = A(1, :) - (A(1, 4)/A(4, 4)) * A(4, :);
    
    I(2, :) = I(2, :) - (A(2, 4)/A(4, 4)) * I(4, :);
    A(2, :) = A(2, :) - (A(2, 4)/A(4, 4)) * A(4, :);
    
    I(3, :) = I(3, :) - (A(3, 4)/A(4, 4)) * I(4, :);
    A(3, :) = A(3, :) - (A(3, 4)/A(4, 4)) * A(4, :);
end;
