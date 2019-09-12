#!/bin/bash
#幾位學生
allStudentCount="69"
#學號
allStudentID="AllStudentID.txt"
#學生證卡號
allStudentCardID="AllStudentCardID.txt"
#清除
rm 缺席.txt noattend.txt

#讀檔以及將缺席名單輸出
attend="1003Attend.txt"
./smartAttendComparison $allStudentCount $allStudentID $allStudentCardID $attend >> 缺席.txt
./noattend $allStudentCount $allStudentID $allStudentCardID $attend >> noattend.txt

attend="1017Attend.txt"
./smartAttendComparison $allStudentCount $allStudentID $allStudentCardID $attend >> 缺席.txt
./noattend $allStudentCount $allStudentID $allStudentCardID $attend >> noattend.txt

attend="1024Attend.txt"
./smartAttendComparison $allStudentCount $allStudentID $allStudentCardID $attend >> 缺席.txt
./noattend $allStudentCount $allStudentID $allStudentCardID $attend >> noattend.txt

attend="1114Attend.txt"
./smartAttendComparison $allStudentCount $allStudentID $allStudentCardID $attend >> 缺席.txt
./noattend $allStudentCount $allStudentID $allStudentCardID $attend >> noattend.txt

attend="1121Attend.txt"
./smartAttendComparison $allStudentCount $allStudentID $allStudentCardID $attend >> 缺席.txt
./noattend $allStudentCount $allStudentID $allStudentCardID $attend >> noattend.txt

attend="1128Attend.txt"
./smartAttendComparison $allStudentCount $allStudentID $allStudentCardID $attend >> 缺席.txt
./noattend $allStudentCount $allStudentID $allStudentCardID $attend >> noattend.txt

#attend="1203Attend.txt"
#./smartAttendComparison $allStudentCount $allStudentID $allStudentCardID $attend >> 缺席.txt
#./noattend $allStudentCount $allStudentID $allStudentCardID $attend >> noattend.txt

attend="1205Attend.txt"
./smartAttendComparison $allStudentCount $allStudentID $allStudentCardID $attend >> 缺席.txt
./noattend $allStudentCount $allStudentID $allStudentCardID $attend >> noattend.txt

attend="1212Attend.txt"
./smartAttendComparison $allStudentCount $allStudentID $allStudentCardID $attend >> 缺席.txt
./noattend $allStudentCount $allStudentID $allStudentCardID $attend >> noattend.txt

attend="1219Attend.txt"
./smartAttendComparison $allStudentCount $allStudentID $allStudentCardID $attend >> 缺席.txt
./noattend $allStudentCount $allStudentID $allStudentCardID $attend >> noattend.txt

attend="1226Attend.txt"
./smartAttendComparison $allStudentCount $allStudentID $allStudentCardID $attend >> 缺席.txt
./noattend $allStudentCount $allStudentID $allStudentCardID $attend >> noattend.txt

#執行total程式，計算缺席次數
./total
