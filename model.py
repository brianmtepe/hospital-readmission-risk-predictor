"""Launcher to run the script in `scripts/model.py` from project root.

This keeps the original script unchanged and allows:
    python model.py
"""

import os
import runpy

runpy.run_path(os.path.join(os.path.dirname(__file__), 'scripts', 'model.py'), run_name='__main__')
