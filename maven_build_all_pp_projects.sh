STR_TO_CHECK="BUILD SUCCESS"

function use_it_later() {

  for aFileOrDir in *; do
    if [ -d "$aFileOrDir" ]; then

        cd "$aFileOrDir/$aFileOrDir" 2&>1
        cd_result_error=$?
        if [[ $cd_result_error == 1 ]]; then
          cd "$aFileOrDir"
        fi

        CMD_OUTPUT=$( mvn clean install -U )
        if [[ "$CMD_OUTPUT" == *"$STR_TO_CHECK"* ]]; then
         echo "Good mvn clean install -> ${aFileOrDir}"
        else
         echo "${aFileOrDir} Have Git Updated Files"  
        fi
        cd ../..
    fi
  done  

}

mvn clean install
