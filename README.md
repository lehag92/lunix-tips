# lunix-tips


## Memory usage monitoring: ##
Add this line crontab

    * * * * * /bin/sh /path_to_repo/bashScripts/memusage.sh > /dev/null 2>&1

## Kill process by name ##
Add this line to the end of your  ~/.bashrc file

    alias killsome='. /path_to_repo/bashScripts/killsmbody.sh'

After added run this in terminal (in every open terminal or just logout/login)

    source ~/.bashrc

## Squash commits on branch##
Same as previous just another alias

    alias squashcommits='. /path_to_repo/bashScripts/squashCommits.sh'

