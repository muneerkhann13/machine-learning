function theta = NormalEqn( theta, X, y )
%NORMALEQN Summary of this function goes here
%   Detailed explanation goes here

lambda=4;
m=size(X,1);
n=size(X,2);
X=[ones(m,1) X(:,1) X(:,2)];
b=[zeros(1,n+1);zeros(n,1) eye(n)];
a=X'*X+lambda*b;
theta=inv(a)*X'*y;

end

