clc
path1='F:\pr\°µºÚÆ¹ÅÒÇò\Áº¾¸À¥vsÆ¤Æ¤Ïº-¼ô¼­.mp4';
% path1='D:\ÎÒµÄÎÄµµD\»úĞµ±ÛPPT½²×ùËØ²Ä\»úĞµ±ÛµõÈË.mp4';
v=VideoReader(path1);
vout=VideoWriter('F:\pr\°µºÚÆ¹ÅÒÇò\vout·´É«.mp4','MPEG-4');
% vout.VideoCompressionMethod='H.264';
vout.FrameRate=25;
open(vout);
logname='log';

% n=1;
% while hasFrame(v)
%     frame=readFrame(v);
%     graypicture=rgb2gray(frame);
%     edgepic=edge(graypicture,logname);
%     imwrite(edgepic,strcat('F:\pr\°µºÚÆ¹ÅÒÇò\',logname,'\',num2str(n),'.jpg'));
% %     imshow(edgepic);
%     n=n+1;
% end

% imwrite(imcomplement(imread(strcat('F:\pr\°µºÚÆ¹ÅÒÇò\',logname,'\','1','.jpg'))),strcat('F:\pr\°µºÚÆ¹ÅÒÇò\',logname,'\°×','1','.jpg'))
n=1;
while n<=4649
%     writeVideo(vout,imread(strcat('F:\pr\°µºÚÆ¹ÅÒÇò\',logname,'\',num2str(n),'.jpg')));
    writeVideo(vout,imcomplement(imread(strcat('F:\pr\°µºÚÆ¹ÅÒÇò\',logname,'\',num2str(n),'.jpg'))));
    n=n+1;
end
close(vout);

% MATLAB
% v=VideoReader(path1);
% while hasFrame(v)
% imwrite(edge(rgb2gray(readFrame(v)),'log'),path2);
% end
% writeVideo(vout,imread(path2));
