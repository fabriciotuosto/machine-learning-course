function [ Y ] = get_classes( num_labels, m, y)
    %GET_CLASSES Summary of this function goes here
    %   Detailed explanation goes here
    % Explode y into 10 values with Y[i] := i == y.
    Y = zeros(num_labels, m);
    Y(sub2ind(size(Y), y', 1:m)) = 1; 
end

