#!/bin/bash

for dir in /home2/vvsaripalli/backup2/CDS_N-Q/*/
	do
		# shellcheck disable=SC2164
		(cd "$dir")
		if [ -d $dir/N-Q ]
		then
			(
			for file in $dir/N-Q/*
			
			do
				if [ -f $file ]
			then
				
				 # shellcheck disable=SC2046
				 (mv /home2/vvsaripalli/backup2/CDS_N-Q/$(basename $dir)/N-Q/$(basename $file) /home2/vvsaripalli/backup2/CDS_N-Q/$(basename $dir)/N-Q/$(basename $dir)_N-Q_$(basename $file) &&  cp /home2/vvsaripalli/backup2/CDS_N-Q/$(basename $dir)/N-Q/$(basename $dir)_N-Q_$(basename $file) /home2/vvsaripalli/Corpus_N-Q )
fi
			done
			)
fi
done


