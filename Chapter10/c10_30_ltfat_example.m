#{
  Name     : c10_30_ltfat_example.m
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 4/24/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com

#}


pkg load ltfat
f = greasy;
name1="sparsified coefficients"
name2="dual system coefficients"
F = frame('dgtreal','gauss',64,512);
lambda = 0.1;
% Solve the basis pursuit problem
[c,~,~,frec,cd] = franalasso(F,f,lambda);
figure(1); % Plot sparse coefficients
plotframe(F,c,’dynrange’,50);
figure(2); % Plot coefficients 
plotframe(F,cd,’dynrange’,50);
norm(f-frec)
figure(3);
semilogx([sort(abs(c),'descend')/max(abs(c)),...
sort(abs(cd),’descend’)/max(abs(cd))]);
legend({name1,name2});
