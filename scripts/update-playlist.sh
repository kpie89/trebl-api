curl --include --request PATCH http://localhost:3000/playlists/2 \
  --header "Authorization: Token token=BAhJIiUzNDhmMGQ1NGUzNGRhODkxMTAzODQ4ODdjNzdiOWFjOQY6BkVG--6afb9542fb4b0bd3b7d7bee84743bf82d4de68d5" \
  --header "Content-Type: application/json" \
  --data '{
    "playlist": {
      "title": "holy shit",
      "desc": "just work"
    }
  }'
