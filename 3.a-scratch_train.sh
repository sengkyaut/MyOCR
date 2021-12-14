rm -rf output/*
num_classes=`head -n1 train/mya/mya.unicharset`
OMP_THREAD_LIMIT=16 lstmtraining \
	--model_output output/shnmodel \
    --net_spec "[1,36,0,1 Ct3,3,16 Mp3,3 Lfys48 Lfx96 Lrx96 Lfx256 O1c$num_classes]" \
    --learning_rate 20e-4 \
	--traineddata train/mya/mya.traineddata \
	--train_listfile train/mya.training_files.txt \
	--max_iterations 400
# rm -rf output/*
# OMP_THREAD_LIMIT=16 lstmtraining \
# 	--model_output output/shnmodel \
#     --net_spec '[1,36,0,1 Ct3,3,16 Mp3,3 Lfys48 Lfx96 Lrx96 Lfx256 O1c42]' \
#     --learning_rate 20e-4 \
# 	--traineddata train/mya/mya.traineddata \
# 	--train_listfile train/mya.training_files.txt \
# 	--max_iterations 400
# "[1,40,0,1 Ct5,5,64 Mp3,3 Lfys128 Lbx256 Lbx256 O1c$num_classes]"