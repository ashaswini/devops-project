FROM python:3.9-slim

WORKDIR /app

# Copy only requirements first (for caching)
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# Now copy remaining files
COPY . .

EXPOSE 5000

CMD ["python", "app.py"]
