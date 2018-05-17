global A B C1 r1;
A=[1,5];
B=[9,5];
C1=[5,5];
r1=2;

options =optimset('Display','iter','TolX',1.e-6,'TolFun',1.e-6,'MaxIter',200,'MaxFunEvals',1000);
% Display iter means that we would like to print the iteration.

x0 = [0 0];
lb = [0 0];
ub = [10 10];

x = fmincon('obj',x0,[],[],[],[],lb,ub,'const',options);

viscircles(C1,r1);
M= [ A;x;B];
hold on;
plot(M(:,1),M(:,2));