import shutil

def Test():
    source_dir = 'C:/Users/JD1/Downloads/InputFile/US105_21.09.17_SuperBom.xml'
    target_dir = 'C:/eihub/inbound/'
    shutil.move(source_dir, target_dir)



