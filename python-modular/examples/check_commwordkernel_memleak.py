import gc
from shogun.Features import Alphabet,StringCharFeatures,StringWordFeatures,DNA
from shogun.PreProc import SortWordString, M_DEBUG
from shogun.Kernel import CommWordStringKernel,NO_NORMALIZATION
from numpy import mat

POS=[100*'ACGT', 100*'ACGT', 100*'ACGT',100*'ACGT', 100*'ACGT', 
100*'ACGT',100*'ACGT', 100*'ACGT', 100*'ACGT',100*'ACGT', 100*'ACGT', 
100*'ACGT',100*'ACGT', 100*'ACGT', 100*'ACGT',100*'ACGT', 100*'ACGT', 
100*'ACGT',100*'ACGT', 100*'ACGT', 100*'ACGT',100*'ACGT', 100*'ACGT', 
100*'ACGT',100*'ACGT', 100*'ACGT', 100*'ACGT',100*'ACGT', 100*'ACGT', 
100*'ACGT',100*'ACGT', 100*'ACGT', 100*'ACGT',100*'ACGT', 100*'ACGT', 
100*'ACGT',100*'ACGT', 100*'ACGT', 100*'ACGT',100*'ACGT', 100*'ACGT', 
100*'ACGT',100*'ACGT', 100*'ACGT', 100*'ACGT',100*'ACGT', 100*'ACGT', 
100*'ACGT',100*'ACGT', 100*'ACGT', 100*'ACGT',100*'ACGT', 100*'ACGT', 
100*'ACGT',100*'ACGT', 100*'ACGT', 100*'ACGT',100*'ACGT', 100*'ACGT', 
100*'ACGT',100*'TTGT', 100*'TTGT', 100*'TTGT',100*'TTGT', 100*'TTGT', 
100*'TTGT',100*'TTGT', 100*'TTGT', 100*'TTGT',100*'TTGT', 100*'TTGT', 
100*'TTGT',100*'TTGT', 100*'TTGT', 100*'TTGT',100*'TTGT', 100*'TTGT', 
100*'TTGT',100*'TTGT', 100*'TTGT', 100*'TTGT',100*'ACGT', 100*'ACGT', 
100*'ACGT',100*'ACGT', 100*'ACGT', 100*'ACGT',100*'ACGT', 100*'ACGT', 
100*'ACGT',100*'ACGT', 100*'ACGT', 100*'ACGT',100*'ACGT', 100*'ACGT', 
100*'ACGT',100*'ACGT', 100*'ACGT', 100*'ACGT',100*'ACGT', 100*'ACGT', 
100*'ACGT',100*'ACGT', 100*'ACGT', 100*'ACGT',100*'ACGT', 100*'ACGT', 
100*'ACGT',100*'ACGT', 100*'ACGT', 100*'ACGT',100*'ACGT', 100*'ACGT', 
100*'ACGT',100*'ACGT', 100*'ACGT', 100*'ACGT',100*'ACGT', 100*'ACGT', 
100*'ACGT',100*'ACGT', 100*'ACGT', 100*'ACGT',100*'ACGT', 100*'ACGT', 
100*'ACGT',100*'ACGT', 100*'ACGT', 100*'ACGT',100*'ACGT', 100*'ACGT', 
100*'ACGT',100*'ACGT', 100*'ACGT', 100*'ACGT',100*'ACGT', 100*'ACGT', 
100*'ACGT',100*'ACGT', 100*'ACGT', 100*'ACGT']
NEG=[100*'ACGT', 100*'ACGT', 100*'ACGT',100*'ACGT', 100*'ACGT', 
100*'ACGT',100*'ACGT', 100*'ACGT', 100*'ACGT',100*'ACGT', 100*'ACGT', 
100*'ACGT',100*'ACGT', 100*'ACGT', 100*'ACGT',100*'ACGT', 100*'ACGT', 
100*'ACGT',100*'ACGT', 100*'ACGT', 100*'ACGT',100*'ACGT', 100*'ACGT', 
100*'ACGT',100*'ACGT', 100*'ACGT', 100*'ACGT',100*'ACGT', 100*'ACGT', 
100*'ACGT',100*'ACGT', 100*'ACGT', 100*'ACGT',100*'ACGT', 100*'ACGT', 
100*'ACGT',100*'ACGT', 100*'ACGT', 100*'ACGT',100*'ACGT', 100*'ACGT', 
100*'ACGT',100*'ACGT', 100*'ACGT', 100*'ACGT',100*'ACGT', 100*'ACGT', 
100*'ACGT',100*'ACGT', 100*'ACGT', 100*'ACGT',100*'ACGT', 100*'ACGT', 
100*'ACGT',100*'ACGT', 100*'ACGT', 100*'ACGT',100*'ACGT', 100*'ACGT', 
100*'ACGT',100*'TTGT', 100*'TTGT', 100*'TTGT',100*'TTGT', 100*'TTGT', 
100*'TTGT',100*'TTGT', 100*'TTGT', 100*'TTGT',100*'TTGT', 100*'TTGT', 
100*'TTGT',100*'TTGT', 100*'TTGT', 100*'TTGT',100*'TTGT', 100*'TTGT', 
100*'TTGT',100*'TTGT', 100*'TTGT', 100*'TTGT',100*'ACGT', 100*'ACGT', 
100*'ACGT',100*'ACGT', 100*'ACGT', 100*'ACGT',100*'ACGT', 100*'ACGT', 
100*'ACGT',100*'ACGT', 100*'ACGT', 100*'ACGT',100*'ACGT', 100*'ACGT', 
100*'ACGT',100*'ACGT', 100*'ACGT', 100*'ACGT',100*'ACGT', 100*'ACGT', 
100*'ACGT',100*'ACGT', 100*'ACGT', 100*'ACGT',100*'ACGT', 100*'ACGT', 
100*'ACGT',100*'ACGT', 100*'ACGT', 100*'ACGT',100*'ACGT', 100*'ACGT', 
100*'ACGT',100*'ACGT', 100*'ACGT', 100*'ACGT',100*'ACGT', 100*'ACGT', 
100*'ACGT',100*'ACGT', 100*'ACGT', 100*'ACGT',100*'ACGT', 100*'ACGT', 
100*'ACGT',100*'ACGT', 100*'ACGT', 100*'ACGT',100*'ACGT', 100*'ACGT', 
100*'ACGT',100*'ACGT', 100*'ACGT', 100*'ACGT',100*'ACGT', 100*'ACGT', 
100*'ACGT',100*'ACGT', 100*'ACGT', 100*'ACGT']
order=7
gap=0
reverse=False

for i in xrange(1000):
    alpha=Alphabet(DNA)
    traindat=StringCharFeatures(alpha)
    traindat.set_string_features(POS+NEG)
    trainudat=StringWordFeatures(traindat.get_alphabet());
    trainudat.obtain_from_char(traindat, order-1, order, gap, reverse)
    #trainudat.io.set_loglevel(M_DEBUG)
    pre = SortWordString()
    #pre.io.set_loglevel(M_DEBUG)
    pre.init(trainudat)
    trainudat.add_preproc(pre)
    trainudat.apply_preproc()
    spec = CommWordStringKernel(trainudat,trainudat,False,NO_NORMALIZATION)
    K=mat(spec.get_kernel_matrix())

del POS
del NEG
del order
del gap
del reverse