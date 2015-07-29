function error = logistic_regression_cost(hypothesis, y)
    % Computes the cost of the hypothesis respect to y
    error = sum(-y .* log(hypothesis) - (1 - y) .* log(1 - hypothesis))/(length(y));
end