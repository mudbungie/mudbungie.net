from fastapi import FastAPI
from pages.root.root import render_root

app = FastAPI()

@app.get('/')
def root():
    return render_root()
    