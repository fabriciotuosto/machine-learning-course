function p = predict(Theta1, Theta2, X)
    %PREDICT Predict the label of an input given a trained neural network
    %   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
    %   trained weights of a neural network (Theta1, Theta2)
    a_2 = sigmoid(Theta1 * add_bias_unit(X));
    h = sigmoid(Theta2 * add_bias_unit(a_2')); % a_3 = h(x)
    p = max_indexes(h);
end
