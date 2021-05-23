
# Bash script that is tightly coupled with pom.xml file in this Git repo project.

# Run this script and the function in this file is dummy for now and not used

# Purpose of this script is to invoke the pom.xml in this Git repo

# What you need to do is, copy this script and pom.xml in this Git repo into a folder where the Provider Portal Git repos are clone. Generally this folder is located at ~/provider-portal folder.

# Assuming all the Provide Portal Git Repos are cloned inside the the ~/provider-portal folder, you need to run this script (assuming pom.xml in this Git repo is also placed at ~/provider-portal)

# The pom.xml is designed to build all the Provider Portal Maven projects through this command.

# How to run
# cd ~/provider-portal
# ./maven_build_all_pp_projects.sh

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
