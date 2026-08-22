sudo dpkg-reconfigure dash
for dic in *
do
        if test -d $dic
        then
                echo $dic
                cd $dic

   applywarp -i fiber/LC_dlPFC_left/seeds_to_dlPFC_left_diff.nii.gz -r ${FSLDIR}/data/standard/MNI152_T1_2mm_brain -o reg_MNI_dlPFC_left_probability.nii -w str2standard_warp.nii.gz --premat=diff2str.mat --interp=nn
              cd ..
        fi
done
