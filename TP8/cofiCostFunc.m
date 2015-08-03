function [J, grad] = cofiCostFunc(params, Y, R, num_users, num_movies, ...
                                  num_features, lambda)
    %COFICOSTFUNC Collaborative filtering cost function
    %   [J, grad] = COFICOSTFUNC(params, Y, R, num_users, num_movies, ...
    %   num_features, lambda) returns the cost and gradient for the
    %   collaborative filtering problem.
    %
    % Unfold the U and W matrices from params
    X = reshape(params(1:num_movies*num_features), num_movies, num_features);
    Theta = reshape(params(num_movies*num_features+1:end), ...
                    num_users, num_features);
    % You need to return the following values correctly
    J          = collaborative_filter_cost(X, Y, R, Theta, lambda);
    X_grad     = collaborative_filter_x_grad(X, Y, R, Theta, lambda);
    Theta_grad = collaborative_filter_theta_grad(X, Y, R, Theta, lambda);
    grad       = [X_grad(:); Theta_grad(:)];
end
