#!/bin/bash
# aspberry Pi Model List
# cf. LICENCE at https://github.com/cpknight/aspberry-Pi-Model-Lookup/

rBeta="B (Beta) Q1 2012"
r0002="B (Egoman) Q1 2012"
r0003="B (Egoman) Q3 2012"
r0004="B (Sony UK) Q3 2012"
r0005="B (Qisda) Q4 2012"
r0006="B (Egoman) Q4 2012"
r0007="A (Egoman) Q1 2013"
r0008="A (Sony UK) Q1 2013"
r0009="A (Qisda) Q1 2013"
r000d="B (Egoman) Q4 2012"
r000e="B (Sony UK) Q4 2012"
r000f="B (Egoman) Q4 2012"
r0010="B+ (Sony UK) Q3 2014"
r0011="CM1 (Sony UK) Q2 2014"
r0012="A+ (Sony UK) Q4 2014"
r0013="B+ (Embest) Q1 2015"
r0014="CM1 (Embest) Q2 2014"
r0015="A+ (Embest)"
r900021="A+ (Sony UK) Q3 2016"
r900032="B+ (Sony UK) Q2 2016"
r900092="Zero (Sony UK) Q4 2015"
r900093="Zero (Sony UK) Q2 2016"
r9000c1="Zero W (Sony UK) Q1 2017"
r9020e0="3A+ (Sony UK) Q4 2018"
r920092="Zero (Embest)"
r920093="Zero (Embest) Q4 2016"
r900061="CM (Sony UK)"
ra01040="2B (Sony UK)"
ra01041="2B (Sony UK) Q1 2015"
ra02082="3B (Sony UK) Q1 2016"
ra020a0="CM3 (Sony UK) Q1 2017"
ra020d3="3B+ (Sony UK) Q1 2018"
ra21041="2B (Embest) Q1 2015"
ra22042="2B (Embest) Q3 2016"
ra22082="3B (Embest) Q1 2016"
ra220a0="CM3 (Embest)"
ra32082="3B (Sony Japan) Q4 2016"
ra52082="3B (Stadium)"
ra22083="3B (Embest)"
ra02100="CM3+ (Sony UK)"

if [ -e /proc/cpuinfo ]; then
  piModelIndex=r"$(cat /proc/cpuinfo | awk '/^Revision/ {sub("^1000", "", $3); print $3}' 2> /dev/null)"
  piModel=${!piModelIndex}

  if [ -n "$piModel" ]; then
    echo "RPi $piModel"
  fi

fi
