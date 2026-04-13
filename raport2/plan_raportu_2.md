# Plan Raportu 2 - Projekt MiniMaps (Laboratorium PTI - Ćwiczenie 2)

**Temat przewodni:** Reprezentacje pozyskanej informacji, redukcja wymiarowości i ekstrakcja semantyki w kontekście nawigacji na kampusie PW (od ogółu do szczegółu).

*Uwaga projektowa: Wcielamy w to wnioski z Raportu 1 (literatura, zejście z problematyki całego PW do specyfiki/tajemnic wydziału, w tym np. "pieszo czy windą"), ale ubieramy to w twarde wymogi Laboratorium 2 (Kompresja, Reprezentacja, Semantyka vs Syntaktyka, Kodowanie binarne).*

---

## 1. Wstęp: Rewizja założeń (Wnioski z Lab 1) i Identyfikacja Surowych Danych
*   **Odniesienie do Lab 1:** Zmiana perspektywy z banalnych kwestii (ewakuacja, parking) na metodyczne ujęcie problemu od ogółu (kampus PW) do szczegółu (anomalie przepływu na Wydziale). 
*   **Definicja zebranych danych ("informacji syntaktycznej"):** Co właściwie jest zbiorem naszych danych? Surowe plany architektoniczne, zdjęcia korytarzy, zmierzone czasy ("pieszo vs winda") z obserwacji w terenie.
*   **Przegląd literatury:** Krótkie odniesienie do teorii *wayfindingu* jako procesu ekstrakcji użytecznej informacji w architekturze.

## 2. Weryfikacja, Ocena Jakości i Normalizacja Danych
*   **Ocena jakości obserwacji:** Analiza zebranych dotychczas danych mierzalnych (czasy przejścia winda/schody, ścieżki przepływu). 
*   **Normalizacja danych:** Sprowadzenie różnorodnych pomiarów terenowych do zunifikowanych miar i formatów potrzebnych do dalszego modelowania. Filtracja szumów obserwacyjnych (np. pominięcie skrajnych wyników z pomiarów czasowych).

## 3. Redukcja Nadmiarowości (Syntaktyka vs Semantyka)
*   *Cel: Minimalizacja rozmiaru z zachowaniem pełnej informacji nawigacyjnej.*
*   Bariera informacyjna architektonicznych planów ewakuacyjnych (są za bardzo obciążone syntaktycznie - posiadają mnóstwo niepotrzebnych kresek).
*   **Przejście z reprezentacji rastrowej/geograficznej na reprezentację semantyczną (topologiczną):** Udowodnienie przewagi map wektoryzowanych/grafowych ("doniosłość map wektoryzacji" - odpowiedź na krytykę z Raportu 1). Użytkownika interesuje tylko topologia relacji "punkt A połączony z punktem B", a nie grubość ściany budynku na planie i proporcje zachowane idealnie co do centymetra.

## 4. Kompresja Selektywna i Zarządzanie Archiwum Danych Obrazowych
*   **Kompresja nieodwracalna (stratna):** Omówienie jak uproszczenie planów pięter na Wydziale i w skali kampusu do formy schematu jest fizyczną "kompresją stratną informacji obrazowej" narzuconą przez cel utylitarny.
*   Zarządzanie archiwalnymi zbiorami planów PW a zoptymalizowana docelowa reprezentacja w nowym formacie.

## 5. Binarne Kodowanie Informacji i Pomiary
*   Jak reprezentować strukturę nawigacyjną (graf węzłów np. dla kampusu PW na poziomie ogólnym i wydziału jako "anomalii" na poziomie szczególnym) w pamięci komputera.
*   Kryteria porządkowania: Macierz sąsiedztwa vs listy sąsiedztwa – ocena przyrostu/kontroli informacji na bit reprezentacji. Ile bitów potrzeba, by zakodować drogę dla dylematu "winda czy schody"?

## 6. Optymalizacja z Użytkownikiem - Dobór Kryteriów Percepcji
*   **Interakcja z użytkownikiem:** Badanie (sondażowe/na próbie), czy po zastosowaniu powyższej "stratnej kompresji z selekcją informacji" (ekstrakcji tylko semantyki trasy) mapa/graf jest nadal użyteczny dla odbiorcy (czy rozumie "tajemnice" kierowania się na wydziale).
*   Kryteria i metryki oceny: Jak mierzymy, czy percepcja informacji przez studenta uległa poprawie (np. czas podjęcia decyzji o wyborze schodów/windy).

## 7. Wnioski
*   Ocena skuteczności zastosowanych transformacji informacji (od surowego zdjęcia planu aż do wyselekcjonowanej w bitach informacji użytecznej nawigacyjnie).

## 8. Bibliografia
*   Wymóg z Lab1 + źródła z zakresu Podstaw Teorii Informacji, kompresji różnicowej, projektowania UI/UX.
