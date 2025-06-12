#!/bin/bash

echo "🛠️  Starting .db file download..."

# Show current working directory
pwd

# List files before download
echo "📂 Files before download:"
ls -lh

# Try to download
curl -L "https://github.com/Henil4/TDS_Project_1/releases/download/V1.0.0/knowledge_base.db" -o ./knowledge_base.db

# Check success
if [ -f "./knowledge_base.db" ]; then
  echo "✅ Download complete: ./knowledge_base.db"
  ls -lh ./knowledge_base.db
else
  echo "❌ Failed to download ./knowledge_base.db"
  exit 1
fi

# List files after download
echo "📂 Files after download:"
ls -lh

