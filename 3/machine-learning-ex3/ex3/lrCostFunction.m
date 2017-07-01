function [J, grad] = lrCostFunction(theta, X, y, lambda)
%LRCOSTFUNCTION Compute cost and gradient for logistic regression with 
%regularization
%   J = LRCOSTFUNCTION(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

m = length(y); 
sm = sigmoid(X * theta);

% Unregularized cost and gradient
J = sum(-y .* log(sm) - (1 - y) .* log(1 - sm)) / m;
grad = (((sm - y)' * X) ./ m)';

% Temporary variables
temp = theta;
temp(1) = 0;
lamM = lambda / m;

% Regularized cost and gradient
J += lamM / 2 * (temp' * temp);
grad += lamM * temp;

end
