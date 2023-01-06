cd /data/herh/ORB_SLAM3/EuRoC/

echo "Run Mono-EuRoC"
# for i in $(ls -lt |awk '{print $9}')
# do
#         /home/herh/ORB_SLAM3/Examples/Monocular/mono_euroc  /home/herh/ORB_SLAM3/Vocabulary/ORBvoc.txt /home/herh/ORB_SLAM3/Examples/Monocular/EuRoC.yaml ./${i} ./${i}/mav0/cam0/data.csv ./${i}/Mono/
# done

echo "Run MonoInertial-EuRoC"
for i in $(ls -lt |awk '{print $9}')
do
        /home/herh/ORB_SLAM3/Examples/Monocular-Inertial/mono_inertial_euroc  /home/herh/ORB_SLAM3/Vocabulary/ORBvoc.txt /home/herh/ORB_SLAM3/Examples/Monocular-Inertial/EuRoC.yaml ./${i} ./${i}/mav0/cam0/data.csv ./${i}/MonoInertial/
done

echo "Run Stereo-EuRoC"
for i in $(ls -lt |awk '{print $9}')
do
        if [ ${i}=="V1_02_medium" ]
        then
                /home/herh/ORB_SLAM3/Examples/Stereo/stereo_euroc  /home/herh/ORB_SLAM3/Vocabulary/ORBvoc.txt /home/herh/ORB_SLAM3/Examples/Stereo/EuRoC.yaml ./${i} /home/herh/ORB_SLAM3/Examples/Stereo/EuRoC_TimeStamps/V102.txt ./${i}/Stereo/
        elif [ ${i}=="V2_03_difficult" ]
        then
                /home/herh/ORB_SLAM3/Examples/Stereo/stereo_euroc  /home/herh/ORB_SLAM3/Vocabulary/ORBvoc.txt /home/herh/ORB_SLAM3/Examples/Stereo/EuRoC.yaml ./${i} /home/herh/ORB_SLAM3/Examples/Stereo/EuRoC_TimeStamps/V203.txt ./${i}/Stereo/
        else 
                /home/herh/ORB_SLAM3/Examples/Stereo/stereo_euroc  /home/herh/ORB_SLAM3/Vocabulary/ORBvoc.txt /home/herh/ORB_SLAM3/Examples/Stereo/EuRoC.yaml ./${i} ./${i}/mav0/cam1/data.csv ./${i}/Stereo/
        fi
done

echo "Run StereoInertial-EuRoC"
for i in $(ls -lt |awk '{print $9}')
do
        if [ ${i}=="V1_02_medium" ]
        then
                /home/herh/ORB_SLAM3/Examples/Stereo-Inertial/stereo_inertial_euroc  /home/herh/ORB_SLAM3/Vocabulary/ORBvoc.txt /home/herh/ORB_SLAM3/Examples/Stereo-Inertial/EuRoC.yaml ./${i} /home/herh/ORB_SLAM3/Examples/Stereo-Inertial/EuRoC_TimeStamps/V102.txt ./${i}/StereoInertial/
        elif [ ${i}=="V2_03_difficult" ]
        then
                /home/herh/ORB_SLAM3/Examples/Stereo-Inertial/stereo_inertial_euroc  /home/herh/ORB_SLAM3/Vocabulary/ORBvoc.txt /home/herh/ORB_SLAM3/Examples/Stereo-Inertial/EuRoC.yaml ./${i} /home/herh/ORB_SLAM3/Examples/Stereo-Inertial/EuRoC_TimeStamps/V203.txt ./${i}/StereoInertial/
        else 
                /home/herh/ORB_SLAM3/Examples/Stereo-Inertial/stereo_inertial_euroc  /home/herh/ORB_SLAM3/Vocabulary/ORBvoc.txt /home/herh/ORB_SLAM3/Examples/Stereo-Inertial/EuRoC.yaml ./${i} ./${i}/mav0/cam1/data.csv ./${i}/StereoInertial/
        fi
done
