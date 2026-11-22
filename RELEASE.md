**Butchies Video Converter AI 1.1.4**: Videos mit KI-Hilfe in H.264 / H.265 umwandeln. Dazu gibt es einen Player für alle Codecs, einen Vorher/Nachher-Vergleich und einen Ordner-Abgleich.

**Installieren:** `Butchies_Video_Converter-Setup.exe` herunterladen und starten. Du brauchst dafür keine Administratorrechte.
Der Installer sucht das **Laufwerk mit dem meisten freien Speicher** und schlägt dort Programm- und Video-Ordner vor.
FFmpeg mit allen Codecs ist dabei (inklusive VMAF-Messung und HDR). WebView2 wird bei Bedarf automatisch eingerichtet.

- **KI-Autopilot:** Alles steht auf Auto. Auf „Manuell“ fahren die Einstellungen aus (Codec, Qualität, Auflösung, Inhalt, HDR, Ton/Untertitel/Kapitel, Ausgabe/Zeitplan)
- **Zielgröße von–bis:** Die KI wählt Bitrate und Auflösung selbst und begrenzt sinnlos hohe Bitraten
- **Echte Qualitätsmessung:** VMAF an 3 Probestücken, echtes Vorher/Nachher mit Schieberegler und Lupe
- **Erkennung:** HDR (behalten oder in SDR umrechnen), Filmkorn und Zeichentrick, defekte Dateien
- **Ton und Untertitel:** Deutsch und Englisch bleiben, Kommentarspuren fliegen raus, Kapitel werden übernommen
- **Player:** spielt alle Formate ab (live über FFmpeg), mit KI-Schärfe beim Anschauen
- **Ordner-Abgleich:** erkennt gleiche Filme am Namen, am Bild und an der Prüfsumme
  - Platz-Bilanz zeigt, wie viel du sparen kannst
  - Einheitlich umbenennen geht mit einem Klick
  - Bei geschützten Ordnern (NAS) wird nichts endgültig gelöscht, sondern nur in einen Ordner „_Papierkorb“ verschoben
- **Nachtmodus:** Start zu einer festen Uhrzeit, danach den PC herunterfahren oder in den Ruhezustand schicken, Nachricht aufs Handy (ntfy)
- 7 Designs, Start- und Abschieds-Animation wie im ffmpeg_encode Studio

**Neu in 1.1.0: zwei Grafikkarten und paralleles Umwandeln**
- Das Programm erkennt Prozessor-Grafik (z. B. Radeon 760M) und eigene Grafikkarte (z. B. Radeon RX 7000) getrennt
- FFmpeg wird bei Windows fest auf die **eigene Grafikkarte** eingestellt. Eine zweite FFmpeg-Kopie nutzt die Prozessor-Grafik
- **⚡ Prozessor & Grafikkarten** (Auto/Manuell): Die KI verteilt mehrere Videos gleichzeitig auf Prozessor (x265, beste Qualität), eigene Karte und Prozessor-Grafik. Dabei bleibt die Qualität mindestens „Gut“
- Im KI-Monitor siehst du, welcher Film gerade wo läuft, dazu die geschätzte Zeitersparnis

**Neu in 1.1.1**
- Ordner einlesen mit **Ladebalken in Prozent** und Anzahl gefundener Dateien, dazu deutlich schneller bei NAS- und Netzwerk-Ordnern
- Ladebalken auch beim Bild-Abgleich und bei den Prüfsummen
- Neuer Knopf oben rechts: Fenster **auf den anderen Bildschirm** schieben (erscheint bei 2 Monitoren)

**Neu in 1.1.2**
- Liegt ein Ordner im anderen (z. B. B = „FULL HD CINEMA\x265“ in A = „FULL HD CINEMA“), wird er beim äußeren Ordner **automatisch ausgelassen**. Es wird also keine Datei mehr mit sich selbst verglichen. Dazu kommt ein Hinweis
- Neuer Schalter in den Abgleich-Regeln: „Unterordner mitlesen“ (an/aus)

