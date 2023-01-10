### Watson Text to Speech
###
### Input:  
###    $1 - json document with text to be converted
###    $2 - language code (en-US, en-GB)
### Output: audio file (mp3) with spoken text
###

# set TSS parameters
. ./00_TSS_parameters.sh

case "$2" in
        en-US)
            URL="$TSS_URL/v1/synthesize?voice=en-US_MichaelExpressive&customization_id=$TSS_CUSTOM_ID_US"
            ;;
         
        en-GB)
            URL="$TSS_URL/v1/synthesize?voice=en-GB_CharlotteV3Voice&customization_id=$TSS_CUSTOM_ID_GB"
            ;;
                  
        *)
            echo $"Usage: $0 <json file> <en-US|en-GB>"
            exit 1
 
esac

curl -X POST -u "apikey:H6clZ9Z3IAbwTHXtSYpWaqwMXX0UpqKexjiUjVOjsFQa" \
--header "Content-Type: application/json" \
--header "Accept: audio/mp3" \
--data "@$1.json"  \
--output $1.mp3 \
$URL