#!/bin/bash

echo "🛠️  Starting .db file download..."

# Show current working directory
pwd

# List files before download
echo "📂 Files before download:"
ls -lh

# Try to download
curl -L "https://github.com/Henil4/TDS_Project_1/releases/download/v1.0.0/your.db" -o ./your.db

# Check success
if [ -f "./your.db" ]; then
  echo "✅ Download complete: your.db"
  ls -lh ./your.db
else
  echo "❌ Failed to download your.db"
  exit 1
fi

# List files after download
echo "📂 Files after download:"
ls -lh

