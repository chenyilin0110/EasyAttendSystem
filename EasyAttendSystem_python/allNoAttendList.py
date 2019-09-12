import numpy as np
import sys
import operator

allStudentCount = sys.argv[1]
varAllStudentID = sys.argv[2]
varAllStudentCardID = sys.argv[3]
attendDate = sys.argv[4]

# load StudentID, StudentCardID, attend
allStudentID = np.loadtxt(varAllStudentID + '.txt', dtype=np.str, delimiter='\n')
allStudentCardID = np.loadtxt(varAllStudentCardID + '.txt', dtype=np.str, delimiter='\n')
attend = np.loadtxt(attendDate + '.txt', dtype=np.str, delimiter='\n')

# save all data into allStudent list
allStudent = np.zeros([int(allStudentCount),3])
allStudent = []
count = 0
for i in range(int(allStudentCount)):
    allStudent.append([])
    for j in range(3):
        if j == 0:
            allStudent[i].append(allStudentID[i])
        elif j ==1:
            allStudent[i].append(allStudentCardID[i])
        else:
            allStudent[i].append(0)
for i in range(len(attend)):
    flag = 0
    for j in range(len(allStudent)):
        if operator.eq(attend[i],allStudent[j][1]): # compare student card id
            allStudent[j][2] += 1
            flag = 1
    # if flag == 0:
    #     print("no this card id: ", attend[i])
    #     count += 1

count = int(allStudentCount) - (len(attend) - count)
# print("Have " + str(count) + " students absence:")
# print("Absencetee ID:")

for i in range(len(allStudent)):
    temp = 0
    if operator.eq(temp,allStudent[i][2]):
        print(allStudent[i][0])
