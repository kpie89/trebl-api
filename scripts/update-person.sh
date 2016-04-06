curl --include --request PATCH http://localhost:3000/people/12 \
  --header "Authorization: Token token=BAhJIiU2MzNmMzdlYmQwNzdjMjUwMjg4ODk1ZTg2YjJkODg1ZQY6BkVG--8b0e25f0c42d70e528d2d39b3e6b7a29b69abfa3" \
  --header "Content-Type: application/json" \
  --data '{
    "person": {
      "name": "lement",
      "picture": "awesomeeee",
      "bio": "cool dude with a tude"
    }
  }'