**Neu in 1.1.3**
- Das Programm **merkt sich jetzt alles** bis zum nächsten Start: Design, Start-Animation an/aus, Auto/Manuell-Schalter, eigene Einstellungen (Codec, Zielgröße, Zeitplan …) und eigene Vorlagen. Bisher ging das beim Neustart verloren

**Neu in 1.5.0**
- 🏷️ **Gruppen-Name → „Butchies-Groove“**: Der Name am Ende hinter dem Codec (z. B. „-WAYNE“, „-SiXTYNiNE“) wird beim Umwandeln automatisch ersetzt (oder behalten/entfernt – unter „Ausgabe & Zeitplan“). Über 100 bekannte Gruppen sind eingebaut, neue lernt das Programm selbst dazu. Darunter siehst du sofort, wie die Dateien heißen werden.
- 📝 **Das Programm merkt sich deine Filme**: Jeder umgewandelte Film wird mit Fingerabdruck gemerkt und bekommt einen unsichtbaren Vermerk in der Datei.
- ✏️ **Umbenennen im Ordner-Abgleich**: „Gruppen-Namen ersetzen (nur deine Filme)“ findet auf dem NAS deine schon umgewandelten Filme mit fremdem Gruppen-Namen und benennt nur diese um – Untertitel/NFO gleich mit, rückgängig möglich. Fremde Filme bleiben, außer du hakst sie an.
- ♻️ **Gleicher Codec erkannt**: Ist ein Film schon H.265 (bzw. H.264), steht „schon H.265“ dabei. Vor dem Start prüft die KI, ob sich erneutes Umwandeln lohnt (ab 20 % kleiner) – sonst nur Ton aufbereiten oder überspringen.

**Neu in 1.4.1**
- 🔤 Lange Dateinamen im KI-Monitor und in der KI-Analyse werden jetzt mit „…“ gekürzt statt umzubrechen (ganzer Name beim Drüberfahren mit der Maus)

**Neu in 1.4.0**
- 🎙️ **Ton-Aufbereiter**: Stimmen verständlicher (bei 5.1/7.1 wird der Center-Kanal mit den Dialogen lauter), jeder Film gleich laut (Fernseh-Standard EBU R128), Nachtmodus. Geht beim Umwandeln oder mit **„Nur Ton überarbeiten“** für schon fertige Filme (Bild bleibt 1:1). Im Player schaltet **🎙️** zwischen Original und aufbereitetem Ton um.
- 🎯 **Ziel-Qualität (VMAF)**: Du sagst, wie gut der Film aussehen soll (85/90/93/96). Die KI testet vorher an Probestücken und nimmt die kleinste Datei, die das Ziel schafft.
- 📊 **Statistik & KI** (neuer Knopf oben): gespart insgesamt, Ersparnis pro Monat, Hardware-Test (misst einmalig, wie schnell Prozessor und Grafikkarten wirklich sind) und was die KI dazugelernt hat (Tempo, Restzeit, Note).
- 🌙 **Nacht-Planer & Spielmodus** (unter PC-Auslastung): nur umwandeln, wenn der PC frei ist; Spiel im Vollbild pausiert die Grafikkarten-Jobs; nachts volle Leistung.
- 🖥️ **Monitore bleiben an**, solange ein anderer Player läuft (YouTube, Netflix, VLC …) oder ein Vollbild-Programm offen ist.
- 🛡 Einstellungen werden jetzt sicher gespeichert (konnten bei gleichzeitigem Speichern verloren gehen).

**Neu in 1.3.3**
- 💾 **Alles wird gemerkt**: Bildschirm (Monitor), Vollbild/maximiert, KI-Analyse auf/zu und Player-Modus sind beim nächsten Start genauso wie beim Beenden
- 📏 **Klügere Größen-Grenze**: Bei H.264 → H.265 rechnet die KI ein, dass H.265 sparsamer ist – vorher konnte die Datei bei „gleicher Bitrate wie die Quelle“ sogar größer werden
- ⚠️ **Hinweis „lohnt sich kaum“**, wenn eine Datei nicht mindestens 5 % kleiner würde
- 🛠 Fehler behoben: Start konnte hängen bleiben, wenn keine Arbeiter (Prozessor/Grafikkarte) ausgewählt waren; Fehler beim Start setzen jetzt alles sauber zurück

