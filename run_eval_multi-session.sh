echo "evaluate the trajectory V2_123"

cd /data/herh/ORB_SLAM3/EuRoC/V1_123/

camera_list=(Mono MonoInertial Stereo StereoInertial) 

#for j in ${camera_list[*]}
#do
#        python2 /home/herh/ORB_SLAM3/evaluation/evaluate_ate_scale.py "../V2_01_easy/mav0/state_groundtruth_estimate0/data.csv ../V2_02_medium/mav0/state_groundtruth_estimate0/data.csv ../V2_03_difficult/mav0/state_groundtruth_estimate0/data.csv" "./${j}/f_.txt" --plot "./${j}/compare_f" --verbose --need_scale --save_rmse "./${j}/info_f.txt"
#        python2 /home/herh/ORB_SLAM3/evaluation/evaluate_ate_scale.py "../V2_01_easy/mav0/state_groundtruth_estimate0/data.csv ../V2_02_medium/mav0/state_groundtruth_estimate0/data.csv ../V2_03_difficult/mav0/state_groundtruth_estimate0/data.csv" "./${j}/kf_.txt" --plot "./${j}/compare_kf" --verbose --need_scale --save_rmse "./${j}/info_kf.txt"
#done

for j in ${camera_list[*]}
do
        python2 /home/herh/ORB_SLAM3/evaluation/evaluate_ate_scale.py "../V1_01_easy/mav0/state_groundtruth_estimate0/data.csv ../V1_02_medium/mav0/state_groundtruth_estimate0/data.csv ../V1_03_difficult/mav0/state_groundtruth_estimate0/data.csv" "./${j}/f_.txt" --plot "./${j}/compare_f" --verbose --need_scale --save_rmse "./${j}/info_f.txt"
        python2 /home/herh/ORB_SLAM3/evaluation/evaluate_ate_scale.py "../V1_01_easy/mav0/state_groundtruth_estimate0/data.csv ../V1_02_medium/mav0/state_groundtruth_estimate0/data.csv ../V1_03_difficult/mav0/state_groundtruth_estimate0/data.csv" "./${j}/kf_.txt" --plot "./${j}/compare_kf" --verbose --need_scale --save_rmse "./${j}/info_kf.txt"
done

cd ../MH_123

for j in ${camera_list[*]}
do
        python2 /home/herh/ORB_SLAM3/evaluation/evaluate_ate_scale.py "../MH_01_easy/mav0/state_groundtruth_estimate0/data.csv ../MH_02_easy/mav0/state_groundtruth_estimate0/data.csv ../MH_03_medium/mav0/state_groundtruth_estimate0/data.csv" "./${j}/f_.txt" --plot "./${j}/compare_f" --verbose --need_scale --save_rmse "./${j}/info_f.txt"
        python2 /home/herh/ORB_SLAM3/evaluation/evaluate_ate_scale.py "../MH_01_easy/mav0/state_groundtruth_estimate0/data.csv ../MH_02_easy/mav0/state_groundtruth_estimate0/data.csv ../MH_03_medium/mav0/state_groundtruth_estimate0/data.csv" "./${j}/kf_.txt" --plot "./${j}/compare_kf" --verbose --need_scale --save_rmse "./${j}/info_kf.txt"
done

cd ../MH_12345

for j in ${camera_list[*]}
do
        python2 /home/herh/ORB_SLAM3/evaluation/evaluate_ate_scale.py "../MH_01_easy/mav0/state_groundtruth_estimate0/data.csv ../MH_02_easy/mav0/state_groundtruth_estimate0/data.csv ../MH_03_medium/mav0/state_groundtruth_estimate0/data.csv ../MH_04_difficult/mav0/state_groundtruth_estimate0/data.csv ../MH_05_difficult/mav0/state_groundtruth_estimate0/data.csv" "./${j}/f_.txt" --plot "./${j}/compare_f" --verbose --need_scale --save_rmse "./${j}/info_f.txt"
        python2 /home/herh/ORB_SLAM3/evaluation/evaluate_ate_scale.py "../MH_01_easy/mav0/state_groundtruth_estimate0/data.csv ../MH_02_easy/mav0/state_groundtruth_estimate0/data.csv ../MH_03_medium/mav0/state_groundtruth_estimate0/data.csv ../MH_04_difficult/mav0/state_groundtruth_estimate0/data.csv ../MH_05_difficult/mav0/state_groundtruth_estimate0/data.csv" "./${j}/kf_.txt" --plot "./${j}/compare_kf" --verbose --need_scale --save_rmse "./${j}/info_kf.txt"
done
