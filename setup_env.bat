@echo off
echo Creating MDR Cleaner environment...
conda env create -f mdr_cleaner_env.yml

echo Creating ML Lab environment...
conda env create -f ml_lab_env.yml

echo Done! Use:
echo   conda activate mdr-cleaner
echo   OR
echo   conda activate ml-lab
pause


how do i run this bat file?