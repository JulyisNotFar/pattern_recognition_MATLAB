% example 1.5.1
function [X,y]=mixt_model(m,S,P,N,sed)
rand('seed',sed);
X1=mvnrnd(m(:,1)',S(:,:,1),N)';
X2=mvnrnd(m(:,2)',S(:,:,2),N)';
for i=1:N
    n(i)=rand;
    if n(i)<P(:,1)
        q(i)=1;
        X(:,i)=X1(:,i);
    else
        q(i)=0;
        X(:,i)=X2(:,i);
    end
end
y=2-q;
end
