#!C:/Python27/python.exe

#see https://wiki.python.org/moin/SimplePrograms
#4 lines: Fibonacci, tuple assignment

import sys

parents, babies = (1, 1)
while babies < 100:
    if sys.version >= '2.3':
        print 'This generation has {0} babies'.format(babies)
    else:
        print 'This generation has %s babies' % babies
    parents, babies = (babies, parents + babies)
