function f = obj(x)
global A B C1 d P
P=[x(1) x(2)];
M=[A;P;B];
n=0:0.01:1;
d=zeros();
for i=1:length(M)-1
    for j=1:length(n)
        point=M(i,:)+n(j)*(M(i+1,:)-M(i,:));
        d(j,i)=norm(point-C1);
    end
end
f=norm(A-P)+norm(P-B);
% f=-f;
end