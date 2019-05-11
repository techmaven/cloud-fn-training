
import json
import os
import random
from google.cloud import datastore
import requests

def verify_web_hook(form):
    if not form or form.get('token') != os.environ['SLACK_VERIFICATION_TOKEN']:
        print('Credentials mismatch token = {} SLACK_VERIFICATION_TOKEN = {}'.format(form.get('token'),os.environ['SLACK_VERIFICATION_TOKEN']))
        raise ValueError('Invalid request/credentials.')

def slack_get_fortune(request):
    print('request contents: {}'.format(json.dumps(request.form)))
    if request.method != 'POST':
        return 'Only POST requests are accepted', 405
    verify_web_hook(request.form)

    arg = request.form.get('text')
    if arg == 'add':
        raiseDialog(request)
        return('OK')
    elif arg != "":
        code = request.form.get('text')
    else:
        code = str(random.randint(100,138))

    project_id = os.environ['GCP_PROJECT_ID']
    client = datastore.Client(project_id)

    q = client.query(kind='Fortune')
    q.add_filter('code','=',code)
    entity_list = list(q.fetch())

    if not entity_list:
        return('No fortune found matching {}'.format(match))
    else:
        fortune = entity_list[0]
        return(fortune['content']);


def raiseDialog(request):
    url = 'https://slack.com/api/dialog.open'
    trigger_id = request.form.get('trigger_id')
    token = os.environ['SLACK_ACCESS_TOKEN']
    data = {
    'trigger_id': trigger_id,
    'token': token,
    'dialog': {
      'title': 'Create a new fortune',
      'callback_id': 'create-fortune',
      'submit_label': 'Submit',
      'elements': [
        {
          'label': 'Content',
          'type': 'text',
          'name': 'content',
          'hint': 'Write the fortune here'
        },
        {
          'label': 'Category',
          'type': 'text',
          'name': 'category',
          'hint': 'Category for this fortune'
        }
       ]
      }
    }
    response = requests.post(url,json.dumps(data),headers={'Content-Type': 'application/json'})
    print('raiseDialog response = {}'.format(response.text))
