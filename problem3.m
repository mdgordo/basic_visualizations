%% read file
[y,Fs]=audioread('/Users/mdgordo/Documents/Data Mining/gordonmg_assignment1/mail.wav')
%% plot frequencies
plot(y)
print('/Users/mdgordo/Documents/Data Mining/gordonmg_assignment1/plot1','-dpng')
%% plot 512 spectrogram
s1=spectrogram(y,512)
m1=abs(s1)
p1=m1(1:100,:)
imagesc(p1)
set(gca,'YDir','normal')
print('/Users/mdgordo/Documents/Data Mining/gordonmg_assignment1/spec1','-dpng')
%% plot 1024 spectrogram
s2=spectrogram(y,1024)
m2=abs(s2)
p2=m2(1:100,:)
imagesc(p2)
set(gca,'YDir','normal')
print('/Users/mdgordo/Documents/Data Mining/gordonmg_assignment1/spec2','-dpng')
%% plot 2048 spectrogram
s3=spectrogram(y,2048)
m3=abs(s3)
p3=m3(1:100,:)
imagesc(p3)
set(gca,'YDir','normal')
print('/Users/mdgordo/Documents/Data Mining/gordonmg_assignment1/spec3','-dpng')
