import sys
from subprocess import call
i = 5
if i<=0:sys.exit()
if __file__ != 'Sully.py':i-=1
a='import sys%cfrom subprocess import call%ci = %d%cif i<=0:sys.exit()%cif __file__ != %cSully.py%c:i-=1%ca=%c%s%c%cwith open(%cSully_%%d.py%c %% i, %cw%c) as f:f.write(a%%(10,10,i,10,10,39,39,10,39,a,39,10,39,39,39,39,10,39,39,39,39,10))%ccall([%cpython3.7%c, %cSully_%%d.py%c%%(i)])%c'
with open('Sully_%d.py' % i, 'w') as f:f.write(a%(10,10,i,10,10,39,39,10,39,a,39,10,39,39,39,39,10,39,39,39,39,10))
call(['python3.7', 'Sully_%d.py'%(i)])
