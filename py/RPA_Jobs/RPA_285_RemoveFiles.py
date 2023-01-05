import os
 
def RemoveFiles():
    dir = 'C:/RPA_Download'
    for f in os.listdir(dir):
        os.remove(os.path.join(dir, f))