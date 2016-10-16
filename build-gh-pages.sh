#!/bin/sh
which hackmyresume > /dev/null || echo "hackmyresume not found; try `npm install -g hackmyresume` first."

hackmyresume BUILD fresca/* TO index.html && hackmyresume BUILD fresca/* TO print.html -t positive
