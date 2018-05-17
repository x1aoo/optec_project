close all;
clear all;
global A B C r;
A=[1,9];
B=[9,1];
C=[3,8;6,5];
r=[0.5,0.5];
rng(202);
x0=10*rand(2,2);

options =optimset('Display','iter','TolX',1.e-6,'TolFun',1.e-6,'MaxIter',200,'MaxFunEvals',1000);
% Display iter means that we would like to print the iteration.
% make x0 to be random initialization
% x0 = [9, 9];
lb = [0,0;0,0];
ub = [10,10;10,10];

x = fmincon('obj',x0,[],[],[],[],lb,ub,'const',options);

viscircles(C,r);
M= [A;x;B];
hold on;
plot(M(:,1),M(:,2));