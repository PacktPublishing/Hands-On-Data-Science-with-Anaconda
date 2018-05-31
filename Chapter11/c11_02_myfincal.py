"""
  Name     : c11_02_myfincal.py
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 5/8/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"""

def pv_f(r,n,fv):
    """
    Objective: estimate present value
           r : period rate
           n : number of periods
          fv : future value
                           fv
    formula used : pv = --------      
                        (1+r)**n
    Example 1: >>>pv_f(0.1,1,100)        # meanings of input variables 
                 90.9090909090909        # based on their input order

    Example #2 >>>pv_f(r=0.1,fv=100,n=1) # meanings based on keywords
                 90.9090909090909
    """
    return fv/(1+r)**n
#
def pvGrowingPerpetuity(c,r,q):
    return(c/(r-q))
#
def fv_f(pv,r,n):
    return pv*(1+r)**n
def fvAnnuity(r,n,c):
    return c/r*((1+r)**n-1)
#
def fvAnnuityDue(r,n,c):
    return c/r*((1+r)**n-1)*(1+r)


