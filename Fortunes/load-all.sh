#!/bin/bash -x

TRIGGER_URL=https://us-central1-turing-outrider-209020.cloudfunctions.net/add_fortune

curl -H "Content-Type: application/json" --data '{ "code": "100", "content": "You put the sexy in dyslexia.", "category": "nonsense" }' $TRIGGER_URL
curl -H "Content-Type: application/json" --data '{ "code": "101", "content": "Seven days without a pun makes one weak.", "category": "nonsense" }' $TRIGGER_URL
curl -H "Content-Type: application/json" --data '{ "code": "102", "content": "An Englishman thinks a hundred miles is a long way while an American thinks a hundred years is a long time", "category": "wisdom" }' $TRIGGER_URL
curl -H "Content-Type: application/json" --data '{ "code": "103", "content": "Save energy, use a small font.", "category": "tech" }' $TRIGGER_URL
curl -H "Content-Type: application/json" --data '{ "code": "104", "content": "With great power comes great heat sinks.", "category": "tech" }' $TRIGGER_URL
curl -H "Content-Type: application/json" --data '{ "code": "105", "content": "Hard work often pays off after time, but laziness always pays off now.", "category": "wisdom" }' $TRIGGER_URL
curl -H "Content-Type: application/json" --data '{ "code": "106", "content": "Objects in calendar are closer than they appear.", "category": "wisdom" }' $TRIGGER_URL
curl -H "Content-Type: application/json" --data '{ "code": "107", "content": "Ask me about my Vow of Silence.", "category": "nonsense" }' $TRIGGER_URL
curl -H "Content-Type: application/json" --data "{ \"code\": \"108\", \"content\": \"If you don't have a dark secret in your past, it's never to late to make one.\", \"category\": \"wisdom\" }" $TRIGGER_URL
curl -H "Content-Type: application/json" --data '{ "code": "109", "content": "The secret to success is being able to make mistakes faster.", "category": "wisdom" }' $TRIGGER_URL
curl -H "Content-Type: application/json" --data "{ \"code\": \"110\", \"content\": \"Documentation is like sex: when it's good, it's great; when it's bad, it's better than nothing.\", \"category\": \"tech\" }" $TRIGGER_URL
curl -H "Content-Type: application/json" --data '{ "code": "111", "content": "A complex design is the sign of an inferior designer.", "category": "wisdom" }' $TRIGGER_URL
curl -H "Content-Type: application/json" --data '{ "code": "112", "content": "You are one-in-a-million, there are only 6000 people just like you.", "category": "nonsense" }' $TRIGGER_URL
curl -H "Content-Type: application/json" --data '{ "code": "113", "content": "Life is like an analogy.", "category": "nonsense" }' $TRIGGER_URL
curl -H "Content-Type: application/json" --data '{ "code": "114", "content": "If debugging is the process of removing bugs, then coding is the process of putting them in.", "category": "tech" }' $TRIGGER_URL
curl -H "Content-Type: application/json" --data '{ "code": "115", "content": "What boots up must come down.", "category": "tech" }' $TRIGGER_URL
curl -H "Content-Type: application/json" --data '{ "code": "116", "content": "Disregard previous fortune.", "category": "nonsense" }' $TRIGGER_URL
curl -H "Content-Type: application/json" --data '{ "code": "117", "content": "Someone will win the lottery, just not you.", "category": "wisdom" }' $TRIGGER_URL
curl -H "Content-Type: application/json" --data '{ "code": "118", "content": "Money is in your future, its just not yours.", "category": "wisdom" }' $TRIGGER_URL
curl -H "Content-Type: application/json" --data "{ \"code\": \"119\", \"content\": \"If you think no one cares you're alive, try breaking the build.\", \"category\": \"tech\" }" $TRIGGER_URL
curl -H "Content-Type: application/json" --data '{ "code": "120", "content": "Stop procrastinating tomorrow.", "category": "nonsense" }' $TRIGGER_URL
curl -H "Content-Type: application/json" --data "{ \"code\": \"121\", \"content\": \"Help! I'm trapped in a Google data center!\", \"category\": \"nonsense\" }" $TRIGGER_URL
curl -H "Content-Type: application/json" --data '{ "code": "122", "content": "A SQL query goes to a restaurant, walks up to 2 tables and says, Can I join you?", "category": "nonsense" }' $TRIGGER_URL
curl -H "Content-Type: application/json" --data '{ "code": "123", "content": "Strive for simplicity, you will never have to fix what you leave out.", "category": "wisdom" }' $TRIGGER_URL
curl -H "Content-Type: application/json" --data '{ "code": "124", "content": "Begin with simplicity, then add lightness.", "category": "wisdom" }' $TRIGGER_URL
curl -H "Content-Type: application/json" --data '{ "code": "125", "content": "This fortune intentionally left blank.", "category": "nonsense" }' $TRIGGER_URL
curl -H "Content-Type: application/json" --data '{ "code": "126", "content": "This fortune reserved for future use.", "category": "nonsense" }' $TRIGGER_URL
curl -H "Content-Type: application/json" --data "{ \"code\": \"127\", \"content\": \"Don't worry about the world coming to an end today.  It's already tomorrow in Australia.\", \"category\": \"nonsense\" }" $TRIGGER_URL
curl -H "Content-Type: application/json" --data '{ "code": "128", "content": "Congratulations, you are not illiterate.", "category": "nonsense" }' $TRIGGER_URL
curl -H "Content-Type: application/json" --data '{ "code": "129", "content": "Never trust the cloud.", "category": "wisdom" }' $TRIGGER_URL
curl -H "Content-Type: application/json" --data '{ "code": "130", "content": "You have new mail.", "category": "tech" }' $TRIGGER_URL
curl -H "Content-Type: application/json" --data '{ "code": "131", "content": "Your password will expire in 3 minutes.", "category": "tech" }' $TRIGGER_URL
curl -H "Content-Type: application/json" --data "{ \"code\": \"132\", \"content\": \"Are you really sure you're not a robot?\", \"category\": \"nonsense\" }" $TRIGGER_URL
curl -H "Content-Type: application/json" --data "{ \"code\": \"133\", \"content\": \"If at first you don't succeed, Google Stack Overflow.\", \"category\": \"tech\" }" $TRIGGER_URL
curl -H "Content-Type: application/json" --data '{ "code": "134", "content": "Your disk is nearly full, buy stock in Seagate.", "category": "tech" }' $TRIGGER_URL
curl -H "Content-Type: application/json" --data '{ "code": "135", "content": "The reason computer chips are so small is computers dont eat much.", "category": "wisdom" }' $TRIGGER_URL
curl -H "Content-Type: application/json" --data '{ "code": "136", "content": "There are three simple rules for writing completely bug free code. Unfortunately, no one knows what they are.", "category": "tech" }' $TRIGGER_URL
curl -H "Content-Type: application/json" --data '{ "code": "137", "content": "You will have an out of money experience.", "category": "wisdom" }' $TRIGGER_URL
curl -H "Content-Type: application/json" --data '{ "code": "138", "content": "If you go Dutch, you get what you pay for.", "category": "wisdom" }' $TRIGGER_URL
curl -H "Content-Type: application/json" --data "{ \"code\": \"139\", \"content\": \"To discover a developer's faults, praise him to his teammates.\", \"category\": \"tech\" }" $TRIGGER_URL
