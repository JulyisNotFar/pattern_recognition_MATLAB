function [value]=mahalanobis_classifier(means_vector,covariance_matrix,variables)
distance1=(means_vector(:,1)-variables)'/covariance_matrix*(means_vector(:,1)-variables);
distance2=(means_vector(:,2)-variables)'/covariance_matrix*(means_vector(:,2)-variables);
if distance1<distance2
    value=1;
else
    value=2;
end
end
