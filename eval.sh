# lstmeval --model output/shnmodel_checkpoint \
# 	--traineddata train/mya/mya.traineddata \
# 	--eval_listfile train/mya.training_files.txt
lstmeval --model mya.lstm \
	--traineddata ~/tessdata_best/mya.traineddata \
	--eval_listfile train/mya.training_files.txt
# lstmeval --model mya.lstm \
# 	--traineddata train/mya/mya.traineddata \
# 	--eval_listfile train/mya.training_files.txt