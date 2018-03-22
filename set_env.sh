#!/bin/bash
set +x
umask 137
###########################################################################################
#
# Program: set_env.sh
# Date:    2/9/2018
# Author:  J.Turck
# User:
#
# Purpose: Set environment for DEV,STG, or PRD
#
###########################################################################################A

run_env=$1

echo ${run_env} 

if [[ ${run_env} == DEV ]]; then
  echo "hello"
   cp init_dev.cfg init.cfg
   exit 0
fi

if [[ ${run_env} == STG ]]; then
   cp init_stg.cfg init.cfg
   exit 0
fi

