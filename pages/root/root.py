from os.path import abspath, dirname
from jinja2 import Environment, FileSystemLoader

def render_root() -> str:
    loader = FileSystemLoader(searchpath=abspath(dirname(__file__)))
    env = Environment(loader=loader)

    template = env.get_template('template.html')
    print(template.filename)
    page = template.render()

    return page