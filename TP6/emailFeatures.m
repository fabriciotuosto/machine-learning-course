function x = emailFeatures(word_indices)
    %EMAILFEATURES takes in a word_indices vector and produces a feature vector
    %from the word indices
    %   x = EMAILFEATURES(word_indices) takes in a word_indices vector and 
    %   produces a feature vector from the word indices. 

    % Total number of words in the dictionary
    n = 1899;
    x = arrayfun(@(i) ~isempty(word_indices(word_indices==i)), 1:n);
end
