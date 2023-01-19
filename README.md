Written in python3.11, since that's what's local and it seems fine.

Using poetry

Gonna use fastapi because I don't know it

Very basic website
    - little bit of contact info on the mainpage
    - directory for storing blogish things that get published under the mainpage


### To test, run:
`gunicorn webserver:app -k uvicorn.workers.UvicornWorker`