# index.py
"""
Production entrypoint for the Flask app.

This file exists so deployment servers (gunicorn, etc.) can import:
  index:app

Assumes your app.py ends with something like:
  app = create_app()
"""

from app import app  # imports the already-created Flask instance

# Optional: allows `python index.py` locally
if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000, debug=True)