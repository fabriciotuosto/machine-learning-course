function centroids = kMeansInitCentroids(X, K)
    %KMEANSINITCENTROIDS This function initializes K centroids that are to be 
    %used in K-Means on the dataset X
    %   centroids = KMEANSINITCENTROIDS(X, K) returns K initial centroids to be
    %   used with the K-Means on the dataset X
    %
    [rows, cols] = size(X);
    centroids = X(randi(rows, K, 1), 1:cols);
end

