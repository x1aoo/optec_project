function [g h] = const(x)
    global r1 C1 A B
    % g is vector of inequally of constrains 不等式
    % h is vector of equally of constrains 等式
    
    M=[A;x;B];
    n=0:0.01:1;
    d=zeros();
    for i=1:length(M)-1
        for j=1:length(n)
            point=M(i,:)+n(j)*(M(i+1,:)-M(i,:));
            d(j,i)=norm(point-C1);
        end
    end
    h = [];
    g(1) = r1-min(d(:,1));
    g(2) = r1-min(d(:,2));
    
end