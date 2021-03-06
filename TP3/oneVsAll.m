function [all_theta] = oneVsAll(X, y, num_labels, lambda)
    %ONEVSALL trains multiple logistic regression classifiers and returns all
    %the classifiers in a matrix all_theta, where the i-th row of all_theta 
    %corresponds to the classifier for label i
    %   [all_theta] = ONEVSALL(X, y, num_labels, lambda) trains num_labels
    %   logisitc regression classifiers and returns each of these classifiers
    %   in a matrix all_theta, where the i-th row of all_theta corresponds 
    %   to the classifier for label i
    % Note: For this assignment, we recommend using fmincg to optimize the cost
    %       function. It is okay to use a for-loop (for c = 1:num_labels) to
    %       loop over the different classes.
    %
    %       fmincg works similarly to fminunc, but is more efficient when we
    %       are dealing with large number of parameters.
    %
    %--------------------------------------------------------------------------
    n = size(X, 2);
    all_theta = zeros(num_labels, n + 1);
    % Add ones to the X data matrix
    X = add_bias_unit(X)';
    initial_theta = zeros(n + 1, 1);
    options = optimset('GradObj', 'on', 'MaxIter', 50);
    for i=1:num_labels
        [all_theta(i,:)] = fmincg (@(t)(lrCostFunction(t, X, (y == i), lambda)),initial_theta, options);
    end
end
