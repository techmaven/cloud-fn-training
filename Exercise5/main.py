
from flask import escape
from google.cloud import datastore

def add_contact(request):
    request_json = request.get_json(silent=True)

    name = request_json['name']
    company = request_json['company']
    email = request_json['email']
    phone = request_json['phone']

    project_id = 'gcp-cloud-functions-training'
    project_id = 'turing-outrider-209020'
    client = datastore.Client(project_id)
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