**Neu in 1.3.2**
- 📋 **Knopf „Warteschlange“ oben in der Kopfzeile** (mit Zähler bzw. Prozent beim Umwandeln): eigenes Fenster mit allen Dateien, Summe vorher → nachher, Ersparnis, geschätzter Dauer, Reihenfolge ↑↓ ändern, „Größte Ersparnis zuerst“, Details, Entfernen, Start/Pause/Stopp
- ⓘ **Details als eigenes Fenster**: Quelle, Ziel, Probe-Messung mit Probebildern (Klick → Vorher/Nachher), Ausgabe, Status, KI-Hinweise; mit ◀ ▶ (auch Pfeiltasten) zum nächsten Film blättern
- ▶ **Player nur bei Bedarf**: zugeklappt nur eine schmale Leiste – klappt von selbst auf beim Abspielen, Hineinziehen oder Vorher/Nachher, beim Umwandeln wieder zu (▴ klappt ihn von Hand zu). Mehr Platz für die Dateiliste
- 🧠 **KI-Autopilot einklappbar** (Klick auf die Überschrift): zeigt dann nur Zielgröße, Codec, Auslastung und ob alles auf Auto steht

**Neu in 1.3.1**
- 📌 **Status in der Taskleiste**: Ist das Programm minimiert, zeigt das Taskleisten-Symbol einen Fortschrittsbalken und beim Drüberfahren, was gerade passiert (z. B. „⏳ 42 % · Datei 2/5 · Film … · Rest 1:23:10“, „🗂️ Ordner B einlesen · 63 %“)
- 🔄 **Ordner-Abgleich findet neue Filme von selbst**: Die Ordner werden jede Minute geprüft. Neue Dateien erscheinen erst, wenn sie **fertig geschrieben** sind (Download/Kopie abgeschlossen, nicht mehr gesperrt) – bis dahin steht „⏳ wird gerade noch geschrieben“
- „⟳ Neu abgleichen“ liest beide Ordner jetzt wirklich neu ein

**Neu in 1.3.0**
- 🌡️ **PC-Auslastung begrenzen** (neue Leiste im KI-Autopilot): Auto = 90 %, bei Manuell 25 · 50 · 75 % und ab 80 % in 5er-Schritten bis 100 %. Alle Kerne werden genutzt, das Umwandeln macht nur kurze Pausen. Wirkt sofort, auch bei laufenden Umwandlungen
- 💤 **Kein Ruhezustand beim Umwandeln**: Monitore gehen nach 5 Minuten ohne Maus/Tastatur aus (einstellbar unter „Ausgabe & Zeitplan“). „Danach“ (z. B. Herunterfahren) kommt erst, wenn die ganze Liste fertig ist
- 🎯 **Zielgröße „Auto“**: Die KI wählt pro Film die beste Größe für eine Qualität zwischen 75 und 90
- 📋 **Warteschlange**: ab 3 Dateien auf- und zuklappbar; jede Datei hat „Details“ (Quelle, Ziel, Probe-Messung mit „Jetzt messen“, Ausgabename, Warnungen, Abspielen, Vorher/Nachher, Quelle zeigen)
- 🎨 Eingabefelder, Auswahllisten und Scrollbalken passen sich allen 7 Designs an (wurden beim Drüberfahren weiß)
- Den ffmpeg-Befehl in der KI-Analyse entfernt, „Codec-Check“ ist einklappbar

**Neu in 1.2.4**
- Programm hat jetzt ein eigenes Zuhause: github.com/Butchies/Butchies-butchies-video-converter
- Abfrage-Fenster (z. B. „Dateien löschen?“, Codec-Frage) haben einen festen Hintergrund und sind nicht mehr durchsichtig

