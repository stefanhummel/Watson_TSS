### Watson Text to Speech
### Customization Model
###
### Output: -
###

# set TSS parameters
. ./00_TSS_parameters.sh

URL="$TSS_URL/v1/customizations"


curl -X GET -u "apikey:$TSS_APIKEY" \
$URL


