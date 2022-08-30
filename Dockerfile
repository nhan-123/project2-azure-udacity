FROM python:3.6.8

## Step 1:
WORKDIR /app

## Step 2:
# Copy source code to working directory
COPY . app.py /app/
## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --upgrade pip &&\
    pip install -r requirements.txt

## Step 4:
#EXPOSE 80

## Step 5:
# Run app.py at container launch
CMD ["python" , "app.py"] 
