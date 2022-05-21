#!/bin/bash

uptime -p | sed 's/s*weeks\s*/w/; s/\s*days/d/; s/\s*hours/h/; s/\s*minutes/m/; s/\,//g;' > /tmp/uptime
