function J = costFunctionJ(X, Y, theta)

% X is the "design matrix" containing training examples
% Y is the class labels

m = size(X,1);		% number of training examples
			% in (X,1) 1 --> size of Rows
 
predictions = X*theta;	% predictions of hypothesis on all m examples
sqrErrors = (predictions-Y).^2;	% squared errors

J = 1/(2*m) * sum(sqrErrors);
