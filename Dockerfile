FROM python:3.11

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Install TensorFlow
RUN pip install --no-cache-dir tensorflow

# Make port 80 available to the world outside this container
EXPOSE 80

# Run ann_script.py when the container launches
CMD ["python", "train.py"]