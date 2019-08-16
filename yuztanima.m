FDetect = vision.CascadeObjectDetector;
I = imread('a.jpg');
figure(1),imshow(I)
title('orjinal resim')

BB = step(FDetect,I);
figure(2),imshow(I); hold on 
for i=1:size(BB,1)
   rectangle('Position',BB(i,:),'LineWidth',5,'LineStyle','-','EdgeColor','r');
end
title('Face Detection');
hold off;
