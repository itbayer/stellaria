Vorwort {#sec:vorwort}
=======================

Stellaria[^namensgeber] ist eine kleine Zusammenstellung mit der aus
mehreren `.tex` Dokumenten Teilen eine PDF Datei erstellt wird. 
Alle Dateien befinden sich dabei in einem Unterverzeichnis. 
Das Programm `make` übernimmt die Steuerung bzw. das Erstellen der PDF Datei.

[^namensgeber]: Namensgeber für diese Erweiterung war die _Vogelmiere_.

Der Gedanke dabei ist, ein \LaTeX\ Dokument in einzelne Dateien aufteilen
zu können ohne eine Steuerdatei, mit den entsprechenden LaTeX Befehlen,
verwenden zu müssen. 
Textteile können so einfach in das Verzeichnis kopiert werden. 
Die Nummerierung, siehe Abschnitt , bestimmt dabei die Reihenfolge der Texte.

Die Texte können auch mit der Sprache `pandoc markdown` erstellt werden.
Voraussetzung ist dann natürlich das `pandoc` auf dem System installiert ist.
Ein Mischbetrieb, `markdown`, `tex` ist möglich, siehe Abschnitt \vref{sec:pandoc}.
