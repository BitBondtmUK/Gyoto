# -*- coding: utf-8 -*-"

"""The Gyoto standard plug-in"""

# Make sure the stdplug plug-in is loaded before attempting to load
# the Python bindings
from gyoto import requirePlugin as __gyoto_tmp_requirePlugin
__gyoto_tmp_requirePlugin("stdplug")
del __gyoto_tmp_requirePlugin

