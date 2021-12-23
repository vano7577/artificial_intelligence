classNames = net.Layers(end).ClassNames;
I = imread("9_1.png");
[label,scores] = classify(net,I);
figure
imshow(I)
title(string(label) + ", " + num2str(100*scores(classNames == label),3) + "%");
I2 = imread("9_2.png");
[label2,scores2] = classify(net,I2);
figure
imshow(I2)
title(string(label2) + ", " + num2str(100*scores2(classNames == label2),3) + "%");