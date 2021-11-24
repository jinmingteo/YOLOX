source venv/bin/activate 

format="video"
model="yolox-s"
model_path="yolox_s.pth"
conf="0.5"
nms="0.45"
tsize="640"
device="gpu"
classes="person"

argparse="video -n $model -c $model_path --conf $conf --nms $nms --tsize $tsize --save_result --device $device"

if [ -n "$classes" ]
then
      argparse+=" --show_classes "$classes
fi

for i in *.mp4
do 
	python tools/demo.py $argparse --path "$i"
done
