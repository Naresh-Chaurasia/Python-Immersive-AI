#!/bin/bash

FOLDER_PATH="/Users/nareshchaurasia/nc/PYTHON-ARCHITECT/Python-Immersive-AI/RAG/RAG-Yash/2_vector_db/vector_db_txt"

if [ ! -d "$FOLDER_PATH" ]; then
    echo "Folder does not exist"
    exit 1
fi

find "$FOLDER_PATH" -type f -name "*.py" | while read file
do
    txtFile="${file%.py}.txt"

    cp "$file" "$txtFile"

    echo "Created: $txtFile"
done

echo "Completed"