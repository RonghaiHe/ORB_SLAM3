echo "evaluate the trajectory"
cd ./evaluation
# python2 evaluate_ate_scale.py "/home/ronghai/datasets/EuRoc/MH_01_easy/mav0/state_groundtruth_estimate0/data.csv" "/home/ronghai/datasets/EuRoc/MH_01_easy/Mono/f_.txt" --plot "/home/ronghai/datasets/EuRoc/MH_01_easy/Mono/compare" --verbose --need_scale

python2 evaluate_ate_scale.py "/home/ronghai/datasets/TUM-VI/dataset-calib-cam1_512_16/dso/gt_imu.csv" "/home/ronghai/datasets/TUM-VI/dataset-calib-cam1_512_16/dso/ORB-SLAM3-MonoInertial/f_.txt" --plot "/home/ronghai/datasets/TUM-VI/dataset-calib-cam1_512_16/dso/ORB-SLAM3-MonoInertial/compare" --verbose --need_scale --save_rmse "/home/ronghai/datasets/TUM-VI/dataset-calib-cam1_512_16/dso/ORB-SLAM3-MonoInertial/info.txt"
