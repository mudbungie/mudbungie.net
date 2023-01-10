from fastapi import FastAPI
from fastapi.responses import HTMLResponse
from pages.root.root import render_root

app = FastAPI()

@app.get('/', response_class=HTMLResponse)
def root():
    content = render_root()
    response = HTMLResponse(content=content, status_code=200)
