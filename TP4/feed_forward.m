function [ a, z] = feed_forward( theta,  input )
%HIPOTHESIS Summary of this function goes here
%   Detailed explanation goes here
    z = theta * add_bias_unit(input);
    a = sigmoid(z);
end

