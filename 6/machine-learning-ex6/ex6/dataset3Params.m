function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%

C_vals = [.01 .03 .1 .3 1 3 10 30];
s_vals = [.01 .03 .1 .3 1 3 10 30];
smallest_error = Inf;

% for C_index = 1:length(C_vals)
%     for s_index = 1:length(s_vals)
%         C_val = C_vals(C_index);
%         s_val = s_vals(s_index);

%         model = svmTrain(X, y, C_val, @(lx, ly) gaussianKernel(lx, ly, s_val));
%         preds = svmPredict(model, Xval);

%         err = mean(double(preds ~= yval));

%         if err < smallest_error

%             smallest_error = err;
%             C = C_val;
%             sigma = s_val;
%         end

%     end
% end

C = 1;
sigma = .1;



% =========================================================================

end
