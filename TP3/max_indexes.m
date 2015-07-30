function [ indexes ] = max_indexes( M )
    %MAX_INDEXES Summary of this function goes here
    %   Detailed explanation goes here
    [~, s_indexes] = max(M);
    indexes = s_indexes';
end

