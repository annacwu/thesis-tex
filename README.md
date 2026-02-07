# Reed College CS Thesis

Repository for writing my undergraduate thesis as part of my graduation requirements for Reed College Computer Science. 

## Compiling

### From the command line

```bash
make          # Build thesis.pdf
make clean    # Remove auxiliary files
make cleanall # Remove all generated files including PDF
make format   # Format all .tex files with latexindent
```

### From Neovim (with vimtex)

- `\ll` - Start continuous compilation (watches for changes and auto-recompiles)
- `:VimtexClean` - Remove auxiliary files
- `:VimtexClean!` - Remove auxiliary files and output PDF

## Project Structure

```
tex/
├── thesis.tex          # Main document
├── thesis.bib          # Bibliography
├── chapters/           # Chapter files
├── figures/            # Images
├── build/              # Output directory (generated)
├── reedthesis.cls      # Reed thesis class file
└── .latexindent.yaml   # Formatting config
```

## Compiling a Single Chapter

To compile only one chapter (faster iteration), add to the preamble before `\begin{document}`:

```latex
\includeonly{chapters/chap2}
```

Note: You must do a full compile first (without `\includeonly`) to generate all `.aux` files, otherwise chapter/figure numbering will be wrong.
