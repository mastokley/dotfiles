# django projects
alias work-on-cacr='. ~/.virtualenvs/cacr/bin/activate; cd ~/Projects/CACR; eval $(ssh-agent)'
alias work-on-nord='. ~/.virtualenvs/nord_entities/bin/activate; cd ~/Projects/nord_entities; eval $(ssh-agent)'
alias work-on-trumptweets='. ~/.virtualenvs/trumptweets/bin/activate; cd ~/Projects/trumptweets; eval $(ssh-agent); . ~/Projects/trumptweets/.env'
alias work-on-prospecto='. ~/sternshus/prospecto.us/michael-secret.env; . ~/.virtualenvs/prospecto.us/bin/activate; cd ~/sternshus/prospecto.us'
alias work-on-bulldozer_severe='. ~/.virtualenvs/bulldozer_severe/bin/activate; cd ~/Projects/bulldozer_severe'

# misc
alias dwarf-fortress='nohup /opt/df_linux/./df &'
alias tor-browser='/opt/tor-browser_en-US/Browser/start-tor-browser --detach'
alias rimworld='/opt/Rim\ World/start_RimWorld.sh'

# spark
export PYSPARK_PYTHON=python3.5

# java 7 vs 8 (provisional solution)
export JAVA_8_HOME='/usr/lib/jvm/java-1.8.0-openjdk-amd64/bin'
alias use-java8='export PATH=$JAVA_8_HOME:$PATH'
alias deactivate-java8='export PATH=`echo $PATH | sed -e "s|$JAVA_8_HOME:||"`'

# colors
export COLOR_NC='\e[0m' # No Color
export COLOR_WHITE='\e[1;37m'
export COLOR_BLACK='\e[0;30m'
export COLOR_BLUE='\e[0;34m'
export COLOR_LIGHT_BLUE='\e[1;34m'
export COLOR_GREEN='\e[0;32m'
export COLOR_LIGHT_GREEN='\e[1;32m'
export COLOR_CYAN='\e[0;36m'
export COLOR_LIGHT_CYAN='\e[1;36m'
export COLOR_RED='\e[0;31m'
export COLOR_LIGHT_RED='\e[1;31m'
export COLOR_PURPLE='\e[0;35m'
export COLOR_LIGHT_PURPLE='\e[1;35m'
export COLOR_BROWN='\e[0;33m'
export COLOR_YELLOW='\e[1;33m'
export COLOR_GRAY='\e[0;30m'
export COLOR_LIGHT_GRAY='\e[0;37m'
