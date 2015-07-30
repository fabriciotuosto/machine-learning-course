function [ M ] = add_bias_unit( matrix )
    %ADD_BIAS_UNIT Summary of this function goes here
    %   Detailed explanation goes here
    m = size(matrix, 1);
    temp = [ones(m, 1) matrix];
    M = temp';
end

