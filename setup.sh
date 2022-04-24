#!/bin/sh
RED='\033[0;31m'
GRAY='\033[1;30m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'
applicationName=Trivialize
frontendRepo=git@github.com:smallbatch-apps/trivialise-frontend.git
apiRepo=git@github.com:smallbatch-apps/trivialise-adonis.git

if [ -d "./frontend" ]
then
    echo "${YELLOW}Frontend repo has already been cloned${NC}"
else
    echo "Cloning frontend repo"
    git clone $frontendRepo frontend
    echo -e "${GREEN}Frontend repo cloned${NC}"
fi

if [ -d "./api" ]
then
    echo "${YELLOW}API repo has already been cloned${NC}"
else
    echo "Cloning api repo"
    git clone $apiRepo api
    echo -e "${GREEN}API cloned${NC}"
fi

echo -e "${GREEN}${applicationName}${NC} should now be set up. Run ${GRAY}docker-compose up${NC} to launch application."