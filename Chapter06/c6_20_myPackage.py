"""
  Name     : c6_20_myPackage.py
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 3/1/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"""

def bs_call(S,X,T,rf,sigma):
    """
       Objective: Black-Schole-Merton option model
       Format   : bs_call(S,X,T,r,sigma)
               S: current stock price
               X: exercise price
               T: maturity date in years
              rf: risk-free rate (continusouly compounded)
           sigma: volatiity of underlying security 
       Example 1:  
         >>>bs_call(40,40,1,0.1,0.2)
         5.3078706338643578
    """    
    from scipy import log,exp,sqrt,stats
    d1=(log(S/X)+(rf+sigma*sigma/2.)*T)/(sigma*sqrt(T))
    d2 = d1-sigma*sqrt(T)
    return S*stats.norm.cdf(d1)-X*exp(-rf*T)*stats.norm.cdf(d2)

def delta_call(S,X,T,rf,sigma):
    """
       Objective: detal based on the Black-Schole-Merton option model
       Format   : delta_call(S,X,T,r,sigma)
               S: current stock price
               X: exercise price
               T: maturity date in years
              rf: risk-free rate (continusouly compounded)
           sigma: volatiity of underlying security 
       Example 1:  
         >>>from p4f import *
         >>> round(delta_call(40,40,1,0.1,0.2),4)
        0.7257

    """    
    from scipy import log,exp,sqrt,stats
    d1=(log(S/X)+(rf+sigma*sigma/2.)*T)/(sigma*sqrt(T))
    return(stats.norm.cdf(d1))
    
def EAR_f(APR,m):
    return (1+APR/m)**m-1
    
    
def durationBond(rate,couponRate,nper,freq=1):
    """Objective : estimte the durtion for a given bond
       rate      : discount rate
       couponRate: coupon rate 
         nper    : number of years 
    
       Example 1: >>> discountRate=0.1
                  >>> couponRate=0.04
                  >>> n=4
                  >>>durationBond(rate,couponRate,n)
                      3.5616941835365492
    
       Example #2>>> durationBond(0.1,0.04,4)
                     3.7465335177625576                   
    """
    import scipy as sp
    d=0
    B=0
    n=0
    for i in sp.arange(nper):
        n=i+1
        B0=sp.pv(rate,n,0,-couponRate)
        d+=n*B0
        B+=B0
    #
    d+=n*sp.pv(rate,n,0,-1)
    B+=sp.pv(rate,n,0,-1)
    d=d/B
    return(d)

def pvValueNperiodModel(r,longTermGrowthRate,dividendNplus1):
    """Objective: estimate stock price based on an n-period model
                         r: discount rate 
         LongTermGrowhRate: long term dividend growth rate
         dividendsNpus1   : a dividend vector n + 1
        
         PV          = d1/(1+R) + d2/(1+R)**2 + .... + dn/(1+R)**n + sellingPrice/(1+R)**n
         sellingPrice= d(n+1)/(r-g)
             where g is long term growth rate
    
    Example #1: >>> r=0.182
                >>> g=0.03
                >>> d=[1.8,2.07,2.277,2.48193,2.68,2.7877]
                >>> pvValueNperiodModel(r,g,d)
                   17.472364312825711
    """
    import scipy as sp
    d=dividendNplus1
    n=len(d)-1
    g=longTermGrowthRate
    pv=sp.npv(r,d[:-1])*(1+r)
    sellingPrice=d[n]/(r-g)
    pv+=sp.pv(r,n,0,-sellingPrice)
    return pv
      
def delta_put(S,X,T,rf,sigma):
    """
       Objective: detal based on the Black-Schole-Merton option model
       Format   : delta_put(S,X,T,r,sigma)
               S: current stock price
               X: exercise price
               T: maturity date in years
              rf: risk-free rate (continusouly compounded)
           sigma: volatiity of underlying security 
       Example 1:  
         

    """    
    from scipy import log,exp,sqrt,stats
    d1=(log(S/X)+(rf+sigma*sigma/2.)*T)/(sigma*sqrt(T))
    return(stats.norm.cdf(d1)-1)

