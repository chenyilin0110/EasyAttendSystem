#!/bin/bash
#幾位學生
allStudentCount="67"
#學號
allStudentID="AllStudentID"
#學生證卡號
allStudentCardID="AllStudentCardID"
#清除
cd result
rm noAttendList.txt allNoAttendList.txt total.txt
cd ..

#讀檔以及將缺席名單輸出
attend="0328"
python main.py $allStudentCount $allStudentID $allStudentCardID $attend >> result/noAttendList.txt
python allNoAttendList.py $allStudentCount $allStudentID $allStudentCardID $attend >> result/allNoAttendList.txt

#執行total程式，計算缺席次數
python countEachStudentNoAttendFrequency.py >> result/total.txt
