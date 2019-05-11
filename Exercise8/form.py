

import os
import json

triggerId = 'wfrergegrergegr'

form = {
    'token': os.environ['SLACK_ACCESS_TOKEN'],
    'trigger_id': triggerId,
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


print(json.dumps(form))
