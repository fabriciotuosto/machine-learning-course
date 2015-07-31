function gradient = nn_gradient(deltas, activation, m)
    % Calculates the gradient of the hypotesis respect to X and Y
    gradient = deltas * add_bias_unit(activation)' ./ m;
end