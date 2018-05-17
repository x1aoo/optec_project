function [g h] = const(x)
    global r1 d
    % g is vector of inequally of constrains 不等式
    % h is vector of equally of constrains 等式
    h = [];
    g(1) = r1-min(d(:,1));
    g(2) = r1-min(d(:,2));
    
end