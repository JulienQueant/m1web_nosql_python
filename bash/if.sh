echo Enter a number please:
read nb

if [[ -z "${nb//[0-9]}" ]]; then
    echo $nb is a ${#nb}-digit number
else
    echo Not a number\!
fi