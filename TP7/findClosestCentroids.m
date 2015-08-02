function idx = findClosestCentroids(X, centroids)
    %FINDCLOSESTCENTROIDS computes the centroid memberships for every example
    %   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
    %   in idx for a dataset X where each row is a single example. idx = m x 1 
    %   vector of centroid assignments (i.e. each entry in range [1..K])
    %
    % Set K
    K = size(centroids, 1);
    idx = zeros(size(X,1), 1);
    for i = 1:length(idx)
        distance = zeros(K, 1);
        x = X(i,:);
        for j = 1:K
            c = centroids(j,:);
            diff = x - c;
            distance(j) = diff * diff';
        end
        [~, idx(i)] = min(distance);
    end
end

