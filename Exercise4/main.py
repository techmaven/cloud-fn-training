
import os
from flask import escape
from google.cloud import datastore

def get_fortune(request):
    code = request.args['code']

    client = datastore.Client(os.environ['GCP_PROJECT_ID'])

    q = client.query(kind='Fortune')
    q.add_filter('code','=',code)
    entity_list = list(q.fetch())

    if entity_list is None:
        return('No matching fortune found')
    else:
        fortune = entity_list[0]
        return(fortune['content']);

