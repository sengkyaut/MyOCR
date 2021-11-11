rm -rf train/*
tesstrain.sh --fonts_dir fonts \
	--fontlist 'Pyidaungsu' \
	--lang mya \
	--linedata_only \
	--langdata_dir ~/langdata_lstm \
	--tessdata_dir ~/tessdata_best/ \
	--save_box_tiff \
	--output_dir train\
	--maxpages 10 \
	--training_text ./shn_train_break.txt
	# AgencyFB Bold
	# 	--training_text ./shn_newbreak.txt
	# 	--maxpages 10 \
	# --training_text ./mya_train_out.txt
	# --training_text ./shn_train_short.txt
	# --training_text ~/langdata_lstm/shn/shn.training_text.txt
