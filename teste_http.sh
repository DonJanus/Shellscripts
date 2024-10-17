#!/bin/bash

code=$(curl --write-out %{http_code} --silent --output /dev/null https://adopet-frontend-cypress.vercel.app/home)

if [ $code -eq 200 ]; then
	echo "Página no ar!"
else
	echo "Página com problemas!"
fi



