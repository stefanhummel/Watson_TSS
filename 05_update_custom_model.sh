### Watson Text to Speech
### Customization Model
###
### Output: -
###

# set TSS parameters
. ./00_TSS_parameters.sh

### US
URL=$TSS_URL/v1/customizations/$TSS_CUSTOM_ID_US

curl -X POST -u "apikey:$TSS_APIKEY" \
--header "Content-Type: application/json" \
--data "@$TSS_CUSTOM_MODEL_US"  \
$URL

### GB
URL=$TSS_URL/v1/customizations/$TSS_CUSTOM_ID_GB

curl -X POST -u "apikey:$TSS_APIKEY" \
--header "Content-Type: application/json" \
--data "@$TSS_CUSTOM_MODEL_GB"  \
$URL
