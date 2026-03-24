# Definicja plików do usunięcia
TEMP_FILES = *.o *.out *.log *.aux *.toc *.synctex.gz *.fdb_latexmk *.fls 

.PHONY: clean

# Główna i jedyna komenda
clean:
	@echo "Sprzatanie smieci..."
	rm -f $(TEMP_FILES)
	@echo "Gotowe! Folder jest czysty."