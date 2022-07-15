FROM python:3.7.3-stretch

## Complete Step 1:
WORKDIR /app
# Create a Working Directory

## Complete Step 2:
COPY . flask_app/web.py /app/
COPY . nlib /app/

# Copy source code to working directory
## Complete Step 3:
RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt
# Install packages from requirements.txt
# hadolint ignore=DL3013

## Complete Step 4:
# Expose port 80
EXPOSE 80

## Complete Step 5:
# Run app.py at container launch
CMD [ "python", "web.py" ]