**Neu in 1.2.3**
- Beim Umwandeln erscheint ein **großes Fortschritts-Fenster** wie im Encode Studio: große Prozentzahl, Balken 0–100 %, Warteschlange, Format, Verarbeitet, Tempo, Restzeit und Protokoll
- Knöpfe: Pause, „Im Hintergrund weiter“ (zurückholen mit ⤢ im KI-Monitor) und Abbrechen (Sicherheitsabfrage durch zweiten Klick). Am Ende: „Im Ordner zeigen“ und „Fertig“

**Neu in 1.2.2**
- **Jahreszeiten** beim Starten und Beenden (Blüten, Sonne, Herbstlaub, Schnee) – jeweils **2 Wochen ab dem Wechsel** (1. März, 1. Juni, 1. September, 1. Dezember), sonst die gewohnte Animation
- Abschaltbar unter „Design“: „🍂 Jahreszeit beim Starten und Beenden zeigen“

**Neu in 1.2.1**
- Jede Datei in der Liste hat jetzt ein **✕** zum einzelnen Herausnehmen (mit „Rückgängig“). Läuft sie gerade oder wartet, fragt das Programm vorher und bricht nur diese eine Umwandlung ab. Die Originaldatei bleibt immer erhalten

**Neu in 1.2.0**
- **Ordner-Infos in A und B:** Noch leer: zuletzt benutzte Ordner zum Anklicken und freier Speicher der Laufwerke (auch NAS). Eingelesen: Videos, Größe, Unterordner, freier Platz, Codecs und Auflösungen als Balken, Sparpotenzial (H.264 → H.265) mit Knopf „In Warteschlange“, auffällige Dateien (0 Byte, unfertige Downloads, sehr klein, „sample“) zum Anzeigen/Löschen, neueste und größte Datei
- Knopf **„⚙ Anzeige“**: per Häkchen wählen, was gezeigt wird – gilt für A und B und bleibt gespeichert
- **Abbrechen** beim Ordner-Einlesen, Inhalt prüfen und Tiefsuche
- Auf Auto vergleicht der Abgleich nur noch Namen + Filmdatenbank (schnell). Der Bild-Abgleich heißt jetzt **„Tiefsuche“** und ist nur bei Manuell wählbar
- Helles Design: Grün, Gelb, Rot und Blau sind dunkler und gut lesbar

**Neu in 1.1.7**
- Steht eine Leiste auf „Manuell“, klappt sie mit **nochmal „Manuell“ antippen** (oder Klick auf die Überschrift) zu und wieder auf – wie alles andere
- Das Programm merkt sich, welche Leisten auf Manuell stehen, welche zu- oder aufgeklappt sind und alle gewählten Werte – auch nach dem Neustart

**Neu in 1.1.6**
- Beim Klick auf „Umwandlung starten“ klappt die **KI-Analyse automatisch zu** (nur eine kurze Zeile mit Note, Auflösung und Größe bleibt). So ist der **KI-Monitor rechts komplett zu sehen, ohne Scrollen**
- Wieder aufklappen: einfach auf „KI-Analyse“ klicken oder (wenn nichts läuft) eine Datei in der Liste anklicken

**Neu in 1.1.5**
- Das Programm merkt sich beim Beenden **alles**: Design, Einstellungen, die Dateiliste (inkl. schon fertiger Dateien) und die Abgleich-Ordner A/B samt Schutz-Häkchen. Beim nächsten Start ist alles wieder da, der Abgleich läuft automatisch neu
- Dateien, die es inzwischen nicht mehr gibt, werden beim Start einfach weggelassen

**Neu in 1.1.4**
- Steht ein alter Codec im Dateinamen (x264, H.264, AVC …), **fragt die KI vor dem Start**, ob sie ihn passend ändern soll, z. B. `…BluRay.x264-DETAiLS` zu `…BluRay.x265-DETAiLS`. Wird das Bild verkleinert, passt sie auch die Auflösung an (1080p → 720p). Der restliche Name bleibt wie im Original
- „Antwort merken“ oder unter „Ausgabe & Zeitplan“: immer fragen, immer anpassen oder nie
