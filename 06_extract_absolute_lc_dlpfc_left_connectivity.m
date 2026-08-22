bedpostX='E:\bedpostX';
DataDir=dir(fullfile(bedpostX,'*'));
A=zeros(length(DataDir),1);
for i=1:length(DataDir)
    if(isequal(DataDir(i).name,'.')||...
            isequal(DataDir(i).name,'..')||...
            ~DataDir(i).isdir)
        continue;
    end
    disp(DataDir(i).name);
   %dlPFC
   filepath1=fullfile(bedpostX,DataDir(i).name,'\reg_MNI\reg_MNI_dlPFC_left_probability.nii.gz');
   nii1=load_untouch_nii(filepath1);
   img1=nii1.img;
   s1=sum(sum(sum(img1)));
   A(i,1)=s1;
end
xlswrite('output',A);
