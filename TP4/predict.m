function p = predict(Theta1, Theta2, X)
    %PREDICT Predict the label of an input given a trained neural network
    %   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
    %   trained weights of a neural network (Theta1, Theta2) 
    a_2 = feed_forward(Theta1, X );
    h_x = feed_forward(Theta2, a_2');
    p = max_indexes(h_x);
end