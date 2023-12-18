ARG DOCKER_TAG
FROM ${DOCKER_TAG}


ARG ETHERSCAN_API_KEY
ARG PRIVATE_KEY
ARG RPC_URL
RUN rm -r .openzeppelin artifacts cache
RUN yarn hardhat deploy --network goerli
