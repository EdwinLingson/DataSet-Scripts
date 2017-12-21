pkg load image
dirlist=glob('Data/*_*/');

for i = 1:length(dirlist)
    
srclist=dir(cell2mat(strcat(dirlist(i,1),"/*.bmp")));
X=[];
for j=1:2:length(srclist)
    strcat(dirlist(i,1),srclist(j).name);
    path=cell2mat(ans);
    gray=imread(path);
if size(gray,3)==3
    gray=rgb2gray(gray);
endif
	count=numel(gray);
	X=[X;reshape(gray,[1,count])];
endfor

path = cell2mat(strcat(dirlist(i,1),"data.mat"));

save(path,'X');
	


clear X gray count ans path im fid im;
endfor
clear all;
