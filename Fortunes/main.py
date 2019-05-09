
from flask import escape
from google.cloud import datastore

def add_fortune(request):
    request_json = request.get_json(silent=True)

    content = request_json['content']
    category = request_json['category']
    code = request_json['code']

    project_id = 'gcp-cloud-functions-training'
    project_id = 'turing-outrider-209020'
    client = datastore.Client(project_id)
    complete_key = client.key('Fortune')
    fortune = datastore.Entity(key=complete_key)
    fortune.update({
        'content': content,
        'category': category,
        'code': code
    })
    client.put(fortune)

    return('Fortune added.\n',200)
