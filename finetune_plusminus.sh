rm -rf output/*
OMP_THREAD_LIMIT=16 lstmtraining \
	--continue_from mya.lstm \
	--model_output output/shnmodel \
	--traineddata train/mya/mya.traineddata \
	--train_listfile train/mya.training_files.txt \
	--old_traineddata ~/tessdata_best/mya.traineddata \
	--max_iterations 1200\
	--debug_interval 0
	# --old_traineddata ~/tessdata_best/mya/mya.traineddata \
# mya.lstm
# lstmtraining --model_output /path/to/output [--max_image_MB 6000] \
#   --continue_from /path/to/existing/model \
#   --traineddata /path/to/traineddata/with/new/unicharset \
#   --old_traineddata /path/to/existing/traineddata \
#   [--perfect_sample_delay 0] [--debug_interval 0] \
#   [--max_iterations 0] [--target_error_rate 0.01] \
#   --train_listfile /path/to/list/of/filenames.txt