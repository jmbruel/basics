#-----------------------------------------------------
EXT=plantuml
MAIN=*.$(EXT)
#------------- Make sure to adapt the next line to your context
PLANTUMLDIR=plantuml.jar
PLANTUML=java -jar $(PLANTUMLDIR)
OUTPUT=output
IMG=svg
DEF=Defs
#-----------------------------------------------------

all: $(OUTPUT)/*.$(IMG)

$(OUTPUT)/%.$(IMG): %.$(EXT) $(DEF).$(EXT)
	@echo '==> Compiling plantUML files to generate' $(IMG)
	$(PLANTUML) -t$(IMG) $< -o $(OUTPUT)
	touch README.asciidoc

build: FORCE
	@echo '==> Compiling plantUML files to generate' $(IMG)
	$(PLANTUML) *.$(EXT) -t$(IMG) -o $(OUTPUT)

FORCE:
