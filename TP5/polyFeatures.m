function [X_poly] = polyFeatures(X, p)
    %POLYFEATURES Maps X (1D vector) into the p-th power
    %   [X_poly] = POLYFEATURES(X, p) takes a data matrix X (size m x 1) and
    %   maps each example into its polynomial features where
    %   X_poly(i, :) = [X(i) X(i).^2 X(i).^3 ...  X(i).^p];
    %
    X_poly = X;
    for i=2:p
        X_poly = [X_poly X.^i];
    end

end
