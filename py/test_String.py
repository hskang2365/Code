'''
import re

str = 'aaa@gmail.com'

print(re.sub('[a-z]*@', '', str))
'''

llist = ['men', 'mental', 'mail', 'open', 'keyboard']

llist = list(filter(lambda x: x.startswith('m'), llist))

print(llist)