% example 1.4.2
function [means,covariance]=Gaussian_ML_estimate(training_data)
N=size(training_data,2);
means=sum(training_data,2)/N;
covariance=(training_data-means*ones(1,N))*(training_data-means*ones(1,N)).'/(N-1);
end
