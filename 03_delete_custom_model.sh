### Watson Text to Speech
### Customization Model
###
### Output: -
### customization_id US: ""
### customization_id UK: ""
###

# set TSS parameters
. ./00_TSS_parameters.sh

echo "delete customization with ID $1"

URL="$TSS_URL/v1/customizations/$1"

# delete custom model for US 
curl -X DELETE -u "apikey:$TSS_APIKEY" \
$URL
