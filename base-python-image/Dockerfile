FROM python:3.11-slim-bullseye

# Set Environment Variables
ENV PYTHONUNBUFFERED=1 \
    PYTHONDONTWRITEBYTECODE=1 

# Remove APT lists
RUN rm -rf /var/lib/apt/lists/*

# Install Poetry
RUN pip install poetry==1.4.1
RUN poetry config virtualenvs.in-project true
RUN poetry config virtualenvs.create true


# Set Workdir
WORKDIR /application