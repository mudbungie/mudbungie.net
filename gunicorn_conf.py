from multiprocessing import cpu_count

bind = "127.0.0.1:8000"

# workers = cpu_count + 1
workers = 4
worker_class = "uvicorn.workers.UvicornWorker"

loglevel = "debug"
accesslog = "/tmp/yggam.org_access_log"
errorlog = "/tmp/yggam.org_error_log"

wsgi_app = "webserver:app"