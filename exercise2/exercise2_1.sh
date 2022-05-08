#!/bin/bash

find . -type f -print0 | xargs -0 md5sum | sort | uniq -w32 --all-repeated=separate | while read hash file; do
        [ "${prev_hash}" == "${hash}" ] && rm -v "${file}"
        prev_hash="${hash}";
    done