def bs_put(S,X,T,rf,sigma):
    """
       Objective: Black-Schole-Merton option model
       Format   : bs_call(S,X,T,r,sigma)
               S: current stock price
               X: exercise price
               T: maturity date in years
              rf: risk-free rate (continusouly compounded)
           sigma: volatiity of underlying security 
       Example 1: 
       >>> put=bs_put(40,40,0.5,0.05,0.2)
       >>> round(put,2)
       1.77
    """    
    from scipy import log,exp,sqrt,stats
    d1=(log(S/X)+(rf+sigma*sigma/2.)*T)/(sigma*sqrt(T))
    d2 = d1-sigma*sqrt(T)
    return X*exp(-rf*T)*stats.norm.cdf(-d2)-S*stats.norm.cdf(-d1)

def binomial_grid(n):
    import networkx as nx 
    import matplotlib.pyplot as plt 
    G=nx.Graph() 
    for i in range(0,n+1):     
        for j in range(1,i+2):         
            if i<n:             
                G.add_edge((i,j),(i+1,j))
                G.add_edge((i,j),(i+1,j+1)) 
    posG={}    #dictionary with nodes position 
    for node in G.nodes():     
        posG[node]=(node[0],n+2+node[0]-2*node[1]) 
    nx.draw(G,pos=posG)      



#from math import sqrt, log, pi,exp
#import re
#--------------------------------------------------------#
#--- Cumulative normal distribution        --------------#
#--------------------------------------------------------#
def CND(X):
    """ Cumulative standard normal distribution
            CND(x): x is a scale
            e.g., 
            >>> CND(0)
            0.5000000005248086
    """
    (a1,a2,a3,a4,a5)=(0.31938153,-0.356563782,1.781477937,-1.821255978,1.330274429)
    L = abs(X)
    K = 1.0 / (1.0 + 0.2316419 * L)
    w = 1.0 - 1.0 / sqrt(2*pi)*exp(-L*L/2.) * (a1*K + a2*K*K + a3*pow(K,3) +
    a4*pow(K,4) + a5*pow(K,5))
    if X<0:
        w = 1.0-w
    return w

#--------------------------------------------------------#
#--- Black-Scholes-Merton option model     --------------#
#--------------------------------------------------------#
def bs_call_old(S,X,T,r,v):
    """
       Objective: Black-Schole-Merton option model
         >>>bs_call(40,40,1,0.1,0.2)
         5.307874373215604
    """
    d1 = (log(S/X)+(r+v*v/2.)*T)/(v*sqrt(T))
    d2 = d1-v*sqrt(T)
    return S*CND(d1)-X*exp(-r*T)*CND(d2)
   

#--------------------------------------------------------#
#--- Present value of a perpetuity due     --------------#
#--------------------------------------------------------#
def pv_perpetuity_due(c,r):
    """Objective: estimate present value of a perpetuity due
                  i.e., 1st cash flow occurs today
          c: period payment
          r: discount rate
          e.g.,
          >>>pv_perpetuity_due(30000,0.08)
          405000.0
    """
    return(c/r*(1+r))


#--------------------------------------------------------#
#--------------------------------------------------------#
#--------------------------------------------------------#
def payback_(investment, cashflows):
    """Objective: estimate payback period: number of years requried to
                  recover the initial investment
       e.g.,
       >>>invest=200
       >>>future_cashflows=[60.0, 60.0, 70.0, 90.0]
       >>>payback_(invest,future_cashflows)
       or 
       >>>payback_(200.0, [60.0, 60.0, 70.0, 90.0])
       3.1111111111111112
    """
    total, years, cumulative = 0.0, 0, []
    if not cashflows or (sum(cashflows) < investment):
        raise Exception("insufficient cashflows")
    for cashflow in cashflows:
        total += cashflow
        if total < investment:
            years += 1
        cumulative.append(total)
    A = years
    B = investment - cumulative[years-1]
    C = cumulative[years] - cumulative[years-1]
    return A + (B/C)

