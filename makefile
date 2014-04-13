# -------------------------------------
# stellaria make Steuerdatei
#
# -------------------------------------



PDFNAME = $(shell cat pdfname)

DEBUG = debug.tex

LATEX = /usr/bin/pdflatex
PDFVIEW = /usr/bin/zathura 


# -----------------------------------------------------
# Pandoc Erweiterung
#
# Dateien einlesen
MARKDOWN = $(shell for i in $(shell ls -1 *.md 2>/dev/null);do echo $${i%.*}.tex; done)
#
# Pfad zum pandoc Programm
PANDOC = /usr/local/bin/pandoc



# Dateien die zum Editieren vorhanden sind
# siehe edittext
EDITTEXT = $(shell ls 1*.md ls 1*.tex ls 2*.md ls 2*.tex ls 3*.md ls 3*.tex ls 4*.md ls 4*.tex ls 5*.md ls 5*.tex ls 6*.md ls 6*.tex ls 7*.md ls 7*.tex ls 8*.md ls 8*.tex)

# Systemdateien 
# siehe editsys
EDITSYS = $(shell ls 0*.tex 9*.tex)


# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


# -----------------------------------------------------
# PDF Datei erstellen
run:
	@make -s md2tex # .md Dateien nach .tex Dateien wandeln
	@rm -f $(PDFNAME).tex # Gesamt Datei löschen
	@cat *.tex > $(PDFNAME).tex # Gesamt Datei wieder zusammen bauen
	@$(LATEX) $(PDFNAME).tex  # PDF Datei aus Gesamt Datei erstellen
	@rm -f $(PDFNAME).tex # Gesamt .tex Datei wieder entfernen
	@rm -f $(MARKDOWN) # Einzel Dateien die im Markdown Format vorliegen entfernen




# -----------------------------------------------------
# PDF Datei anzeigen
show:
	@$(PDFVIEW) $(PDFNAME).pdf &




# -----------------------------------------------------
# Arbeitsdateien löschen
clean:
	@rm -f *.aux
	@rm -f *.log
	@rm -f *.idx
	@rm -f *.out
	@rm -f *.toc
	@rm -f $(PDFNAME).tex




# -----------------------------------------------------
# Verzeichnis bis auf die Quelltexte zurücksetzen
cleanall:
	make -s clean
	@rm -f *.pdf
	@rm -f $(DEBUG) # Debug Datei löschen




# -----------------------------------------------------
# Alle Text Dateien mit dem Editor gvim öffnen
edittext:
	gvim $(EDITTEXT)


# -----------------------------------------------------
# Alle System Dateien mit dem Editor gvim öffnen
editsys:
	gvim $(EDITSYS)


# -----------------------------------------------------
# Markdown Dateien in tex wandeln
md2tex: $(MARKDOWN)

%.tex: %.md
	$(PANDOC) -f markdown -t latex -o $@ $<




# -----------------------------------------------------
# Erstellt die gesamte Datei tex für eine Fehlersuche
# mit einem LaTeX Editor wie zum Beispiel gummi.
debug:
	@rm -f $(DEBUG)
	cat *.tex > $(DEBUG)




