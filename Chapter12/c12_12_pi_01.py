import matplotlib.pyplot as plt
import sympy
#
def plot_one_digit_freqs(f1):
    """
    Plot one digit frequency counts using matplotlib.
    """
    ax = plt.plot(f1,'bo-')
    plt.title('Single digit counts in pi')
    plt.xlabel('Digit')
    plt.ylabel('Count')
    return ax
#
def one_digit_freqs(digits, normalize=False):
    """
    Consume digits of pi and compute 1 digit freq. counts.
    """
    freqs = np.zeros(10, dtype='i4')
    for d in digits:
        freqs[int(d)] += 1
    if normalize:
        freqs = freqs/freqs.sum()
    return freqs
#
pi = sympy.pi.evalf(40)
pi
pi = sympy.pi.evalf(10000)
digits = (d for d in str(pi)[2:])  # create a sequence of digits
freqs = one_digit_freqs(digits)
plot_one_digit_freqs(freqs)
plt.show()
