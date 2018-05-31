"
  Name     : c4_14_time_value_of_money.py
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/25/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

import matplotlib.pyplot as plt
#
fig = plt.figure(facecolor='white')
dd = plt.axes(frameon=False)
dd.set_frame_on(False)
dd.get_xaxis().tick_bottom()
dd.axes.get_yaxis().set_visible(False)
x=range(0,11,2)
x1=range(len(x),0,-1)
y = [0]*len(x);
plt.annotate("$100 received today",xy=(0,0),xytext=(2,0.15),arrowprops=dict(facecolor='black',shrink=2))
plt.annotate("$100 received in 2 years",xy=(2,0),xytext=(3.5,0.10),arrowprops=dict(facecolor='black',shrink=2))
s = [50*2.5**n for n in x1];
plt.title("Time value of money ")
plt.xlabel("Time (number of years)")
plt.scatter(x,y,s=s);
plt.show()