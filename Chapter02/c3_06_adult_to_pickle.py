"""
  Name     : c3_06_adult_to_pickle.py
  Book     : Hands-on Data Science with Anaconda)
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/15/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"""

import pandas as pd
path="http://archive.ics.uci.edu/ml/machine-learning-databases/"
dataSet="adult/adult.data"
inFile=path+dataSet
x=pd.read_csv(inFile,header=None)
adult=pd.DataFrame(x,index=None)
adult= adult.rename(columns={0:'age',1: 'workclass',
2:'fnlwgt',3:'education',4:'education-num',
5:'marital-status',6:'occupation',7:'relationship',
8:'race',9:'sex',10:'capital-gain',11:'capital-loss',
12:'hours-per-week',13:'native-country',14:'class'})
adult.to_pickle("c:/temp/adult.pkl")





adult=pd.DataFrame(x,index=None,columns=[
'age',
'workclass',
'fnlwgt',
'education',
'education-num',
'marital-status',
'occupation',
'relationship',
'race',
'sex',
'capital-gain',
'capital-loss',
'hours-per-week',
'native-country',
'class'
])

adult=pd.DataFrame(x)
                   

import pandas as pd
path="http://archive.ics.uci.edu/ml/machine-learning-databases/"
dataSet="adult/adult.data"
inFile=path+dataSet
x=pd.read_csv(inFile,header=None)
adult2=pd.DataFrame(x,index=None,columns=['age'])



adult=pd.DataFrame(x,index=None,columns=['age','workclass','fnlwgt','education',
'education-num','marital-status','occupation','relationship','race','sex','capital-gain',
'capital-loss','hours-per-week','native-country','class'])          





                   """
# http://archive.ics.uci.edu/ml/machine-learning-databases/adult/adult.data

age: continuous.
workclass: Private, Self-emp-not-inc, Self-emp-inc, Federal-gov, Local-gov, State-gov, Without-pay, Never-worked.
fnlwgt: continuous.
education: Bachelors, Some-college, 11th, HS-grad, Prof-school, Assoc-acdm, Assoc-voc, 9th, 7th-8th, 12th, Masters, 1st-4th, 10th, Doctorate, 5th-6th, Preschool.
education-num: continuous.
marital-status: Married-civ-spouse, Divorced, Never-married, Separated, Widowed, Married-spouse-absent, Married-AF-spouse.
occupation: Tech-support, Craft-repair, Other-service, Sales, Exec-managerial, Prof-specialty, Handlers-cleaners, Machine-op-inspct, Adm-clerical, Farming-fishing, Transport-moving, Priv-house-serv, Protective-serv, Armed-Forces.
relationship: Wife, Own-child, Husband, Not-in-family, Other-relative, Unmarried.
race: White, Asian-Pac-Islander, Amer-Indian-Eskimo, Other, Black.
sex: Female, Male.
capital-gain: continuous.
capital-loss: continuous.
hours-per-week: continuous.
native-country: United-States, Cambodia, England, Puerto-Rico, Canada, Germany, Outlying-US(Guam-USVI-etc), India, Japan, Greece, South, China, Cuba, Iran, Honduras, Philippines, Italy, Poland, Jamaica, Vietnam, Mexico, Portugal, Ireland, France, Dominican-Republic, Laos, Ecuador, Taiwan, Haiti, Columbia, Hungary, Guatemala, Nicaragua, Scotland, Thailand, Yugoslavia, El-Salvador, Trinadad&Tobago, Peru, Hong, Holand-Netherlands.
class: >50K, <=50K


"""




