echo "evaluate the trajectory V2_123"

cd /data/herh/ORB_SLAM3/EuRoC/V2_123/

camera_list=(Mono MonoInertial Stereo StereoInertial) 

for j in ${camera_list[*]}
do
        python2 /home/herh/ORB_SLAM3/evaluation/evaluate_ate_scale.py "../V2_01_easy/mav0/state_groundtruth_estimate0/data.csv ../V2_02_medium/mav0/state_groundtruth_estimate0/data.csv ../V2_03_difficult/mav0/state_groundtruth_estimate0/data.csv" "./${j}/f_.txt" --plot "./${j}/compare_f" --verbose --need_scale --save_rmse "./${j}/info_f.txt"
        python2 /home/herh/ORB_SLAM3/evaluation/evaluate_ate_scale.py "../V2_01_easy/mav0/state_groundtruth_estimate0/data.csv ../V2_02_medium/mav0/state_groundtruth_estimate0/data.csv ../V2_03_difficult/mav0/state_groundtruth_estimate0/data.csv" "./${j}/kf_.txt" --plot "./${j}/compare_kf" --verbose --need_scale --save_rmse "./${j}/info_kf.txt"
        done
done
