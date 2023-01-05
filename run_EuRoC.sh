cd /data/herh/ORB_SLAM3/EuRoC/

echo "Run Mono-EuRoC"
for i in $(ls -lt |awk '{print $9}')
do
        /home/herh/ORB_SLAM3/Examples/Monocular/mono_euroc  /home/herh/ORB_SLAM3/Vocabulary/ORBvoc.txt /home/herh/ORB_SLAM3/Examples/Monocular/EuRoC.yaml ./${i} ./${i}/mav0/cam0/data.csv ./${i}/Mono/
done

echo "Run MonoInertial-EuRoC"
for i in $(ls -lt |awk '{print $9}')
do
        /home/herh/ORB_SLAM3/Examples/Monocular-Inertial/mono_inertial_euroc  /home/herh/ORB_SLAM3/Vocabulary/ORBvoc.txt /home/herh/ORB_SLAM3/Examples/Monocular-Inertial/EuRoC.yaml ./${i} ./${i}/mav0/cam0/data.csv ./${i}/MonoInertial/
done

echo "Run Stereo-EuRoC"
for i in $(ls -lt |awk '{print $9}')
do
        /home/herh/ORB_SLAM3/Examples/Stereo/stereo_euroc  /home/herh/ORB_SLAM3/Vocabulary/ORBvoc.txt /home/herh/ORB_SLAM3/Examples/Stereo/EuRoC.yaml ./${i} ./${i}/mav0/cam0/data.csv ./${i}/Stereo/
done

echo "Run StereoInertial-EuRoC"
for i in $(ls -lt |awk '{print $9}')
do
        /home/herh/ORB_SLAM3/Examples/Stereo-Inertial/stereo_inertial_euroc  /home/herh/ORB_SLAM3/Vocabulary/ORBvoc.txt /home/herh/ORB_SLAM3/Examples/Stereo-Inertial/EuRoC.yaml ./${i} ./${i}/mav0/cam0/data.csv ./${i}/StereoInertial/
done