sudo dpkg-reconfigure dash
for dic in *
do
        if test -d $dic
        then
                echo $dic
                cd $dic

                eddy_correct DTI.nii.gz DTI_eddy.nii.gz 0
                fdt_rotate_bvecs DTI.bvec bvecs DTI_eddy.ecclog
                fslroi DTI.nii.gz b0.nii.gz 0 1
                bet2 b0.nii.gz b0_brain -f 0.2 -m
                mv DTI_eddy.nii.gz data.nii.gz
                mv b0_brain_mask.nii.gz nodif_brain_mask.nii.gz
                mv DTI.bval bvals

                bedpostx_gpu .

                cd ..
         fi
done
