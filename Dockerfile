# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
# (not needed in this case, as the script is simple and doesn't have external dependencies)

# Make port 3330 available to the world outside this container
EXPOSE 3330

# Define environment variable
ENV NAME CalculatorApp
ENTRYPOINT ["python"]
# Run calculator.py when the container launches
CMD ["python", "calculator.py"]
