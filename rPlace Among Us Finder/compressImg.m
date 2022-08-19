rPlace_img = imread("img_rPlace.png");
size_img = [6000 6000 3];
rPlace_img = rPlace_img(1:size_img(1),1:size_img(2),1:size_img(3));
rPlace = zeros(size_img(1)/3,size_img(2)/3,size_img(3));
iA = 1;
for iB = 1 : 3 : size_img(1)
    jA = 1;
    for jB = 1 : 3 : size_img(2)
        rPlace(jA,iA,:) = rPlace_img(jB,iB,:);
        jA = jA + 1;
    end
    iA = iA + 1;
end
rPlace = rPlace/255;

imwrite(rPlace,'rPlace.bmp');