Pandocs Markdown Unterstützung{#sec:pandoc}
==============================

Texte im Markdown Format werden, von diesem kleine System, auch verarbeitet.
Voraussetzung hierfür ist dass `pandoc` installiert ist.

Pandoc ist dabei nur für die Umsetzung in den \LaTeX\ Quelltext
verantwortlich. Das eigentliche PDF Dokument wird mit weiterhin
mit `pdflatex` erstellt.




Was funktioniert nicht?
-----------------------

Die farbige Darstellung der Quelltext funktioniert nicht, 
da hier entsprechende Befehle von `pandoc` erstellt werden.
Diese Funktion kann also nicht verwendet werden.



Was muss noch getestet werden?
------------------------------

- Bilder, mit und ohne Beschriftung
- Tabellen
- Links
	- einfach 
	- ...und mit anderem Text



Was muss noch überprüft werden?
-------------------------------

Die Log Dateien des \LaTeX\ Laufs muss noch gesichtet werden.
So wie es ausschaut werden hier noch ein paar mehr Fehler geschmissen
wie vor der `markdown` Einbindung.
