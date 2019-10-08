NC 		= nim
NCMD 	= compile
TARGET 	= server
SRC 	= server.nim
OUTDIR 	= build
SRCDIR 	= src
NFLAGS 	= --out:$(TARGET) --outdir:$(OUTDIR)

default: $(TARGET)

$(TARGET): $(SRCDIR)/$(SRC) js sass
	$(NC) $(NCMD) $(NFLAGS) --run --stackTrace:on --lineTrace:on $(SRCDIR)/$(SRC)

js: home.nim

sass: home.sass

run:
	./$(SRCDIR)/$(TARGET)

build: clean $(SRC)
	$(NC) $(NCMD) $(NFLAGS) --define:release --opt:speed $(SRCDIR)/$(SRC)

clean:
	rm -rf $(OUTDIR)/*

home.nim: $(SRCDIR)/nimjs/home.nim
	$(NC) js --out:home.js --outdir:build/public/js $(SRCDIR)/nimjs/home.nim

home.sass: $(SRCDIR)/sass/home.sass
	sass $(SRCDIR)/sass/home.sass $(OUTDIR)/public/css/home.css
