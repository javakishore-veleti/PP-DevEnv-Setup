
# Assuming all Provider Portal codebase is in this root folder ~/provider-portal

# Place this script in the root folder - do not checkout this Maven project into the above ~/provider-portal folder. Instead place only this bash script in the ~/provider-portal folder.

# This script purpose is to check any uncommit files in all of the Provider Portal Git Repos that are "git cloned" into the ~/provider-portal folder

STR_TO_CHECK="Your branch is up to date"

for aFileOrDir in *; do
    if [ -d "$aFileOrDir" ]; then

        cd "$aFileOrDir"
        CMD_OUTPUT=$(git status)
        
        if [[ "$CMD_OUTPUT" == *"$STR_TO_CHECK"* ]]; then
  			  echo "Good -> ${aFileOrDir}"
  		  else
  			  echo "${aFileOrDir} Have Git Updated Files"	
		    fi
          cd ..
    fi
done
