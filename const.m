function [g h] = const(x)
    global r1 d
    % g is vector of inequally of constrains ����ʽ
    % h is vector of equally of constrains ��ʽ
    h = [];
    g(1) = r1-min(d(:,1));
    g(2) = r1-min(d(:,2));
    
end