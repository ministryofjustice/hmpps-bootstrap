#!/usr/bin/env bash

if [[ ${EUID} == 0 ]]
then
        PS1="\[\033[01;34m\]({{ lookup('env', 'HMPPS_STACK') }}) \\\u@{{ lookup('env', 'HMPPS_ROLE') }}: #"
else
        PS1="\[\033[01;31m\]({{ lookup('env', 'HMPPS_STACK') }}) \\\u@{{ lookup('env', 'HMPPS_ROLE') }}: $"
fi
