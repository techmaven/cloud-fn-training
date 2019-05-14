
import os
import random
from flask import escape
from google.cloud import datastore

def get_fortune(request):
    client = datastore.Client(os.environ['GCP_PROJECT_ID'])

    code = str(random.randint(100,138))
    q = client.query(kind='Fortune')
    q.add_filter('code','=',code)
    entity_list = list(q.fetch())

    if not entity_list:
        return('No matching fortune found')
    else:
        fortune = entity_list[0]
        return(fortune['content']);