#--------------------------------------------------------#
#--------------------------------------------------------#
#--------------------------------------------------------#
def payback_period(cashflows):
    """Objective: estimate payback period, number of years needed to
                 recover the initial investment
       e.g.,
       >>>x=[-200.0, 60.0, 60.0, 70.0, 90.0]
       >>>payback_period(x)
       3.1111111111111112
    """
    investment, cashflows = cashflows[0], cashflows[1:]
    if investment < 0 : investment = -investment
    return payback_(investment, cashflows)


#--------------------------------------------------------#
#--------------------------------------------------------#
#--------------------------------------------------------#
def npv_f(rate, cashflows):
    """Objective  : estimate NPV value
         rate     : discount rate
         cashflows: cashflows
         e.g.
         >>>npv_f(0.1, [-100.0, 60.0, 60.0, 60.0])
         49.211119459053322
    """
    total = 0.0
    for i, cashflow in enumerate(cashflows):
        total += cashflow / (1 + rate)**i
    return total


#--------------------------------------------------------#
#--- IRR (Internal Rate of Return) ----------------------#
#--------------------------------------------------------#
def IRR_f(cashflows, iterations=100):
    """Objective: estimte IRR (Internal Rate of Return)
         e.g., 
         >>>x=[-100.0, 60.0, 60.0, 60.0]
         >>>IRR_f(x)
         0.36309653947517645
    """
    rate = 1.0
    investment = cashflows[0]
    for i in range(1, iterations+1):
        rate *= (1 - npv_f(rate, cashflows) / investment)
    return rate

#--------------------------------------------------------#
#----PV_f function --------------------------------------#
#--------------------------------------------------------#
def pv_f(fv,r,n):
    """Objective: estimate present value
              fv: fture value
              r : discount period rate
              n : number of periods
        formula : fv/(1+r)**n      
           e.g.,
           >>>pv_f(100,0.1,1)
           90.9090909090909
           >>>pv_f(r=0.1,fv=100,n=1)
           90.9090909090909
           >>>pv_f(n=1,fv=100,r=0.1)
           90.9090909090909
    """
    return fv/(1+r)**n


#--------------------------------------------------------#
#--------------------------------------------------------#
#--------------------------------------------------------#
def bond_price(c,r,n,face_value):
  """Objective   : estimte price of a bond
       c         : coupon payment
       r         : discount rate 
       n         : number of period
       face_value: principal
       formula   : c/r*(1-1/(1+r)**n) + face_value/(1+r)**n
       e.g.,
       >>>bond_price(10,0.08,10,1000)
       530.2943020740986
  """
  return  c/r*(1-1/(1+r)**n) + face_value/(1+r)**n

  
#----------------------------------------------------------#
#----Mimic PV() function in Excel -------------------------#
#----------------------------------------------------------#
def pv_excel(rate,nper,pmt=0,fv=0,type=0):
    """Objective: mimic Excel pv() function
           rate : period rate
           nper : number of periods
           pmt  : payment per period
           fv   : future value
           type : type=0, payments occur at the end of each period
                  type=1, payments occur at the begining of each perod 
                  default value is type=0
           e.g.,
           >>>pv_excel(0.1,1,100)
           90.90909090909093
           >>>pv_excel(0.1,1,100,100)
           181.81818181818184
           >>>pv_excel(0.1,1,100,100,1)
           200.00000000000003
    """
    pv=pv_f(fv,rate,nper) +pv_annuity(nper,pmt,rate)
    if(type==1): pv=pv*(1+rate)
    return pv


#--------------------------------------------------------#
#--- Present value of a perpetuity         --------------#
#--------------------------------------------------------#
def pv_perpetuity(c,r):
    """
  Objective : estimate present value of a perpetuity
     c      : period payment
     r      : discount rate
  formula   : c/r 
      e.g., 
      >>>pv_perpetuity(100,0.08)
      1250.0
    """
    return c/r

