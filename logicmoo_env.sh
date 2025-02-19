#!/bin/bash

function MAINTAINER {
   /bin/true
}

ECHO=MAINTAINER

if [[ "${1}" == "-q" ]] ;then
   ECHO=MAINTAINER
elif [[ "${1}" == "-v" ]] ;then
   ECHO=echo
fi

PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"

munge () {
    local value="${1}"
        if ! echo "$value" | grep -Eq "(^|:)$2($|:)" ; then
           if [ "$3" = "after" ] ; then
              value="$value:$2"
           else
              value="$2:$value"
           fi
        fi
    echo "$value"
}

pathmunge () {
   PATH=$(munge "$PATH" $1 $2)
}

if [[ -f /usr/local/lib/swipl/lib/x86_64-linux/libswipl.so ]]; then
 export LD_PRELOAD=/usr/local/lib/swipl/lib/x86_64-linux/libswipl.so
fi

export -f pathmunge

if [[ -z "${LOGICMOO_WS}" ]]; then
 WS_MAYBE="$(cd "$(dirname "${BASH_SOURCE[0]}")"; pwd -P)"

 if [[ -d "${WS_MAYBE}/packs_sys" ]]; then
  export LOGICMOO_WS=$WS_MAYBE
 else
  export LOGICMOO_WS=/opt/logicmoo_workspace
 fi

 $ECHO "#* Set logicmoo workspace"
 $ECHO "#* LOGICMOO_WS=$LOGICMOO_WS"

fi

if [[ ":$PATH:" == *"$LOGICMOO_WS/bin:"* ]]; then
   $ECHO "#* "
   if [[ -z "$1" ]]; then
      $ECHO "#* GOOD: Logicmoo [$LOGICMOO_WS/bin] found in your PATH"
   fi
else
 # PATH="/root/.cpm/bin:/opt/logicmoo_workspace/packs_xtra/logicmoo_packages/prolog/pakcs/bin:$PATH"
 export PATH="$LOGICMOO_WS/bin:$PATH"
 $ECHO "#* PATH=$PATH"
fi

pathmunge $LOGICMOO_WS/packs_lib/sparqlprog/bin after

if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
  set -o ignoreeof
fi


if command -v nmap &> /dev/null
then
   # Declare an array of string with type
   declare -a StringArray=("10.0.0.78" "172.17.0.1" "127.0.0.1"  )   
   for val in ${StringArray[@]}; do
     if [ -n "$DISPLAY" ] || [ -z "$DISPLAY" ]; then
      NMAP=$(nmap -p 6000  $val)
      if (echo "$NMAP" | grep "Host is up"  && echo "$NMAP" | grep "open") > /dev/null; then       
        export DISPLAY=$val:0.0
      fi
    fi
   done
fi

$ECHO "#* DISPLAY=$DISPLAY"

if [[ -z "${LIBJVM}" ]]; then  
   $ECHO "Finding/Setting LIBJVM..."
   if ! [[ -z "${JAVA_HOME}" ]]; then
    export LIBJVM=$(find $JAVA_HOME -name libjvm.so -printf "%h\n" | head -n 1)
   elif [ -d /usr/lib/jvm ]; then     
    export LIBJVM=$(find /usr/lib/jvm -name libjvm.so -printf "%h\n" | head -n 1)
   fi
fi

$ECHO "#* LIBJVM=$LIBJVM"
if ! [[ -z "${LIBJVM}" ]]; then 
   if ! [ ":$LD_LIBRARY_PATH:" == ":$LIBJVM"* ]; then
      $ECHO "Finding/Setting LD_LIBRARY_PATH..."
       if [[ -z "${LD_LIBRARY_PATH}" ]]; then
          export LD_LIBRARY_PATH=$LIBJVM:/usr/local/lib
       else
          export LD_LIBRARY_PATH=$LIBJVM:$LD_LIBRARY_PATH
       fi
      
       export BOOST_ROOT=$LOGICMOO_WS/taupl/boost_1_67_0
       #export LD_LIBRARY_PATH=/usr/lib
       #export LD_LIBRARY_PATH=/usr/lib/jvm/java-8-openjdk-amd64/jre/lib/amd64/server:.:$BOOST_ROOT/lib:$LD_LIBRARY_PATH   
   fi
fi

$ECHO "#* LD_LIBRARY_PATH=$LD_LIBRARY_PATH"

if [[ ! -v SSH_TTY ]]; then
/bin/true
elif [[ -z "$SSH_TTY" ]]; then
/bin/true
elif [[ -w "$SSH_TTY" ]]; then
/bin/true
else 
 $ECHO "#* MAYBE: need to chmod  o+rw $SSH_TTY"
 chmod o+rw $SSH_TTY
fi

export LIBJVM
export LD_LIBRARY_PATH

(eval `swipl --dump-runtime-variables` ) 2>/dev/null




