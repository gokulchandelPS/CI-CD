# Start with a lightweight Python image
FROM python:3.12-slim

# Set the working directory inside the container
WORKDIR /app

# Copy dependency list and install packages
COPY requirements.txt .
RUN python -m pip install --no-cache-dir -r requirements.txt

# Copy application and test files
COPY calculator.py test_calculator.py ./

# Run automated tests when the container starts
CMD ["python", "-m", "pytest", "-v"]
