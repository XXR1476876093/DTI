sudo dpkg-reconfigure dash
for dic in *
do
        if test -d $dic
        then
                echo $dic
                cd $dic

       probtrackx2_gpu10.2 -x xfms/LC_left_diff.nii -l --modeuler --onewaycondition --pd -c 0.2 -S 2000 --steplength=0.5 -P 5000 --fibthresh=0.01 --distthresh=0.0 --sampvox=0.0 --avoid=xfms/dlPFC_L_ex_diff.nii --forcedir --opd -s merged -m nodif_brain_mask --dir=fiber/LC_dlPFC_left --waypoints=xfms/dlPFC_left_diff.nii --waycond=AND --targetmasks=xfms/dlPFC_left_diff.nii --os2t
              cd ..
       fi
done
