#!/bin/sh
GRAY='\033[1;30m'
GREEN='\033[0;32m'
CYAN='\033[0;36m'
NC='\033[0m'
applicationName=Trivialize
frontendRepo=git@github.com:smallbatch-apps/trivialise-frontend.git
apiRepo=git@github.com:smallbatch-apps/trivialise-adonis.git

if [ -d "./frontend" ]
then
    echo -e "${YELLOW}Frontend repo has already been cloned${NC}"
else
    echo -e "${CYAN}Cloning frontend repo${NC}"
    git clone $frontendRepo frontend
    echo -e "${GREEN}Frontend repo cloned${NC}"
fi

if [ -d "./api" ]
then
    echo -e "${YELLOW}API repo has already been cloned${NC}"
else
    echo -e "${CYAN}Cloning api repo${NC}"
    git clone $apiRepo api
    echo -e "${GREEN}API cloned${NC}"
fi

echo -e "${GREEN}${applicationName}${NC} should now be set up. Run ${GRAY}docker-compose up${NC} to launch application."