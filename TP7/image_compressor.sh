#!/usr/bin/octave -q

originalImgPath = argv(){1};
newImgPath = argv(){2};

K = str2num(argv(){3};
iter = str2num(argv(){4};

img = double(imread(originalImgPath));
img = img / 255;
imgSize = size(img);

X = reshape(img, imgSize(1) * imgSize(2), 3);

initialCentroids = initCentroids(X, K);

[centroids, idx] = runKMeans(X, initialCentroids, iter);

idx = assignCentroids(X, centroids);
compressedImg = centroids(idx, :);
compressedImg = reshape(compressedImg, imgSize(1), imgSize(2), 3);

imwrite(compressedImg, newImgPath);