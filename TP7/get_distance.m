function [ distance ] = get_distance( a, b )
    %GET_DISTANCE Summary of this function goes here
    %   Detailed explanation goes here
    diff = a - b;
    distance = diff * diff';
end

