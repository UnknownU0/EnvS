import re
import os
import pathlib


def findPipBinaryFile():
    base_dir = ''
    keywords = 'Python*/Scripts/pip*.exe'
    base_path = pathlib.Path(base_dir)
    allPipFiles = list(base_path.glob(keywords))
    print('Find all pip Binary files:')
    for i in allPipFiles: print("  " + str(i))
    print()
    return allPipFiles


def pipRuntimeCorrect(currentFile):
    originalPipFile = open(currentFile, mode="rb")
    originalData = originalPipFile.read()
    originalPipFile.close()
    writeFile = open(currentFile + ".lastBak", mode="wb+")
    writeFile.write(originalData)
    writeFile.close()
    print(str("      Current Last Bak: " + currentFile + ".lastBak"))
    if not os.path.exists(currentFile + ".originalBak"):
        writeFile = open(currentFile + ".originalBak", mode="wb+")
        writeFile.write(originalData)
        writeFile.close()
        print(str("  Current Original Bak: " + currentFile + ".originalBak"))
    else:
        print(str("  Current Original Bak: " + currentFile + ".originalBak (File alerdy exists -> skip)"))
    re_compile = re.compile(b'\x00\x23\x21(.*?)python.exe')
    needToReplaceHex = re_compile.search(originalData).group(1)
    targetHexToReplaced = b''
    for i in range(len(needToReplaceHex)):
        targetHexToReplaced += b'\x00'
    targetHexToReplaced += b'\x23\x21'
    if len(needToReplaceHex) != 0:
        replaced_data = originalData.replace(b'\x23\x21' + needToReplaceHex, targetHexToReplaced)
        writeFile = open(currentFile, mode="wb+")
        writeFile.write(replaced_data)
        writeFile.close()


# By Unknown
foundPipBinaryFile = findPipBinaryFile()
print("pip Runtime Correcting:")
for currentPipFile in foundPipBinaryFile:
    print(" >    Current Pip File: " + str(currentPipFile) + " <")
    pipRuntimeCorrect(str(currentPipFile))
