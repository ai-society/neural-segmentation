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

f_list = dir('train/*.tif');
m = size(f_list, 1);

for i = 1:num_patches
    img = f_list(randi(m)).name;
    img = Tiff(['train/' img]);
    img = img.read();
    w = randi(max_width);
    h = randi(max_height);
    patch = img(h:h+patch_size-1, w:w+patch_size-1);
    patches(:, i) = patch(:);
end





