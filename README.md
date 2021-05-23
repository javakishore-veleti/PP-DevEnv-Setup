# PP-DevEnv-Setup

Provider Portal Development Environment Setup

This project has multiple scripts and are designed to setup the Provider Portal development environment setup by clong all the required Provider Portal git repos. 
"git_clone_pp_repos.sh" is the script name.

Also, through "maven_build_all_pp_projects.sh" builds all the Provider Portal Maven projects

You also need pom.xml in this Git repo before running the "maven_build_all_pp_projects.sh" script.

All these scripts assumes, rather recommends, to have all the Provider Portal codebase at ~/provider-portal as the root directory.

Every script in this Git repo has some notes please read it for more understanding of the respective scripts.

Here are the steps you need to do basically:

- mkdir -p ~/provider-portal
- cd ~/provider-portal
- wget https://raw.githubusercontent.com/javakishore-veleti/PP-DevEnv-Setup/main/pom.xml
- wget https://raw.githubusercontent.com/javakishore-veleti/PP-DevEnv-Setup/main/maven_build_all_pp_projects.sh
- wget https://raw.githubusercontent.com/javakishore-veleti/PP-DevEnv-Setup/main/git_status_checker.sh
- wget https://raw.githubusercontent.com/javakishore-veleti/PP-DevEnv-Setup/main/git_clone_pp_repos.sh
- chmod 755 *.sh
- ./git_clone_pp_repos.sh
- ./maven_build_all_pp_projects.sh
