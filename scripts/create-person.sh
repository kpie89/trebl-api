#!/bin/bash

curl --include --request POST http://localhost:3000/people \
  --header "Authorization: Token token=BAhJIiVlZTlkYzdjZDEwMWIwOTkxNDEwYjAyYzJkZWExZTQ2NQY6BkVG--e358bbe9d432cc737cff0d4654a3e32ff41f2236" \
  --header "Content-Type: application/json" \
  --data '{
    "person": {
      "name": "kpie89",
      "picture": "some picture",
      "bio": "cool dude with a tude"
    }
  }'
