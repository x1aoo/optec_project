function [g h] = const(x)
    global r C A B
    % g is vector of inequally of constrains 不等式
    % h is vector of equally of constrains 等式
    
    M=[A;x;B];
    n=0:0.01:1;
    d=zeros();
    g=zeros();
    mindis=zeros;
    for k = 1:length(C)
        for i=1:length(M)-1
            for j=1:length(n)
                point=M(i,:)+n(j)*(M(i+1,:)-M(i,:));
                d(j,k)=norm(point-C(k,:));
            end
            mindis(i,k) = min(d(:,k));
            g(i+(length(M)-1)*k) = r(k) - mindis(i,k);
        end
    end
    h = [];
%     g(1) = r-min(d(:,1));
%     g(2) = r-min(d(:,2));
    
end