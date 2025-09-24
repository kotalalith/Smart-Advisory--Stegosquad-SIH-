FROM python:3.11-slim

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Set working directory
WORKDIR /app

# Install dependencies
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Copy all project files
COPY . /app/

# Expose port
EXPOSE 8000

# Run manage.py inside the second sum folder
CMD ["python", "Crop/manage.py", "runserver", "0.0.0.0:8000"]
