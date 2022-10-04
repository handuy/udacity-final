FROM python:3.7-alpine

## Step 1:
# Create a working directory
WORKDIR /project

## Step 2:
# Copy source code to working directory
COPY . .

## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --no-cache-dir --upgrade pip && pip install --no-cache-dir -r requirements.txt

## Step 4:
# Expose port 80
EXPOSE 8000

## Step 5:
# Run app.py at container launch
ENTRYPOINT [ "python", "app.py" ]