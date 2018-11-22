# Generate PDFs from the Markdown source files
#
# In order to use this makefile, you need some tools:
# - GNU make
# - Pandoc
# - LuaLaTeX
# - DejaVu Sans fonts

# Directory containing source (Markdown) files
source := docs
# Directory containing pdf files
output := PDFBestanden

# All markdown files in src/ are considered sources
sources := $(wildcard $(source)/*/*.md) $(wildcard $(source)/*.md) $(wildcard $(source)/*/*/*.md)

# Convert the list of source files (Markdown files in directory src/)
# into a list of output files (PDFs in directory print/).
objects := $(patsubst %.md,%.pdf,$(subst $(source),$(output),$(sources)))
# This is a list of directories that should be created
DIRS :=pdf 
# This line creates the directories
$(shell mkdir -p $(DIRS))
all: $(objects)
# Changed --latex-engine=lualatex  to --pdf-engine=lualatex
# Recipe for converting a Markdown file into PDF using Pandoc
$(output)/%.pdf: $(source)/%.md
	pandoc --variable mainfont="DejaVu Sans" \
		--variable monofont="DejaVu Sans Mono" \
		--variable fontsize=11pt \
		--variable geometry:margin=1.5cm \
		--variable geometry:a4paper \
		--table-of-contents \
		--number-sections \
		-f markdown  $< \
		--pdf-engine=lualatex \
		-o $@

.PHONY : clean