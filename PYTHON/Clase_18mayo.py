#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu May 18 19:14:55 2023

@author: eugeniovera
"""

#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu May 18 18:48:07 2023

@author: eugeniovera
"""

from flask import Flask
sw = Flask(__name__)

@sw.route('/')
def inicio():
    return "pagina inicial ..."

@sw.route('/listado')
def lista_elemementos():
    return 'listado de productos'

if __name__=='__main__':
    
    sw.run(debug=True, port=8000)