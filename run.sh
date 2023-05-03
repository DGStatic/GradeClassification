#!/bin/bash

echo
echo Training...
echo ======================
echo

./svc.py SVC -t data/student-train.csv -T data/student-test.csv -m student-svc-model.joblib\
       	-f school sex age address famsize Pstatus Medu Fedu Mjob Fjob reason guardian traveltime studytime failures schoolsup famsup paid activities nursery higher internet romantic famrel freetime goout Dalc Walc health absences\
        -l G3\
        -p 1\
        -s 1\
        -S 1\
        --kernel linear\
        --degree 2\
        --gamma scale\
        --shrinking false\
        --coef0 0.0\
        --tol 0.0001\
        --cache-size 4000



echo
echo Cross Validating...
echo ======================
echo

./svc.py cross-validate -t data/student-train.csv -T data/student-test.csv -m student-svc-model.joblib\
       	-f school sex age address famsize Pstatus Medu Fedu Mjob Fjob reason guardian traveltime studytime failures schoolsup famsup paid activities nursery higher internet romantic famrel freetime goout Dalc Walc health absences\
        -l G3\
        -p 1\
        -s 1\
        -S 1\
        --kernel linear\
        --degree 2\
        --gamma scale\
        --shrinking false\
        --coef0 0.0\
        --tol 0.0001\
        --cache-size 4000


echo
echo Scoring...
echo ======================
echo

./svc.py score -t data/student-train.csv -T data/student-test.csv -m student-svc-model.joblib\
      	-f school sex age address famsize Pstatus Medu Fedu Mjob Fjob reason guardian traveltime studytime failures schoolsup famsup paid activities nursery higher internet romantic famrel freetime goout Dalc Walc health absences\
       -l G3\
       -p 1\
       -s 1\
       -S 1
