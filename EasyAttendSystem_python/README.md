# EasyAttendSystem

> use python
## 使用教學
> 1. 蒐集學生的學生證卡號並按AllStudentID順序排序，將卡號儲存成AllStudentCardID.txt檔
> 2. 使用此系統前須確認是否安裝 numpy 且電腦需可執行python程式
> 3. 點名時接上Arduino後，在linux下請在terminal中打上 `cat /dev/cu.usbXXX >> 存放的目的`，若使用window系統請安裝Arduino 
> 4. 在執行前，linux請在run.sh中新增出席名單，window請在Run.bat中新增
> 5. 若系統是linux，請在terminal下執行 `sh run.sh`，若為window系統，請直接點選 Run.bat
> 6. 結果會輸出在result資料夾中，noAttendList.txt為每次缺席名單，allNoAttendList.txt為總缺席名單，total.txt為計算缺席名單次數
