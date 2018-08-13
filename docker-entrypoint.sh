#!/bin/bash
export CONFIG_FILE=oceandb.ini
export FLASK_APP=provider_backend/run.py
export FLASK_ENV=development
#sh ./scripts/deploy
#flask run --host=0.0.0.0
gunicorn -b 0.0.0.0:5000 -w 1 provider_backend.run:app
tail -f /dev/null