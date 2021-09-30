gensim(ffb_1x10, -1);
gensim(ffb_1x20, -1);
gensim(cfb_1x20, -1);
gensim(cfb_2x10, -1);
eb_1x15 = elmannet(1:1,15);
X1 = con2seq(Input);
T1 = con2seq(Output);
[Xs1,Xi1,Ai1,Ts1] = preparets(eb_1x15,X1,T1);
eb_1x15 = train(eb_1x15,Xs1,Ts1,Xi1,Ai1);
view(eb_1x15)
Y1 = eb_1x15(Xs1,Xi1,Ai1);
perf1 = perform(eb_1x15,Ts1,Y1);
gensim(eb_1x15, 0.0001);
eb_3x5 = elmannet(1:1,[5,5,5]);
X3 = con2seq(Input);
T3 = con2seq(Output);
[Xs3,Xi3,Ai3,Ts3] = preparets(eb_1x15,X3,T3);
eb_3x5 = train(eb_3x5,Xs3,Ts3,Xi3,Ai3);
view(eb_3x5)
Y3 = eb_3x5(Xs3,Xi3,Ai3);
perf3 = perform(eb_3x5,Ts3,Y3);
gensim(eb_3x5, 0.01);
