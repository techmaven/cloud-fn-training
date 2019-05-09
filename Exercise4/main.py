
from flask import escape
from google.cloud import datastore

def get_fortune(request):
    code = request.args['code']

    project_id = 'gcp-cloud-functions-training'
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
