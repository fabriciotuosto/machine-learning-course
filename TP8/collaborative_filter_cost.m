function [ J ] = collaborative_filter_cost( X, Y, R, theta, lambda )
%COLLABORATIVE_FILTER_COST Summary of this function goes here
%   Detailed explanation goes here
    temp = (X*theta' - Y).^2;
    J = (1/2)* sum(temp(R==1)) ...
        + collaborative_filter_cost_reg(theta, lambda) ... % regularize theta
        + collaborative_filter_cost_reg(X, lambda);        % regularize lambda
end

