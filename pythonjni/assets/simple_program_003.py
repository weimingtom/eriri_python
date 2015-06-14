#!C:/Python27/python.exe

#see https://wiki.python.org/moin/SimplePrograms
#3 lines: For loop, built-in enumerate function, new style formatting

import sys

friends = ['john', 'pat', 'gary', 'michael']
if sys.version >= '2.3':
    for i, name in enumerate(friends):
        print "iteration {iteration} is {name}".format(iteration=i, name=name)
else:
    for i in range(len(friends)):
        name = friends[i]
        print "iteration %d is %s" % (i, name)
