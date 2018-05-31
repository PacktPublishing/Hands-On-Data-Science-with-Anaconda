"
  Name     : c4_12_generate_Black_Scholes_formula.py
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/25/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

import matplotlib
import numpy as np
import matplotlib.mathtext as mathtext
import matplotlib.pyplot as plt
matplotlib.rc('image', origin='upper')
parser = mathtext.MathTextParser("Bitmap")
#parser = mathtext.MathTextParser("Black")
#
x1=r'$d_2=\frac{ln(S_0/K)+(r-\sigma^2/2)T}{\sigma\sqrt{T}}=d_1-\sigma\sqrt{T}$'
x2=r'$d_1=\frac{ln(S_0/K)+(r+\sigma^2/2)T}{\sigma\sqrt{T}}$'
x3=r' $c=S_0N(d_1)- Ke^{-rT}N(d_2)$'
rgba1, depth1 = parser.to_rgba(x1, color='blue',fontsize=12, dpi=200)
rgba2, depth2 = parser.to_rgba(x2, color='blue', fontsize=12, dpi=200)
rgba3, depth3 = parser.to_rgba(x3, color='red',fontsize=14, dpi=200)
fig = plt.figure()
fig.figimage(rgba1.astype(float)/255., 100, 100)
fig.figimage(rgba2.astype(float)/255., 100, 200)
fig.figimage(rgba3.astype(float)/255., 100, 300)
plt.show()
