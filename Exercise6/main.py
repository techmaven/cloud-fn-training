
import json
import apiclient
from flask import jsonify

def verify_web_hook(form):
    if not form or form.get('token') != config['SLACK_TOKEN']:
        raise ValueError('Invalid request/credentials.')

def slack_get_fortune(request):
    if request.method != 'POST':
        return 'Only POST requests are accepted', 405
    verify_web_hook(request.form)

    project_id = 'turing-outrider-209020'
    client = datastore.Client(project_id)

    q = client.query(kind='Fortune')
    q.add_filter('code','=',code)
    entity_list = list(q.fetch())

    if entity_list is None:
        return('No matching fortune found')
    else:
        fortune = entity_list[0]
        return(fortune['content']);
