%% read file
[y,Fs]=audioread('mail.wav')
%% plot frequencies
plot(y)
print('plot1','-dpng')
%% plot 512 spectrogram
s1=spectrogram(y,512)
m1=abs(s1)
p1=m1(1:100,:)
imagesc(p1)
set(gca,'YDir','normal')
print('spec1','-dpng')
%% plot 1024 spectrogram
s2=spectrogram(y,1024)
m2=abs(s2)
p2=m2(1:100,:)
imagesc(p2)
set(gca,'YDir','normal')
print('spec2','-dpng')
%% plot 2048 spectrogram
s3=spectrogram(y,2048)
m3=abs(s3)
p3=m3(1:100,:)
imagesc(p3)
set(gca,'YDir','normal')
print('spec3','-dpng')
