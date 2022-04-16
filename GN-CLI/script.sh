#!/bin/bash

#
# GN-CLI
#

#
# Visualitza per terminal les ultimes 10 noticies de GoogleNews 
# URL API: https://rapidapi.com/ubillarnet/api/google-news1/
# 


# Peticio JSON
wget --quiet \
	--method GET \
	--header 'X-RapidAPI-Host: google-news1.p.rapidapi.com' \
	--header 'X-RapidAPI-Key: c8a51c60f6mshcc327c292dedf44p1f8308jsn1573e7a264ed' \
	--output-document \
	- 'https://google-news1.p.rapidapi.com/top-headlines?country=EU&lang=es&limit=50' | cat > input.json

printf "last 10 updated news!"

# Transformacio de JSON en un document llegible

jq '.articles[9].title' input.json > arxiutest.txt
jq '.articles[9].link' input.json >> arxiutest.txt
printf " \n  \n" >> arxiutest.txt
jq '.articles[8].title' input.json >> arxiutest.txt
jq '.articles[8].link' input.json >> arxiutest.txt
printf " \n  \n" >> arxiutest.txt
jq '.articles[7].title' input.json >> arxiutest.txt
jq '.articles[7].link' input.json >> arxiutest.txt
printf " \n  \n" >> arxiutest.txt
jq '.articles[6].title' input.json >> arxiutest.txt
jq '.articles[6].link' input.json >> arxiutest.txt
printf " \n  \n" >> arxiutest.txt
jq '.articles[5].title' input.json >> arxiutest.txt
jq '.articles[5].link' input.json >> arxiutest.txt
printf " \n  \n" >> arxiutest.txt
jq '.articles[4].title' input.json >> arxiutest.txt
jq '.articles[4].link' input.json >> arxiutest.txt
printf " \n  \n" >> arxiutest.txt
jq '.articles[3].title' input.json >> arxiutest.txt
jq '.articles[3].link' input.json >> arxiutest.txt
printf " \n  \n" >> arxiutest.txt
jq '.articles[2].title' input.json >> arxiutest.txt
jq '.articles[2].link' input.json >> arxiutest.txt
printf " \n  \n" >> arxiutest.txt
jq '.articles[1].title' input.json >> arxiutest.txt
jq '.articles[1].link' input.json >> arxiutest.txt
printf " \n  \n" >> arxiutest.txt
jq '.articles[0].title' input.json >> arxiutest.txt
jq '.articles[0].link' input.json >> arxiutest.txt
printf " \n  \n"


printf "last 10 updated news!"

# Imprimim resultats
clear
cat arxiutest.txt
