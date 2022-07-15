FROM python:3.7.3-stretch

## Complete Step 1:
WORKDIR /app
# Create a Working Directory

## Complete Step 2:
COPY . app.py /app/
COPY . .

# Copy source code to working directory
## Complete Step 3:
RUN pip install --upgrade pip
RUN pip install numpy==1.16.4
RUN pip install -r requirements.txt
# Install packages from requirements.txt
# hadolint ignore=DL3013

## Complete Step 4:
# Expose port 80
EXPOSE 80

## Complete Step 5:
# Run app.py at container launch
CMD [ "python", "app.py" ]