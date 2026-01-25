# Always build thesis.tex
@default_files = ('thesis.tex');

# Put all build artifacts in build/ folder
$out_dir = 'build';

# Copy PDF to root after successful build
$success_cmd = 'cp %D %R.pdf';

# Use pdflatex
$pdf_mode = 1;

# Use biber for bibliography
$biber = 'biber %O %S';

# Continuous preview mode
$preview_continuous_mode = 1;

# File extensions to clean
$clean_ext = 'bbl run.xml bcf synctex.gz';

# PDF viewer (macOS)
$pdf_previewer = 'open -a Skim';
$pdf_update_method = 4;
$pdf_update_command = "open -a Skim %S";
