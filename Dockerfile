FROM jupyter/base-notebook:latest

# Copy requirements.txt
COPY requirements.txt /tmp/requirements.txt

# Install Python dependencies
RUN pip install --no-cache-dir -r /tmp/requirements.txt
