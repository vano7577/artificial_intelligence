u= zeros(6);
for i=0:0.2:1
    for j=0:0.2:1
        u(i*5+1,j*5+1)=func(i,j);
    end
end
disp(u);