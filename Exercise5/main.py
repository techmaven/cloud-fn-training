
from flask import escape
from google.cloud import datastore

def add_contact(request):
    request_json = request.get_json(silent=True)

    name = request_json['name']
    company = request_json['company']
    email = request_json['email']
    phone = request_json['phone']

    client = datastore.Client(os.environ['GCP_PROJECT_ID)
    complete_key = client.key('Contacts')
    contact = datastore.Entity(key=complete_key)
    contact.update({
        'name': name,
        'company': company,
        'email': email,
        'phone': phone,
    })
    client.put(contact)

    return('Contact added.\n',200)

