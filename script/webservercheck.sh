HEADERS=`curl -Is --connect-timeout ${1-5} http://localhost:${8080-8089}`
CURLSTATUS=$?

# Check for timeout
if [ $CURLSTATUS -eq 28 ]
    then
        echo FALSE
else
    # Check HTTP status code
    HTTPSTATUS=`echo $HEADERS | grep HTTP | cut -d' ' -f2`
    if [ $HTTPSTATUS -le 399 ]
        then
            echo TRUE
    else
        echo FALSE
    fi
fi
