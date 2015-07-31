function error = nn_cost(h, y)
    % Computes the cost of the hypothesis respect to y
    error = sum(sum(-y .* log(h) - (1 - y) .* log(1 - h)))/(length(y));
end