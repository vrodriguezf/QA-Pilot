# Use an official Python runtime as a parent image
FROM python:3.10-slim

RUN apt-get update &&\
    apt-get install -y build-essential git

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Install PyTorch with CUDA
RUN pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118

# Expose port 5000 for the backend
EXPOSE 5000

# Run the backend server
CMD ["python", "qa_pilot_run.py"]