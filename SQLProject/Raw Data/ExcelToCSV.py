import pandas as pd 
import os

# for Top 40 point scorers -----------------------------------------------------

path = os.getcwd()
path += "\\Top 40 Point Scorers"
allFiles = os.listdir(path)

files = []

for f in allFiles:
	if (f[-4:] == 'xlsx'):
		f = "Top 40 Point Scorers\\"+f
		files.append(f)

for f in files:
	xlFile = pd.read_excel (f)
	fileName = f[21:-5]
	path2 = "Top 40 Point Scorers CSV\\"+fileName+".csv"
	xlFile.to_csv (path2, index = None, header=True)

# for Top 40 salaries -----------------------------------------------------

path = os.getcwd()
path += "\\Top 40 Salaries"
allFiles = os.listdir(path)

files = []

for f in allFiles:
	if (f[-4:] == 'xlsx'):
		f = "Top 40 Salaries\\"+f
		files.append(f)

for f in files:
	xlFile = pd.read_excel (f) 
	fileName = f[16:-5]
	path2 = "Top 40 Salaries CSV\\"+fileName+".csv"
	xlFile.to_csv (path2, index = None, header=True)
