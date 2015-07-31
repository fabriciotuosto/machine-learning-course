function [ delta ] = layer_delta( theta, delta_prev, z )
    %LAYER_DELTA Summary of this function goes here
    %   Detailed explanation goes here
    delta = theta' * delta_prev ;
    delta = delta(2:end,:) .* sigmoidGradient(z);
end

