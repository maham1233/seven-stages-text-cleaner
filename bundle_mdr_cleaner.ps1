# Create the folder for the package
$folder = "mdr_cleaner_package"
New-Item -ItemType Directory -Force -Path $folder | Out-Null

# Copy the Streamlit app (from your canvas)
Copy-Item -Path "mdr_streamlit_app.py" -Destination "$folder\mdr_streamlit_app.py"

# Copy the Jupyter notebook
Copy-Item -Path "MDR_Cleaning_Demo.ipynb" -Destination "$folder\MDR_Cleaning_Demo.ipynb"

# Create a sample HTML file
$html = "<html><body><p>Hello World!</p><footer>Subscribe now!</footer></body></html>"
$html | Out-File "$folder\sample.html" -Encoding utf8

# Create a dummy sample PDF file
"%PDF-1.4 dummy PDF file for testing." | Out-File "$folder\sample.pdf" -Encoding utf8

# Create requirements.txt
@"
streamlit
trafilatura
datasketch
fasttext
PyMuPDF
"@ | Out-File "$folder\requirements.txt" -Encoding utf8

# Create the final ZIP archive
Compress-Archive -Path "$folder\*" -DestinationPath "MDR_Cleaner_Complete_Package.zip" -Force

Write-Output "✅ Done! Your ZIP package is saved as MDR_Cleaner_Complete_Package.zip"
