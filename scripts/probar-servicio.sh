#!/bin/bash
URL="http://127.0.0.1:80"
HTTP_CODE=$(curl -s -o /dev/null -w "%{http_code}" "$URL")
if [ "$HTTP_CODE" -eq 200 ]; then
    echo "La solicitud HTTP fue exitosa. Codigo de estado: $HTTP_CODE"
    exit 0
else
    echo "Error: La solicitud HTTP fallo con el codigo de estado: $HTTP_CODE"
    exit 1
fi