#--------------------------------------------------------#
#--- Present value of a growing perpetuity --------------#
#--------------------------------------------------------#
def pv_grow_perpetuity(c,r,q):
    """Objective : estimate present value of a growthing perpetuity
              r  : discount rate
              q  : growth rate of perpetuity
              c  : period payment
        formula  : c/(r-g)
        e.g., 
         >>>pv_grow_perpetuity(30000,0.08,0.04)
         750000.0
    """
    return(c/(r-q))

#--------------------------------------------------------#
#--- Present value of an annuity ------------------------#
#--------------------------------------------------------#
def pv_annuity(n,c,r):
    """Objective : estimate present value of an annuity 
            n    : number of payments    
            c    : payment amount
            r    : discount
       formula   : c/r*(1-1/(1+r)**n)
       e.g.,
       >>>pv_annuity(29,1,0.08)
       11.158406010577684
    """
    return c/r*(1-1/(1+r)**n)


#--------------------------------------------------------#
#--- Present value of an annuity with 1st payment        #
# -----------n-period from today ------------------------#
#--------------------------------------------------------#
def pv_annuity_k_period_from_today(n,c,r,k_period_from_today=0):
    """
  Objective            : estimate present value of an annuity 
         n             : number of payments    
         c             : payment amount
         r             : discount
    k_period_from_today: 1st payment is k periods from today
                         default is zero
         formula       : pv_annuity(n,c,r)/(1+r)**k_period_from_today
         e.g.,
         >>> pv_annuity_k_period_from_today(29,1,0.08,1)
         10.331857417201558
         >>> pv_annuity_k_period_from_today(29,1,0.08)
         11.158406010577684
    """
    return pv_annuity(n,c,r)/(1+r)**k_period_from_today


#--------------------------------------------------------#
#--- Estimate the number of periods for an annuity ------#
#--------------------------------------------------------#
def n_annuity(r,pv,pmt,fv):
    """
  Objective: esimate the number of period
        r  : discount rate
        fv : future value
        pv : present value
        pmt: payment per period
    formula: log((fv*r+pmt)/(pv*r+pmt))/log(1+r)
        e.g.,
        >>> n_annuity(0.0725,10050,5000,60000)
        6.999345696211027
    """
    return log((fv*r+pmt)/(pv*r+pmt))/log(1+r)

#--------------------------------------------------------#
#---fv_f  future value function -------------------------#
#--------------------------------------------------------#
def fv_f(pv,r,n):
    """
      Objective : estimate furuew value
             pv : present value
             r  : discount period rate
             n  : number of periods
       formula  : pv*(1+r)**n
        e.g.,
        >>>fv_f(100,0.1,1)
        110.00000000000001
    """
    return pv*(1+r)**n

#--------------------------------------------------------#
#--- Present value of an annuity ------------------------#
#--------------------------------------------------------#
def fv_annuity(n,c,r):
    """
     Objective: estimate future value of an annuity 
       n      : number of payments    
       c      : payment amount
       r      : discount
     formula  : c/r*((1+r)**n-1)
       e.g.,
       >>>fv_annuity(2,100,0.1)
       210.0000000000002
    """
    return c/r*((1+r)**n-1)

#--------------------------------------------------------#
#-- Present value of a growing annuity ------------------#
#--------------------------------------------------------#
def pv_growing_annuity(n,c,r,g):
    """
     Objective: estimate present value of a growting annuity    
         c    : payment
         n    : number of payments
         r    : discount rate
         g    : growth rate  (g<r)
      formula : c/(r-g)*(1-((1+g)/(1+r))**n)
         e.g.
        >>>pv_growing_annuity(30,10000,0.1,0.05)
        150463.14700582038
    """
    tt=((1+g)/(1+r))**n
    return c/(r-g)*(1-tt)



