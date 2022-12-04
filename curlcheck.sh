CODE=$(curl -sSL -o /dev/null -m 100 -w '%{http_code}' http://localhost:82/)
if [[ "$CODE" != 200 ]]; then
    # Server returned 2xx response
    echo "Error while fetching webpage - Test failed"
    echo "$CODE"
    exit 1  
else
    echo "$CODE"
    echo "Script ended successfully - Test passed" 
fi
