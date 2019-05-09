from flask import escape

def hello_you(request):
    request_json = request.get_json(silent=True)
    request_args = request.args

    if request_json and 'name' in request_json:
        name = request_json['name']
    elif request_args and 'name' in request_args:
        name = request_args['name']
    else:
        print('Error: name was missing from request')
        return('You didn\'t tell me you\'re name!\n',400)
    print('Received request from {}'.format(escape(name)))
    return('Greetings {}!\n'.format(escape(name)),200)
