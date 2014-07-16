#-----------------------------------------------------
EXT=txt
MAIN=*.$(EXT)
#------------- Make sure to adapt the next line to your context
PLANTUMLDIR=plantuml.jar
PLANTUML=java -jar $(PLANTUMLDIR)
OUTPUT=.
IMG=png
DEF=Defs
#-----------------------------------------------------

all: $(OUTPUT)/*.$(IMG) 

$(OUTPUT)/%.$(IMG): %.$(EXT) $(DEF).$(EXT)
	@echo '==> Compiling plantUML files to generate' $(IMG)
	$(PLANTUML) $<
