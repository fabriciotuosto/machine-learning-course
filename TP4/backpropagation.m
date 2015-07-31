function [ p ] = backpropagation( delta, theta, z)
    %BACKPROPAGATION Summary of this function goes here
    %   Detailed explanation goes here
    p = theta'* delta .* add_bias_unit(sigmoidGradient(z)'); 
end

