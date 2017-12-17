%% read file into Matrix W, name columns

W=csvread('wine.data.txt')

%% normalize columns

Mins=min(W,[],1)
Maxs=max(W,[],1)
Diff=Maxs-Mins
for i=1:178
    Wn(i,:)=W(i,:)-Mins
end
for i=1:178
    WN(i,:)=Wn(i,:)./Diff
end


%% convert to polar coordinates

theta=[0 pi/6 2*pi/6 3*pi/6 4*pi/6 5*pi/6 pi 7*pi/7 8*pi/6 9*pi/6 10*pi/6 11*pi/6 2*pi]
rho1=WN(1,2:14)
rho2=WN(2,2:14)
%% create graphs

figure
polarplot(theta,rho1)
thetaticklabels({'Alcohol', 'Malic acid', 'Ash', 'Alcalinity of ash', 'Magnesium', 'Total phenols', 'Flavanoids', 'Nonflavanoid phenols', 'Proanthocyanins', 'Color intensity', 'Hue', 'OD280 OD315', 'Proline'})
title('Normalized Attributes of Wine 1','FontSize',20)
print('wine1','-dpng')

figure
polarplot(theta,rho2)
thetaticklabels({'Alcohol', 'Malic acid', 'Ash', 'Alcalinity of ash', 'Magnesium', 'Total phenols', 'Flavanoids', 'Nonflavanoid phenols', 'Proanthocyanins', 'Color intensity', 'Hue', 'OD280 OD315', 'Proline'})
title('Normalized Attributes of Wine 2','FontSize',20)
print('wine2','-dpng')
