close all;
clear all;
clc;

img_height = 420;
img_width = 580;
num_patches = 100000;
patch_size = 16;

max_width = img_width - patch_size + 1;
max_height = img_height - patch_size + 1;

patches = zeros(patch_size*patch_size, num_patches);

f_list = dir('data/train/*.tif');
m = size(f_list, 1);

reverseStr = '';
for i = 1:num_patches
    msg = sprintf('\bSampling patch %d from %d...\n', i, num_patches);
    fprintf([reverseStr, msg]);
    reverseStr = repmat(sprintf('\b'), 1, length(msg));
    img = f_list(randi(m)).name;
    img = Tiff(['data/train/' img]);
    img = img.read();
    w = randi(max_width);
    h = randi(max_height);
    patch = img(h:h+patch_size-1, w:w+patch_size-1);
    patches(:, i) = patch(:);
end

fprintf('Displaying sample patches...\n');

num_samples = 100;

s = randperm(num_patches);
idx = s(1:num_samples);

display_network(patches(:, idx));






