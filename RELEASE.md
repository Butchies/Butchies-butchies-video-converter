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

**Neu in 1.7.1**
- Beenden mit 2 Monitoren: Das Logo springt jetzt in die richtige Richtung zurück zum Hauptmonitor

**Neu in 1.7.0: Zwei-Monitor-Ansicht**
- 🖥🖥 Neuer Knopf oben rechts „2 Monitore“: Studio auf dem Hauptmonitor, **Ordner-Abgleich + normaler Player** auf dem anderen Bildschirm. Vorher/Nachher bleibt im Studio
- ⇄ „Monitore tauschen“ und „1 Monitor“ (zurück zu einem Fenster) in beiden Fenstern
- Wird beim Beenden gemerkt: beim nächsten Start geht es wieder genauso auf
- Start: Logo erscheint auf dem Hauptmonitor, springt mit Flash rüber – erst dann öffnet sich das zweite Fenster und die Schrift erscheint dort. Beenden genau umgekehrt
- Richtung der Animation einstellbar (Design-Fenster): automatisch, nach links oder nach rechts – passt sich jedem Design an
- ▶ Jede Datei im Ordner-Abgleich direkt abspielen

**Neu in 1.6.3 – Final (stabile Version)**
- 🧠 KI-Analyse: Film anklicken → klappt auf (wie immer). Während umgewandelt wird bleibt sie zu, nach dem Ende klappt sie wieder auf

**Neu in 1.6.2**
- 🌡️ PC-Auslastung: **Auto = immer 100 %** (volle Leistung). Nur auf „Manuell“ kann man herunterstellen – dein Wert wird gemerkt
- 📁 Ausgabe: Deine Einstellungen bleiben gespeichert, auch auf **Auto**. Neuer Knopf **↺ Auf Original zurücksetzen**, falls man aus Versehen etwas verstellt hat

**Neu in 1.6.1**
- ↩️ KI-Autopilot wieder mit allen Bereichen (Grafikkarten, Codec, Qualität, Auflösung, Ton & Untertitel, Ausgabe) – was du auf „Manuell“ stellst, wird gespeichert und heißt jetzt **⭐ Dein Standard**
- 🧹 „Ausgabe“ aufgeräumt: nur noch Ordner + Dateiname (+ Vorschau der Namen)
- ⚙ **Einstellungen** (Knopf oben im KI-Autopilot): PC & Strom (Auslastung, Nacht-Planer, Start, Danach, Ruhezustand/Monitore), Dateinamen (Codec im Namen, Gruppen-Name), Profi-Optionen Video (Inhalt erkennen, HDR), Benachrichtigung, Aussehen & Hilfe
- 🎙️ Ton aufbereiten bleibt eigenes Werkzeug (Knopf „🎙️ Ton“)

**Neu in 1.6.0**
- 🧹 **Aufgeräumt**: Im KI-Autopilot steht nur noch „Ausgabe & Zeitplan“ – alles andere macht die KI. Wer selbst etwas festlegen will: neuer Knopf **⚙ Einstellungen** (Vorlagen, Zielgröße, Grafikkarten, Auslastung, Codec, Qualität, Auflösung, Ton & Untertitel …). Was dort auf „Manuell“ steht, gilt dauerhaft
- 🎙️ **Ton aufbereiten ist ein eigenes Werkzeug** (Knopf „🎙️ Ton“ neben „Umwandlung starten“) – beim normalen Umwandeln wird der Ton nie mehr gemessen oder bearbeitet

**Neu in 1.5.9 – Fehlersuche Tempo & Ruhezustand**
- 🚀 **Grafikkarten wieder schnell**: Grafikkarten-Jobs werden nicht mehr im Auslastungs-Takt angehalten und laufen mit normaler Priorität; die Windows-Energiesparbremse („Effizienzmodus“) wird für FFmpeg abgeschaltet
- 🐢 Hintergrund-Prüfung „läuft ein anderer Player?“ startete bei Abwesenheit alle 15 s PowerShell und kostete Rechenzeit – jetzt höchstens alle 2 Minuten
- 🎙️ Lautstärke-Messung bei langen Filmen nur noch an 12 Stellen (liest ca. 1/10 der Datei statt den ganzen Film – wichtig beim NAS)
- 😴 **Ruhezustand wirklich verhindert**: zusätzlich echte Windows-Power-Requests (wirken auch beim „modernen Standby“). Bei PCs mit modernem Standby werden die Monitore nicht mehr ausgeschaltet – das hat dort den Ruhezustand ausgelöst
- 🗂️ Zwischendateien „….teil.mkv“ (vom Umwandeln) werden im Ordner-Abgleich nie mehr als Film gezeigt; liegengebliebene Reste (älter als 12 h) räumt das Programm selbst weg

**Neu in 1.5.8**
- 🎨 Neues Design **„Hell Blau“** – wie „Hell“, nur in Blau-Weiß (passend zu Installer und Symbol)

**Neu in 1.5.7**
- 🟦 Kamera-Symbol in Blau-Weiß (gleiche Form wie bisher, passend zum Kino-Installer) – Installer, Programm, Verknüpfung

**Neu in 1.5.6**
- 🎬 **Installer im Kino-Look (Blau-Weiß)**: Filmstreifen mit Filmklappe auf der Willkommens-Seite, blauer Kopfbereich mit Filmstreifen-Rand, Seiten als „Szenen“, „Film ab!“ und „Abspann“
- 🟨 Wieder das goldene Kamera-Symbol (Installer, Programm, Verknüpfung)
- Überall der volle Name „Butchies Video Converter **AI**“, alte Verknüpfungen werden ersetzt

**Neu in 1.5.5**
- ⚡ **„Jeder Film gleich laut“ etwa 10× schneller**: Die KI misst die Lautstärke vorher einmal kurz (ca. 1 Min. bei 2 h Film) und stellt dann nur noch fest lauter/leiser – das Umwandeln wird nicht mehr vom Ton ausgebremst, Ergebnis genau auf Fernseh-Lautstärke
- 🏷️ Anzeige „🎞️ wandelt um + 🎙️ Ton (macht der Prozessor)“, wenn beim Umwandeln auch der Ton bearbeitet wird
- ⏻ Hast du selbst Filme abgebrochen, fragt das Programm am Ende erst, bevor es den PC herunterfährt oder in den Ruhezustand schickt

**Neu in 1.5.4**
- 🐢➡️ Ist der Prozessor nicht ausgewählt, werden „nur Ton aufbereiten“-Aufgaben erst **nach** allen Umwandlungen gemacht – einzeln hintereinander, nicht mehr gleichzeitig. Der PC wird dadurch nicht mehr ausgebremst.

**Neu in 1.5.3**
- 🏷️ Neben Prozessor/Grafikkarte steht jetzt, was gerade passiert: „🎞️ wandelt um“ oder „🎙️ nur Ton aufbereiten (Bild wird kopiert)“

**Neu in 1.5.2**
- 💾 „Wer arbeitet mit?“ (Prozessor/Grafikkarten) wird jetzt gemerkt – nach dem Neustart ist genau das angehakt, was du gewählt hast

**Neu in 1.5.1**
- 🎨 **Neuer Installer im Butchies-Look** (Lila/Pink) mit neuem Programm-Symbol – gilt auch für Programm und Desktop-Verknüpfung
- 🟣 Das Programm startet beim ersten Mal im Design **Neon Lila**
- ❔ **Kurzanleitung beim ersten Start** (6 Schritte, jederzeit wieder über ❔ oben)

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
