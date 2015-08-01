function [J, grad] = nnCostFunction(nn_params, ...
                                   input_layer_size, ...
                                   hidden_layer_size, ...
                                   num_labels, ...
                                   X, y, lambda)
%NNCOSTFUNCTION Implements the neural network cost function for a two layer
%neural network which performs classification
%   [J grad] = NNCOSTFUNCTON(nn_params, hidden_layer_size, num_labels, ...
%   X, y, lambda) computes the cost and gradient of the neural network. The
%   parameters for the neural network are "unrolled" into the vector
%   nn_params and need to be converted back into the weight matrices. 
% 
%   The returned parameter grad should be a "unrolled" vector of the
%   partial derivatives of the neural network.
%

% Reshape nn_params back into the parameters Theta1 and Theta2, the weight matrices
% for our 2 layer neural network
Theta1 = reshape(nn_params(1:hidden_layer_size * (input_layer_size + 1)), ...
                 hidden_layer_size, (input_layer_size + 1));

Theta2 = reshape(nn_params((1 + (hidden_layer_size * (input_layer_size + 1))):end), ...
                 num_labels, (hidden_layer_size + 1));

m = size(X, 1);
Y = get_classes(num_labels, m, y);
% Feed Forward
a_1 = X;
[a_2, z_2] = feed_forward(Theta1, a_1 );
[h_x, ~]   = feed_forward(Theta2, a_2');
% Cost function
J = nn_cost(h_x, Y) ...
    + nn_regularization(y, Theta1, lambda) ...
    + nn_regularization(y, Theta2, lambda);
% Backpropagation
delta_3 = h_x - Y;
delta_2 = layer_delta(Theta2, delta_3, z_2);
% Gradient
Theta1_grad = nn_gradient_reg(nn_gradient(delta_2, a_1 , m), m, Theta1, lambda);
Theta2_grad = nn_gradient_reg(nn_gradient(delta_3, a_2', m), m, Theta2, lambda);
% Unroll gradients
grad = [Theta1_grad(:) ; Theta2_grad(:)];
end
