FROM ubuntu:latest
RUN apt-get update && apt-get install -y python3
WORKDIR /app
# This is pre-configured so you can just copy this Dockerfile to the root folder!
COPY atomics/T0011/check.sh .
RUN chmod +x check.sh

# Create a script that runs the check, saves the output, and starts a web server
RUN echo '#!/bin/bash\n\
echo "Running checks... this may take a moment. Refresh the page in a few seconds." > index.html\n\
# Run the check in the background so the web server can start immediately\n\
( ./check.sh > check_results.txt 2>&1 ; echo "<pre>" > index.html ; cat check_results.txt >> index.html ; echo "</pre>" >> index.html ) &\n\
echo "Starting web server on port 80..."\n\
python3 -m http.server 80\n\
' > start.sh && chmod +x start.sh

ENTRYPOINT ["./start.sh"]
