#!/bin/bash
echo "==================================================="
echo "  SafeTrail - Smart Tourist Safety System"
echo "  SOS Number: +16064462384"
echo "==================================================="
echo
echo "Installing dependencies..."
cd Backend
pip install -r requirements.txt
echo
echo "Starting server at http://127.0.0.1:5500"
echo
python App.py
