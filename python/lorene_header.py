# -*- coding: utf-8 -*-"

"""The Gyoto Lorene plug-in"""

# Make sure the stdplug and lorene plug-ins are loaded before
# attempting to load the Python bindings 
from gyoto import requirePlugin as __gyoto_tmp_requirePlugin
__gyoto_tmp_requirePlugin("stdplug")
__gyoto_tmp_requirePlugin("lorene")
del __gyoto_tmp_requirePlugin

