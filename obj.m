function f = obj(x)
global A B 
f=norm(A-x)+norm(x-B);
% f=-f;
end