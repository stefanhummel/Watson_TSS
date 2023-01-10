### Watson Text to Speech
### Customization Model
###
### Output: -
### customization_id US: ""
### customization_id GB: ""
###

# set TSS parameters
. ./00_TSS_parameters.sh

URL="$TSS_URL/v1/customizations"

# create custom model for US 
echo "Customization model US"
curl -X POST -u "apikey:$TSS_APIKEY" \
--header "Content-Type: application/json" \
--data "{\"name\":\"Custom_Model_US\", \"language\":\"en-US\", \"description\":\"Customization model US\"}"  \
$URL

# create custom model for GB
echo"."
echo "Customization model GB"
curl -X POST -u "apikey:$TSS_APIKEY" \
--header "Content-Type: application/json" \
--data "{\"name\":\"Custom_Model_GB\", \"language\":\"en-GB\", \"description\":\"Customization model GB\"}"  \
$URL
