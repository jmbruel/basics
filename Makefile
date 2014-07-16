#-----------------------------------------------------
EXT=txt
MAIN=*.$(EXT)
PLANTUMLDIR=/Users/bruel/dev/outils/plantuml.jar
PLANTUML=java -jar $(PLANTUMLDIR)
OUTPUT=.
IMG=png
#-----------------------------------------------------

all: $(OUTPUT)/*.$(IMG) 

$(OUTPUT)/%.$(IMG): %.$(EXT) Defs.$(EXT)
	@echo '==> Compiling plantUML files to generate' $(IMG)
	$(PLANTUML) $<
