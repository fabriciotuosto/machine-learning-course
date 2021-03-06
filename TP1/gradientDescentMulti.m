function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
    %GRADIENTDESCENTMULTI Performs gradient descent to learn theta
    %   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
    %   taking num_iters gradient steps with learning rate alpha
    % Initialize some useful values
    J_history = zeros(num_iters, 1);
    for iter = 1:num_iters
        [theta, J_history(iter)] = gradient_descent_step(X, y, theta, alpha);
    end
end