#----------------------------------------------------------#
#--mean function  -----------------------------------------#
#----------------------------------------------------------#
def mean(numberList):
    """
     Objective: estimate mean of an input variable
     e.g., 
     >>>x=(1,2,3)
     >>>mean(x)
     2.0
     >>>x=[1,1,2]
     >>>mean(x)
     1.3333333333333333
    """
    if len(numberList) == 0:
        return float('nan')
    floatNums = [float(x) for x in numberList]
    return sum(floatNums) / len(numberList)

#----------------------------------------------------------#
#--sign function  -----------------------------------------#
#----------------------------------------------------------#
def sign(x):
    """
       Objective: take the sign of x
       e.g.,
          >>>sign(-1.2)
          -1
          >>>sign(5)
          1
    """
    if x>0: return 1
    elif x<0: return -1
    else: return 0
    

#----------------------------------------------------------#
#--IRR estimation -----------------------------------------#
#----------------------------------------------------------#
def IRRs_f(cash_flows):
    """
     Objective: find mutiple IRRs
       e.g,
        >>>x=[55,-50,-50,-50,100]
        >>>IRRs_f(x)
        [0.072, 0.337]
    """
    n=1000
    r=range(1,n)
    n_cash_flow=len(cash_flows)
    epsilon=abs(mean(cash_flows)*0.01)
    irr=[-99.00]
    j=1
    npv=[]
    for i in r: npv.append(0)
   #print("len(r)", len(r))
    #print("len(npv)",len(npv))
    lag_sign=sign(npv_f(float(r[0]*1.0/n*1.0),cash_flows))
    for i in range(1,n-1):
                  #print("r[i]",r[i])
                  interest=float(r[i]*1.0/n*1.0)
                  npv[i]=npv_f(interest,cash_flows)
                  s=sign(npv[i])
                  if s*lag_sign<0:
                      lag_sign=s
                      if j==1:
                          irr=[interest]
                          j=2
                      else:
                          irr.append(interest)
    return irr



#--------------------------------------------------------#
#--- Estimate Payment of an annuity ---------------------#
#--------------------------------------------------------#
def PMT(n,r,pv,fv):
    """
    Objective: estimate period payment (like Excel function)
       n    : number of periods
       r    : discount rate
       pv   : present value 
       fv   : period payment
       e.g.,
         >>>PMT(10,0.08,100000,0)
         14902.948869707534
    """
    return (pv-fv/(1+r)**n)*r/(1-1/(1+r)**n)
   

#--------------------------------------------------------#
#--- Estimte the number of periods for an annuity -------#
#       Excel function                                   #
#--------------------------------------------------------#
def NPER(r,pv,pmt,fv):
    """
    Objective: esimate the number of periods
       r  : discount rate
       fv : future value
       pv : present value
       pmt: payment per period
       e.g.,
         >>>NPER(0.0725,10050,5000,60000)
         6.999345696211027
    """
    return log((fv*r+pmt)/(pv*r+pmt))/log(1+r)


#----------------------------------------------------------#
#----------------------------------------------------------#
#----------------------------------------------------------#
def r_continuous(r,m):
    """
      Objective : estimate a coutinusly compounded interest rate
              r : an annual rate (Annual Percentage Rate)
              m : compounding frequency per year
      formula   : m*log(1+r/m)
    """
    return  m*log(1+r/m)


#----------------------------------------------------------#
#----------------------------------------------------------#
#----------------------------------------------------------#
def Rc_f(r,m):
    """
     Objective: estimate a continously compounded rate 
        r : norminal rate
        m : number of times compounded each year
        e.g.,
         >>>Rc_f(0.1,2)
         0.09758032833886408
    """
    return m*log(1+r/m)

#----------------------------------------------------------#
#----------------------------------------------------------#
#----------------------------------------------------------#
def Rm_f(Rc,m):
    """
      Get norminal rate for a given continuous compounded rate 
       Rc : continuous compounded rate
       m  : number of desired times compounded each year
            e.g., Rm_f(0.08,4)= 0.08080536
    """
    return m*(exp(Rc/m)-1)


