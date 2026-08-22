sudo dpkg-reconfigure dash
for dic in *
do
        if test -d $dic
        then
                echo $dic
                cd $dic

      applywarp -i /home/ubuntu/MDD/mask/dlPFC_L.nii -r b0_brain.nii.gz -o dlPFC_left_diff -w standard2diff_warp.nii.gz --interp=nn
               cd ..
        fi
done
