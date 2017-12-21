dirlist=glob('Data/*_face');
for i=1:length(dirlist)
 path=cell2mat(strcat(dirlist(i,1),"/data.mat"));
 load(path);
 X=[X,i*ones(length(X(:,1)),1)];
 save(path,'X');
 clear X path;
endfor

dirlist=glob('Data/*_ear');
for i=1:length(dirlist)
 path=cell2mat(strcat(dirlist(i,1),"/data.mat"));
 load(path);
 X=[X,i*ones(length(X(:,1)),1)];
 save(path,'X');
 clear X path;
endfor
clear all;

