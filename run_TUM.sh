cd /data/herh/ORB_SLAM3/TUM_VI/

echo "Run Mono-TUM-VI"
for i in $(ls -lt |awk '{print $9}')
do
        /home/herh/ORB_SLAM3/Examples/Monocular/mono_tum_vi  /home/herh/ORB_SLAM3/Vocabulary/ORBvoc.txt /home/herh/ORB_SLAM3/Examples/Monocular/TUM-VI.yaml ./${i}/dso/cam0/images ./${i}/dso/cam0/times.txt ./${i}/dso/Mono/
done

echo "Run MonoInertial-TUM-VI"
for i in $(ls -lt |awk '{print $9}')
do
        /home/herh/ORB_SLAM3/Examples/Monocular-Inertial/mono_tum_vi  /home/herh/ORB_SLAM3/Vocabulary/ORBvoc.txt /home/herh/ORB_SLAM3/Examples/Monocular/TUM-VI.yaml ./${i}/dso/cam0/images ./${i}/dso/cam0/times.txt ./${i}/dso/Mono/
done

echo "Run Stereo-TUM-VI"
for i in $(ls -lt |awk '{print $9}')
do
        /home/herh/ORB_SLAM3/Examples/Stereo/mono_tum_vi  /home/herh/ORB_SLAM3/Vocabulary/ORBvoc.txt /home/herh/ORB_SLAM3/Examples/Monocular/TUM-VI.yaml ./${i}/dso/cam0/images ./${i}/dso/cam0/times.txt ./${i}/dso/Mono/
done

echo "Run StereoInertial-TUM-VI"
for i in $(ls -lt |awk '{print $9}')
do
        /home/herh/ORB_SLAM3/Examples/Stereo-Inertial/mono_tum_vi  /home/herh/ORB_SLAM3/Vocabulary/ORBvoc.txt /home/herh/ORB_SLAM3/Examples/Monocular/TUM-VI.yaml ./${i}/dso/cam0/images ./${i}/dso/cam0/times.txt ./${i}/dso/Mono/
done