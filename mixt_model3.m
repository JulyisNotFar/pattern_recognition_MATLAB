% This function can be used in 3-class generation
function [X,y]=mixt_model3(m,S,P,N,sed)
rand('seed',sed);
X1=mvnrnd(m(:,1)',S(:,:,1),N)';
X2=mvnrnd(m(:,2)',S(:,:,2),N)';
X3=mvnrnd(m(:,3)',S(:,:,3),N)';
for i=1:N
    n(i)=rand;
    if n(i)<P(:,1)
        y(i)=1;
        X(:,i)=X1(:,i);
    else if P(:,1)+P(:,2)<n(i)<P(:,1)+P(:,2)+P(:,3)
        y(i)=3;
        X(:,i)=X3(:,i);
        else 
            y(i)=2;
            X(:,i)=X2(:,i);
        end
    end
end
end
