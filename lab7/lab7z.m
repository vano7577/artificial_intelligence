options = optimoptions('ga', 'PlotFcn', {@gaplotbestf @gaplotbestindiv ...
@gaplotdistance},'Display', 'iter', 'MaxGenerations', 50, ...
'PopulationSize', 10);
rng default
z_in = 2;
z_low_interval = [0 0];
z_hight_interval =[5 5];
[xy,z] = ga(@func2, z_in, [], [], [], [], z_low_interval, ...
z_hight_interval, [], [], options);
fprintf('Max z = %f in (%f;%f)\n', -1*z, xy(1), xy(2));
figure
fsurf(@(x,y) -func2([x,y]), [0 5]);
xlabel('x');
ylabel('y');
zlabel('z');
box on