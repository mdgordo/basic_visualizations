%% Generate random points on sphere and find distances b/t them for k=1
X1=randn(1000,1)
S=sqrt(X1.^2)
X=X1./S
D=pdist(X)

%% Plot histograms

histogram(D,25,'Normalization','probability')
xlabel('Distance')
ylabel('Probability')
title('Distance between two randomly selected points on a sphere in R^1')
print('eqwidth_1','-dpng')
%% 
P=prctile(D,[4:4:96])
histogram(D,'BinEdges',P,'Normalization','probability')
xlabel('Distance')
ylabel('Probability')
title('Distance between two randomly selected points on a sphere in R^1')
print('eqpoints_1','-dpng')

%% for k=2
X1=randn(1000,1)
X2=randn(1000,1)
S=sqrt(X1.^2+X2.^2)
X=[X1./S X2./S]
D=pdist(X)

%% Plot histograms

histogram(D,25,'Normalization','probability')
xlabel('Distance')
ylabel('Probability')
title('Distance between two randomly selected points on a sphere in R^2')
print('eqwidth_2','-dpng')
%% 
P=prctile(D,[4:4:96])
histogram(D,'BinEdges',P,'Normalization','probability')
xlabel('Distance')
ylabel('Probability')
title('Distance between two randomly selected points on a sphere in R^2')
print('eqpoints_2','-dpng')


%% for k=3
X1=randn(1000)
X2=randn(1000)
X3=randn(1000)
S=sqrt(X1.^2+X2.^2+X3.^2)
X=[X1./S X2./S X3./S]
D=pdist(X)

%% Plot histograms

histogram(D,25,'Normalization','probability')
xlabel('Distance')
ylabel('Probability')
title('Distance between two randomly selected points on a sphere in R^3')
print('eqwidth_3','-dpng')
%% 
P=prctile(D,[4:4:96])
histogram(D,'BinEdges',P,'Normalization','probability')
xlabel('Distance')
ylabel('Probability')
title('Distance between two randomly selected points on a sphere in R^3')
print('eqpoints_3','-dpng')

