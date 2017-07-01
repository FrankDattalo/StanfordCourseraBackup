function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%


m2 = m * 2;

dif = X * theta - y;

thetaTemp = theta;
thetaTemp(1) = 0;

unregCost = dif' * dif / m2;
regFactorCost = lambda / m2 * thetaTemp' * thetaTemp;

J = unregCost + regFactorCost; 

unregGrad = X' * dif / m;

regFactorGrad = thetaTemp * lambda / m;

grad = unregGrad + regFactorGrad;





% =========================================================================

grad = grad(:);

end
