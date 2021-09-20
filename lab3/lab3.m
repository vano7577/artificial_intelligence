load clusterdemo.dat
[center, U, obj_fcm] = fcm(clusterdemo, 3, [2, 200, NaN, 1]);
maxU = max(U);
index1 = find (U(1, :) == maxU);
index2 = find(U(2, :) == maxU);
index3 = find(U(3, :) == maxU);
plot (clusterdemo (index1, 1), clusterdemo (index1, 2),'ob', 'markersize', 5, 'LineWidth' ,1);
hold on
plot(clusterdemo (index2, 1), clusterdemo(index2, 2), 'or', 'markersize', 5, 'LineWidth', 1);
plot(clusterdemo (index3, 1), clusterdemo(index3, 2), 'ko', 'markersize', 5, 'LineWidth', 1);
plot(center(1, 1), center(1, 2), 'xb', 'markersize', 15, 'LineWidth', 2);
plot (center (2, 1), center (2, 2), 'xr','markersize', 15, 'LineWidth', 2);
plot (center (3, 1), center (3, 2), 'kx','markersize', 15, 'LineWidth', 2)
hold off;
title('Множина аналiзуємих даних і центри кластерів')
figure;
plot(1:length(obj_fcm),obj_fcm);
xlim([1 length(obj_fcm)]);
title('Графік зміни значень цільової функції');