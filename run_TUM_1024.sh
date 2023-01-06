cd /data/herh/ORB_SLAM3/TUM_VI_1024/

echo "Run Mono-TUM-VI"
for i in $(ls -lt |awk '{print $9}')
do
        if [ ${i:8:3}=="out" ]
        then
                /home/herh/ORB_SLAM3/Examples/Monocular/mono_tum_vi  /home/herh/ORB_SLAM3/Vocabulary/ORBvoc.txt /home/herh/ORB_SLAM3/Examples/Stereo-Inertial/TUM-VI_far_1024.yaml ./${i}/dso/cam0/images ./${i}/dso/cam1/times.txt ./${i}/dso/Mono/
        else
                /home/herh/ORB_SLAM3/Examples/Monocular/mono_tum_vi  /home/herh/ORB_SLAM3/Vocabulary/ORBvoc.txt /home/herh/ORB_SLAM3/Examples/Stereo-Inertial/TUM-VI_1024.yaml ./${i}/dso/cam0/images ./${i}/dso/cam1/times.txt ./${i}/dso/Mono/
        fi
done

echo "Run MonoInertial-TUM-VI"
for i in $(ls -lt |awk '{print $9}')
do
        if [ ${i:8:3}=="out" ]
        then
                /home/herh/ORB_SLAM3/Examples/Monocular-Inertial/mono_inertial_tum_vi  /home/herh/ORB_SLAM3/Vocabulary/ORBvoc.txt /home/herh/ORB_SLAM3/Examples/Stereo-Inertial/TUM-VI_far_1024.yaml ./${i}/dso/cam0/images ./${i}/dso/cam1/times.txt ./${i}/dso/imu.txt ./${i}/dso/MonoInertial/
        else
                /home/herh/ORB_SLAM3/Examples/Monocular-Inertial/mono_inertial_tum_vi  /home/herh/ORB_SLAM3/Vocabulary/ORBvoc.txt /home/herh/ORB_SLAM3/Examples/Stereo-Inertial/TUM-VI_1024.yaml ./${i}/dso/cam0/images ./${i}/dso/cam1/times.txt ./${i}/dso/imu.txt ./${i}/dso/MonoInertial/
        fi
done

echo "Run Stereo-TUM-VI"
for i in $(ls -lt |awk '{print $9}')
do
        if [ ${i:8:3}=="out" ]
        then
                /home/herh/ORB_SLAM3/Examples/Stereo/stereo_tum_vi  /home/herh/ORB_SLAM3/Vocabulary/ORBvoc.txt /home/herh/ORB_SLAM3/Examples/Stereo-Inertial/TUM-VI_far_1024.yaml ./${i}/dso/cam0/images ./${i}/dso/cam1/images ./${i}/dso/cam1/times.txt ./${i}/dso/Stereo/
        else
                /home/herh/ORB_SLAM3/Examples/Stereo/stereo_tum_vi  /home/herh/ORB_SLAM3/Vocabulary/ORBvoc.txt /home/herh/ORB_SLAM3/Examples/Stereo-Inertial/TUM-VI_1024.yaml ./${i}/dso/cam0/images ./${i}/dso/cam1/images ./${i}/dso/cam1/times.txt ./${i}/dso/Stereo/
        fi
done

echo "Run StereoInertial-TUM-VI"
for i in $(ls -lt |awk '{print $9}')
do
        if [ ${i:8:3}=="out" ]
        then
                /home/herh/ORB_SLAM3/Examples/Stereo-Inertial/stereo_inertial_tum_vi  /home/herh/ORB_SLAM3/Vocabulary/ORBvoc.txt /home/herh/ORB_SLAM3/Examples/Stereo-Inertial/TUM-VI_far_1024.yaml ./${i}/dso/cam0/images ./${i}/dso/cam1/images ./${i}/dso/cam1/times.txt ./${i}/dso/imu.txt ./${i}/dso/StereoInertial/
        else
                /home/herh/ORB_SLAM3/Examples/Stereo-Inertial/stereo_inertial_tum_vi  /home/herh/ORB_SLAM3/Vocabulary/ORBvoc.txt /home/herh/ORB_SLAM3/Examples/Stereo-Inertial/TUM-VI_1024.yaml ./${i}/dso/cam0/images ./${i}/dso/cam1/images ./${i}/dso/cam1/times.txt ./${i}/dso/imu.txt ./${i}/dso/StereoInertial/
        fi
done
