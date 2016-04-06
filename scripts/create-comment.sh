curl --include --request POST http://localhost:3000/comments \
  --header "Authorization: Token token=BAhJIiVjNGQxMWQ2MGU0NWIxNjIzODJjYjBmNzE5ODJmZDNjNgY6BkVG--fe3fdbe497b618ee281f1cf2d350fffb5cdb3b30" \
  --header "Content-Type: application/json" \
  --data '{
    "comment": {
      "desc": "lement"
    },
    "playlist_id": "1"

  }'
