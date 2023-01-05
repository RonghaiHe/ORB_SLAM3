echo "evaluate the trajectory"
# cd ./evaluation
# python2 evaluate_ate_scale.py "/home/ronghai/datasets/EuRoc/MH_01_easy/mav0/state_groundtruth_estimate0/data.csv" "/home/ronghai/datasets/EuRoc/MH_01_easy/Mono/f_.txt" --plot "/home/ronghai/datasets/EuRoc/MH_01_easy/Mono/compare" --verbose --need_scale

# python2 evaluate_ate_scale.py "/home/ronghai/datasets/TUM-VI/dataset-calib-cam1_512_16/dso/gt_imu.csv" "/home/ronghai/datasets/TUM-VI/dataset-calib-cam1_512_16/dso/ORB-SLAM3-MonoInertial/f_.txt" --plot "/home/ronghai/datasets/TUM-VI/dataset-calib-cam1_512_16/dso/ORB-SLAM3-MonoInertial/compare" --verbose --need_scale --save_rmse "/home/ronghai/datasets/TUM-VI/dataset-calib-cam1_512_16/dso/ORB-SLAM3-MonoInertial/info.txt"

cd /data/herh/ORB_SLAM3/EuRoC/
camera_list=(Mono, MonoInertial, Stereo, StereoInertial) 

for j in ${camera_list[*]}
do
        for i in $(ls -lt |awk '{print $9}')
        do
                if [ ${i:0:1}=="M" ]
                then
                        python2 /home/herh/ORB_SLAM3/evaluation/evaluate_ate_scale.py "./${i}/mav0/state_groundtruth_estimate0/data.csv" "./${i}/${j}/f_.txt" --plot "./${i}/${j}/compare_f" --verbose --need_scale --save_rmse "./${i}/${j}/info_f.txt"
                        python2 /home/herh/ORB_SLAM3/evaluation/evaluate_ate_scale.py "./${i}/mav0/state_groundtruth_estimate0/data.csv" "./${i}/${j}/kf_.txt" --plot "./${i}/${j}/compare_kf" --verbose --need_scale --save_rmse "./${i}/${j}/info_kf.txt"
                else
                        python2 /home/herh/ORB_SLAM3/evaluation/evaluate_ate_scale.py "./${i}/mav0/state_groundtruth_estimate0/data.csv" "./${i}/${j}/f_.txt" --plot "./${i}/${j}/compare_f" --verbose  --save_rmse "./${i}/${j}/info_f.txt"
                        python2 /home/herh/ORB_SLAM3/evaluation/evaluate_ate_scale.py "./${i}/mav0/state_groundtruth_estimate0/data.csv" "./${i}/${j}/kf_.txt" --plot "./${i}/${j}/compare_kf" --verbose --save_rmse "./${i}/${j}/info_kf.txt"
                fi
        done
done
