function [value]=euclidean_classifier(means_vector,variables)
distance1=(means_vector(:,1)-variables)'*(means_vector(:,1)-variables);
distance2=(means_vector(:,2)-variables)'*(means_vector(:,2)-variables);
if distance1<distance2
    value=1;
else
    value=2;
end
end
