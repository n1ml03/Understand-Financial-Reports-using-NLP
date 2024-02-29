#!/bin/bash

for dir in /home2/vvsaripalli/backup2/SECReports/unstructured_N-Q/*/
do
        # shellcheck disable=SC2164
        (cd "$dir")
        # for d in $dir/*/
        # do
        #       (cd "$d")
                # shellcheck disable=SC2046
                if [ -d /home2/vvsaripalli/backup2/SECReports/unstructured_N-Q/$(basename $dir)/N-Q ]
                then
                        (
                        for file in $dir/N-Q/*
                        do
                        (gzip -d $file )
                        done
                        )

                fi

done

