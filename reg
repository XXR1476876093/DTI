sudo dpkg-reconfigure dash
for dic in *
do
        if test -d $dic
        then
                echo $dic
                cd $dic

       flirt -in b0_brain.nii.gz -ref T1_cropped_brain.nii.gz -omat diff2str.mat -out diff2str.nii.gz
       convert_xfm -inverse diff2str.mat -omat str2diff.mat
       flirt -ref ${FSLDIR}/data/standard/MNI152_T1_2mm_brain -in T1_cropped_brain.nii.gz -omat str2standard.mat
       fnirt --in=T1_cropped_brain.nii.gz --aff=str2standard.mat --cout=str2standard_warp.nii.gz --config=T1_2_MNI152_2mm
       invwarp -w str2standard_warp.nii.gz -o standard2str_warp -r T1_cropped_brain.nii.gz
       convertwarp -o standard2diff_warp -r b0_brain.nii.gz -w standard2str_warp.nii.gz --postmat=str2diff.mat

               cd ..
        fi
done
