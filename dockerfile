# Use the official Python image as the base image
FROM python:3.9-slim
 
# Set the working directory inside the container
WORKDIR /app
 
# Copy the requirements file
COPY requirements.txt .
 
# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt
 
# Copy the Streamlit app into the container
COPY app.py .
 
# Expose the default Streamlit port
EXPOSE 8501
 
# Set the command to run Streamlit
CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]
