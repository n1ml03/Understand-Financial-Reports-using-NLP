#!/bin/bash

for dir in /home2/vvsaripalli/backup2/unstructured/*/
do
	# shellcheck disable=SC2164
	(cd "$dir")
	# for d in $dir/*/
	# do
	# 	(cd "$d")
		# shellcheck disable=SC2046
		if [ -d /home2/vvsaripalli/backup2/unstructured/$(basename "$dir")/N-CSR ]
		then
			(
			# shellcheck disable=SC2231
			for file in $dir/N-CSR/*
			do
				if grep -iq "credit default swap" "$file" || grep -iq "cds" "$file"
					then

					# shellcheck disable=SC2086
					if [ -f /home2/vvsaripalli/backup2/CDS/$(basename "$dir")/N-CSR/$(basename $file) ]
					then
						# shellcheck disable=SC2164
						(cd )
					elif [ -d /home2/vvsaripalli/backup2/CDS/$(basename "$dir") ]
						then
						( cp $file /home2/vvsaripalli/backup2/CDS/$(basename $dir)/N-CSR ) 
					else
						(mkdir /home2/vvsaripalli/backup2/CDS/$(basename $dir) && mkdir /home2/vvsaripalli/backup2/CDS/$(basename $dir)/N-CSR && cp $file /home2/vvsaripalli/backup2/CDS/$(basename $dir)/N-CSR ) 
					fi

			else
				if [ -f /home2/vvsaripalli/backup2/NoCDS/$(basename "$dir")/N-CSR/$(basename "$file") ]
				then
					# shellcheck disable=SC2164
					(cd )
				elif [ -d /home2/vvsaripalli/backup2/NoCDS/$(basename "$dir") ]
					then
				# shellcheck disable=SC2086
				( cp $file /home2/vvsaripalli/backup2/NoCDS/$(basename $dir)/N-CSR )
				else
				(mkdir /home2/vvsaripalli/backup2/NoCDS/$(basename "$dir") && mkdir /home2/vvsaripalli/backup2/NoCDS/$(basename $dir)/N-CSR && cp $file /home2/vvsaripalli/backup2/NoCDS/$(basename $dir)/N-CSR )
			fi
		fi
		
		done
		)
		fi
	done

