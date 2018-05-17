function f = obj(x)
global A B 
M = [A;x;B];
f = 0;
for i=1:length(M)-1
    f = f + norm(M(i,:) - M(i+1,:));
end

% f=norm(A-x)+norm(x-B);
% f=-f;
end