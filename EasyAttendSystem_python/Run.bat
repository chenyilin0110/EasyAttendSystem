:幾位學生
set allStudentCount=67
:學號
set allStudentID=AllStudentID
:學生證卡號
set allStudentCardID=AllStudentCardID

:清除
cd result
del noAttendList.txt allNoAttendList.txt total.txt
cd ..

:讀檔以及將缺席名單輸出
set attend=0328
python main.py %allStudentCount% %allStudentID% %allStudentCardID% %attend% >> result/noAttendList.txt
python allNoAttendList.py %allStudentCount% %allStudentID% %allStudentCardID% %attend% >> result/allNoAttendList.txt

:計算缺席名單次數
python countEachStudentNoAttendFrequency.py >> result/total.txt

pause
