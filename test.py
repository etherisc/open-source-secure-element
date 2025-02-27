#!/usr/bin/env python3
import sys
import os

print("Python version:", sys.version)
print("Python executable:", sys.executable)
print("Python path:", sys.path)
print("Environment variables:")
for key, value in os.environ.items():
    if "PYTHON" in key:
        print(f"  {key}: {value}")

try:
    import encodings
    print("Successfully imported encodings module")
except ImportError as e:
    print(f"Failed to import encodings module: {e}") 