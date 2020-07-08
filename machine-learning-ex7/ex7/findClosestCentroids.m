 function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);
m=size(X);
% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%
%dist=zeros(K,1);
%centroids
%X;
%X(2)
%for i=1:K
%dist(i)=sqrt((centroids(i,1)^2)+(centroids(i,2)^2));
%end;
%dist;
%for i=1:size(X)
%elem=sqrt((X(i,1)^2)+(X(i,2)^2));
%mat=((elem-dist).^2);
%mat;
%min(mat)
%[mini,ind]=min(mat);
%ind
%idx(i)=ind;

%end

for j=1:size(X)
elem=X(j,:);
dist=zeros(K,1);
for i=1:K
sum=0;
for n=1:size(X,2)
sum+=((elem(n)-centroids(i,n))^2);
end
dist(i)=sum;
end
[val,ind]=min(dist);
idx(j,1)=ind;
end


% =============================================================

end

