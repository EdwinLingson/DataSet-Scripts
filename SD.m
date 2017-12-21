mkdir DataSet;
dirlist=glob('Data/*_ear');
temp=[];
for i=1:length(dirlist)
 path=cell2mat(strcat(dirlist(i,1),"/data.mat"));
 load(path);
 temp=[temp;X];
 clear X path;
endfor
X=temp;
save(strcat("DataSet/","Xear.mat"), 'X');
clear X;
temp=[];

dirlist=glob('Data/*_face');
for i=1:length(dirlist)
 path=cell2mat(strcat(dirlist(i,1),"/data.mat"));
 load(path);
 temp=[temp;X];
 clear X path;
endfor

X=temp;
save(strcat("DataSet/","Xface.mat"), 'X');
clear X;
clear all;
