import os, sys

_Map = dict
_List = list

def _println(obj):
    if obj is None:
        sys.stdout.write("null\n")
    else:
        sys.stdout.write("%s\n" % obj)

class Test:
    def _init(self):
        self.name = None
    
    
    
    def __init__(self, name):
        self._init()
        (self).name = name
    


def go():
    t = Test("Hello World!!");
    _println((t).name);
    _println((Test("Hello World!!")).name);
