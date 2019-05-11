
import json
import os
import random
from flask import jsonify
from google.cloud import datastore


def verify_web_hook(form):
    if not form or form.get('token') != os.environ['SLACK_VERIFICATION_TOKEN']:
        print('Credentials mismatch token = {} SLACK_VERIFICATION_TOKEN = {}'.format(form.get('token'),os.environ['SLACK_VERIFICATION_TOKEN']))
        raise ValueError('Invalid request/credentials.')

def slack_get_fortune(request):
    print('request contents: {}'.format(json.dumps(request.form)))
    if request.method != 'POST':
        return 'Only POST requests are accepted', 405
    verify_web_hook(request.form)

    project_id = 'turing-outrider-209020'
    client = datastore.Client(project_id)

    code = str(random.randint(100,138))
    q = client.query(kind='Fortune')
    q.add_filter('code','=',code)
    entity_list = list(q.fetch())

    if not entity_list:
        return('No matching fortune found')
    else:
        fortune = entity_list[0]
        return(fortune['content']);
