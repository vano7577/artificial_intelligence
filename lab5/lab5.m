%1001И   1110Г    0110О   1001Н
%1011    1000     1001    1111
%1101    1000     1001    1001
%1001    1000     0110    1001

I=[1 1 0 1;
    0 1 1 0;
    0 1 1 0;
    1 0 0 1;
    1 1 1 1;
    0 0 0 1;
    1 0 0 1;
    1 0 1 1;
    1 1 1 1;
    1 0 0 0;
    0 0 0 0;
    1 0 1 1;
    1 1 0 1;
    0 0 1 0;
    0 0 1 0;
    1 0 0 1];
O = [1 0 0 0;
    0 1 0 0;
    0 0 1 0;
    0 0 0 1];
P = [0 1;
    0 1;
    0 1;
    0 1;
    0 1;
    0 1;
    0 1;
    0 1;
    0 1;
    0 1;
    0 1;
    0 1;
    0 1;
    0 1;
    0 1;
    0 1];
T= [0 1;
    0 1;
    0 1;
    0 1];

net=newp(P,T,'hardlim','learnp');
net.trainParam.epochs = 5000;
net = train(net,I,O);
X=[1 1 0 1;
    0 1 1 0;
    0 1 1 0;
    1 0 0 1;
    1 1 1 1;
    0 0 0 1;
    1 0 0 1;
    1 0 1 1;
    1 1 0 1;
    1 0 0 1;
    0 0 0 1;
    1 0 0 1;
    1 1 0 1;
    0 0 1 1;
    0 0 1 1;
    1 0 0 1];
Y1 = net(X);

for i = 1:4
    if Y1(1,i) ==1 && Y1(2,i)==0 && Y1(3,i)==0 && Y1(4,i)==0
        disp(['element',num2str(i), ' is И'])
        pohibka=0;
        for j=1:16
            if X(j,i) ~= I(j,1)
                pohibka= pohibka +1;
            end
        end
        disp(['calculation error = ', num2str((pohibka/16)*100),'%'])
    elseif Y1(1,i) ==0 && Y1(2,i)==1 && Y1(3,i)==0 && Y1(4,i)==0
        disp(['element',num2str(i), 'is Г'])
        pohibka=0;
        for j=1:16
            if X(j,i) ~= I(j,2)
                pohibka= pohibka +1;
            end
        end
        disp(['calculation error = ', num2str((pohibka/16)*100),'%'])
    elseif Y1(1,i) ==0 && Y1(2,i)==0 && Y1(3,i)==1 && Y1(4,i)==0
        disp(['element ',num2str(i), ' is О'])
        pohibka=0;
        for j=1:16
            if X(j,i) ~= I(j,3)
                pohibka= pohibka +1;
            end
        end
        disp(['calculation error = ', num2str((pohibka/16)*100),'%'])
    elseif Y1(1,i) ==0 && Y1(2,i)==0 && Y1(3,i)==0 && Y1(4,i)==1
        disp(['element ',num2str(i), 'is Н'])
        pohibka=0;
        for j=1:16
            if X(j,i) ~= I(j,4)
                pohibka= pohibka +1;
            end
        end
        disp(['calculation error = ', num2str((pohibka/16)*100),'%'])
    else
        disp(['element ',num2str(i), ' is wrong'])
    end
end
