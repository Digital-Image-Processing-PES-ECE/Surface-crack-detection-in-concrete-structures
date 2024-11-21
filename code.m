
img = imread("D:\sem_5\dip\project\crack.jpg");
img=im2gray(img);
%Apply Gaussian Blur to reduce noise
img_blur = imgaussfilt(img, 3); 

% Contrast Enhancement (Optional)
img_enhanced = imadjust(img_blur);

% Edge Detection using Canny
edges = edge(img_enhanced, 'Canny',[0.1 0.3]);

% Otsu's Thresholding
otsu_threshold = graythresh(img_enhanced);
binary_img = imbinarize(img_enhanced, otsu_threshold);

%Morphological Operations
% Use morphological closing to fill gaps in the cracks
se = strel('line',2,90); 
binary_img = imclose(binary_img, se);

%  Combine Edge Detection and Thresholding Resultss
combined_img = im2bw(double(binary_img) + 3* double(edges), 0.5);


%  Remove small objects (noise) using area-based filtering
cleaned_img = bwareaopen(combined_img, 50); 

%  Label Connected Components
[labeled_img, num] = bwlabel(cleaned_img);


%  Display results
figure;
subplot(2, 3, 1);
imshow(img);
title('Original Image');

subplot(2, 3, 2);
imshow(img_blur);
title('Gaussian Blurred');

subplot(2, 3, 3);
imshow(edges);
title('Canny Edge Detection');

subplot(2, 3, 4);
imshow(binary_img);
title('Otsu Thresholding');

subplot(2, 3, 5);
imshow(cleaned_img);
title('Cleaned Binary Image');

subplot(2, 3, 6);
imshow(label2rgb(labeled_img, 'spring', 'k', 'shuffle'));
title(['Detected Cracks: ', num2str(num)]);

stats = regionprops(cleaned_img, 'Area', 'Perimeter');
total_crack_area = sum([stats.Area]);
crack_density = total_crack_area / numel(cleaned_img);
disp(total_crack_area);
disp(crack_density);

