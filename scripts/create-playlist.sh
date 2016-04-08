curl --include --request POST http://localhost:3000/playlists \
  --header "Authorization: Token token=BAhJIiVlM2ZlZjQzOTc2NTNhZWUwYjcyNDQyODczODY1YTUzYgY6BkVG--4d792e68ff6ba8b9d99b27455b9dcd37d9d5b330" \
  --header "Content-Type: application/json" \
  --data '{
    "playlist": {
      "title": "blah",

      "desc": "buh"
    }
  }'
