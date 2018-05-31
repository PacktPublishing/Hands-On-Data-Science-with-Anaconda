"
  Name     : c10_12_datarobot_not_working.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 4/24/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

library(datarobot)

"
Did not connect to DataRobot on package startup. Use `ConnectToDataRobot`.
To connect by default on startup, you can put a config file at: C:\Users\yany\Documents/.config/datarobot/drconfig.yaml


https://cran.r-project.org/web/packages/datarobot/index.html

loc<- "YOUR-ENDPOINT-HERE"
myToken<-"YOUR-API_TOKEN-HERE"
onnectToDataRobot(endpoint=loc,token=myToken)

ConnectToDataRobot(endpoint = "YOUR-ENDPOINT-HERE", token = "YOUR-API_TOKEN-HERE")

https://app.datarobot.com/api/v2

loc1<- "https://app.datarobot.com/api/v2"
loc2<-"C:/Users/yany/.config/datarobot/drconfig.yaml"
ConnectToDataRobot(endpoint =loc1, token = loc2)


https://cran.r-project.org/web/packages/datarobot/vignettes/IntroductionToDataRobot.html

"







