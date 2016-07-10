#!/bin/sh                                                                                                                           
                                                                                                                                    
if [ ${USER} != "${FRAMEWORK_USER}" ];then                                                                                                  
    echo "user is not ${FRAMEWORK_USER}"                                                                                                    
    exit 1                                                                                                                          
fi                                                                                                                                  
                                                                                                                                    
TAG="xxxx_deploy.sh"                                                                                                                
CRONTAB_CMD="0 * * * * . /etc/profile;cd UUUUU.../framework_deploy_tool;/bin/sh ${TAG} >/dev/null 2>&1"       
(crontab -l 2>/dev/null | grep -Fv $TAG; echo "$CRONTAB_CMD") | crontab -                                                           
COUNT=`crontab -l | grep $TAG | grep -v "grep"|wc -l`                                                                               
if [ $COUNT -lt 1 ]; then                                                                                                           
    echo "fail to add crontab $TAG"                                                                                                 
    exit 1                                                                                                                          
fi
