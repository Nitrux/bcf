#   Build functions that define an array named as the function (i.e.,
#   function 'foo' defines the array 'foo').

def () { for K; do eval "$K () { $K+=( \"\$@\" ); bcf_CURRENT_GROUP=$K; }"; done; }


#   bcf_CURRENT_GROUP tells ',' which array to append content to.

, () { "$bcf_CURRENT_GROUP" "$@"; }