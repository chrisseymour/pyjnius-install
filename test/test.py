'''
simple example from pjnius tutorial
https://pyjnius.readthedocs.io/en/latest/index.html
'''

from jnius import autoclass

Stack = autoclass('java.util.Stack')
stack = Stack()
stack.push('pyjnius')
stack.push('has been installed')

print stack.pop()
print stack.pop()
