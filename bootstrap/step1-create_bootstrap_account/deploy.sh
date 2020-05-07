#!/bin/bash

pwd
source ./check_session.sh
cd ./step1-create_bootstrap_account/

echo ""
echo "Login with a Global Account user:"
echo ""

check_session


echo "Starting ${tf_command} in"
echo " - tenant:          ${tenant}"
echo " - subscription ID: ${subscriptionId}"
echo ""

terraform init
terraform $@
