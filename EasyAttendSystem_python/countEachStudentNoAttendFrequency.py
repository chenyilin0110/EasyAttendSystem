import numpy as np
import operator

allNoAttendList = np.loadtxt('result/allNoAttendList.txt', dtype=np.str, delimiter='\n')

allStudent = []
count = len(np.atleast_1d(allNoAttendList))

if count == 1:
    print(allNoAttendList)
else:
    for i in range(len(np.atleast_1d(allNoAttendList))):
        flag = 0
        if len(allStudent) == 0:
            allStudent.append([])
            allStudent[0].append(allNoAttendList[0])
            allStudent[0].append(1)
        else:
            for j in range(len(allStudent)):
                if operator.eq(allNoAttendList[i], allStudent[j][0]):
                    allStudent[j][1] += 1
                    flag = 1
            if flag == 0:
                allStudent.append([])
                allStudent[len(allStudent)-1].append(allNoAttendList[i])
                allStudent[len(allStudent)-1].append(1)

for i in range(len(allStudent)):
    print(allStudent[i][0],allStudent[i][1])