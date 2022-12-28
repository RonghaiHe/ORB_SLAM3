echo "evaluate the trajectory"
cd ./evaluation
python2 evaluate_ate_scale.py "/home/ronghai/datasets/EuRoc/MH_01_easy/mav0/state_groundtruth_estimate0/data.csv" "/home/ronghai/datasets/EuRoc/MH_01_easy/Mono/f_.txt" --plot "/home/ronghai/datasets/EuRoc/MH_01_easy/Mono/compare" --verbose --need_scale
