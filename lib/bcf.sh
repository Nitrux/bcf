def () { for K; do eval "$K () { $K+=( \"\$@\" ); bcf_CURRENT_GROUP=$K; }"; done; }
, () { "$bcf_CURRENT_GROUP" "$@"; }
