function [ reg ] = collaborative_filter_cost_reg( params, lambda )
    %COLLABORATIVE_FILTER_COST_REG Summary of this function goes here
    %   Detailed explanation goes here
    reg = (lambda/2)*sum(sum(params.^2));
end

