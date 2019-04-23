#!/bin/bash
# Raspberry Pi Model List
# cf. LICENCE at https://github.com/cpknight/Raspberry-Pi-Model-Lookup/

rPiModels=( ["rBeta"]="B (Beta) Q1 2012" \
            ["r0002"]="B Q1 2012" \
            ["r0003"]="B (ECN0001) Q3 2012" \
            ["r0004"]="B (Sony) Q3 2012" \
            ["r0005"]="B (Qisda) Q4 2012" \
            ["r0006"]="B (Egoman) Q4 2012" \
            ["r0007"]="A (Egoman) Q1 2013" \
            ["r0008"]="A (Sony) Q1 2013" \
            ["r0009"]="A (Qisda) Q1 2013" \
            ["r000d"]="B (Egoman) Q4 2012" \
            ["r000e"]="B (Sony) Q4 2012" \
            ["r000f"]="B (Qisda) Q4 2012" \
            ["r0010"]="B+ (Sony) Q3 2014" \
            ["r0011"]="Compute Module 1 (Sony) Q2 2014" \
            ["r0012"]="A+ (Sony) Q4 2014" \
            ["r0013"]="B+ (Embest) Q1 2015" \
            ["r0014"]="Compute Module 1 (Embest) Q2 2014" \
            ["r0015"]="A+ (Embest)" \
            ["ra01040"]="2 Model B (Sony)" \
            ["ra01041"]="2 Model B (Sony) Q1 2015" \
            ["ra21041"]="2 Model B (Embest) Q1 2015" \
            ["ra22042"]="2 Model B (BCM2837) (Embest) Q3 2016" \
            ["r900021"]="A+ (Sony) Q3 2016" ["r900032"]="B+ (Sony) Q2 2016" \
            ["r900092"]="Zero (Sony) Q4 2015" \
            ["r900093"]="Zero (Sony) Q2 2016" \
            ["r920093"]="Zero (Embest) Q4 2016" \
            ["r9000c1"]="Zero W (Sony) Q1 2017" \
            ["ra02082"]="3 Model B (Sony) Q1 2016" \
            ["ra020a0"]="Compute Module 3  (Sony) Q1 2017" \
            ["ra22082"]="3 Model B (Embest) Q1 2016" \
            ["ra32082"]="3 Model B (Sony Japan) Q4 2016" \
            ["ra020d3"]="3 Model B+ (Sony) Q1 2018" \
            ["r9020e0"]="3 Model A+ (Sony) Q4 2018" )

if [ -e /proc/cpuinfo ]; then
  piModelIndex="$(cat /proc/cpuinfo | awk '/^Revision/ {sub("^1000", "", $3); print $3}' 2> /dev/null)"

  if [ ! -z $piModelIndex ]; then
    rPiModelIndex="r${piModelIndex}"

    if [ ! -z $rPiModelIndex ]; then
      echo "RPi ${rPiModels[${rPiModelIndex}]}"
    fi

  fi

fi
