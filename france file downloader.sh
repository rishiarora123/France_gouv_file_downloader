#!/bin/bash

# Define the base URL
base_url="https://www.cert.ssi.gouv.fr/uploads/CERTFR-"

# Loop through the years 2019 to 2024
for year in {2019..2024}; do
    # Loop through the document numbers from 001 to 010
    for num in {001..010}; do
        # Construct the URL by replacing year and document number
        url="${base_url}${year}-CTI-${num}.pdf"
        
        # Print the URL to verify the download link
        echo "Downloading $url..."
        
        # Download the PDF using wget
        wget -q "$url" -O "CERTFR-${year}-CTI-${num}.pdf"
        
        # Optional: Check if the download was successful
        if [[ $? -eq 0 ]]; then
            echo "Downloaded CERTFR-${year}-CTI-${num}.pdf successfully."
        else
            echo "Failed to download CERTFR-${year}-CTI-${num}.pdf."
        fi
    done
done

echo "All downloads are complete!"
