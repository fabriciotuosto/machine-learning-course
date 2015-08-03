function [ index ] = get_min_distance( centroids, x )
%GET_MIN_DISTANCE Summary of this function goes here
%   Detailed explanation goes here
        K = size(centroids, 1);
        distance = zeros(K, 1);
        for j = 1:K
            c = centroids(j,:);
            distance(j) = get_distance(x, c);
        end
        [~, index] = min(distance);
end

