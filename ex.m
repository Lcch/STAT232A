mex getHistogram.c

pic = rgb2gray(imread('fur_obs.jpg'));
pic = int32(imresize(pic, [256, 256]));
pic = int32(double(pic)/255*7);

[F, filters, width, height] = myfilters; %Calculate filter sets.
width = int32(width);
height = int32(height);

[histo1, min_f, max_f] = getHistogram(pic, filters(1:10, :)', width(1:10), height(1:10)); %Compute histograms.
[synthesized1, histo1a] = Julesz(reshape(histo1', 15, 1), filters(1, :)', width(1), height(1), min_f, max_f); %Sampling.