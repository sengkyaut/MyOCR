#rm -rf output/*
#rm -rf train/old/*
#mkdir -p train/old/
#cp ~/tessdata_best/mya.traineddata train/old/mya.traineddata
OMP_THREAD_LIMIT=16 lstmtraining \
	--continue_from output/shnmodel_checkpoint \
	--model_output output/shnmodel \
	--traineddata train/mya/mya.traineddata \
	--train_listfile train/mya.training_files.txt \
	--max_iterations 3200\
	--debug_interval 0

# Used for fixed charset file retrain text again an again
# training/lstmtraining --model_output /path/to/output [--max_image_MB 6000] \
#   --continue_from /path/to/existing/model \
#   --traineddata /path/to/original/traineddata \
#   [--perfect_sample_delay 0] [--debug_interval 0] \
#   [--max_iterations 0] [--target_error_rate 0.01] \
#   --train_listfile /path/to/list/of/filenames.txt
