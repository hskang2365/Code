
from msilib.schema import Directory
from operator import contains
from pyclbr import Function
import pandas as pd

data = {
    'year':[2016, 2017, 2018],
    'GDP rate': [2.8, 3.1, 3.0],
    'GDP': ['1.637M', '1.73M', '1.83M' ]
}

df = pd.DataFrame(data)#, index=data['GDP rate']) # index추가할 수 있음
#print(df.where(df['year'] != 2016))

print('=========================')
print(df.query("year == 2017"))

def test(intNum):
    a = 1
    b = 2
    iResult = a + b * intNum
    return iResult

getNum = test(20)

#print(getNum)