#!/usr/bin/python

from jinja2 import Environment, PackageLoader, FileSystemLoader
from simplejson import loads
import os
import sys

DEPLOY = "scp -i $ALEX_PEM -r ./html/* $ALEX_LOGIN:$ALEX_WWW"

def compile():
    template = Environment(loader=FileSystemLoader('./src')).get_template('index.tpl')
    data = loads(file('./src/data.json', 'r').read())
    html = template.render(data)
    file('html/index.html', 'w').write(html)
    print '... website compiled'

def deploy():
    os.system("cp -r ./src/images ./html")
    os.system(DEPLOY)
    print '... website deployed'

def main(argv=None):
    if argv is None:
        argv = sys.argv
    if '-c' not in argv and '-d' not in argv:
        print "Use -c to compile, -d to deploy"
    else:
        if '-c' in argv:
            compile()
        if '-d' in argv:
            deploy()

if __name__ == "__main__":
    main(sys.argv)
