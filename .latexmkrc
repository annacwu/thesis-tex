# Always build thesis.tex
@default_files = ('thesis.tex');

# Put all build artifacts in build/ folder
$out_dir = 'build';

# Use pdflatex
$pdf_mode = 1;

# Use biber for bibliography (hardcoded Homebrew path)
$biber = '/opt/homebrew/bin/biber %O %S';

# File extensions to clean
$clean_ext = 'bbl run.xml bcf synctex.gz';

# PDF viewer (macOS) — Skim auto-refreshes on file change; no need to call open after every compile
$pdf_previewer = 'open -a Skim';
$pdf_update_method = 0;
