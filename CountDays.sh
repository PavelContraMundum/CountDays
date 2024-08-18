
#!/bin/zsh

# Kontrola, zda byly zadány správné parametry
if [ $# -ne 2 ]; then
  echo "Použití: $0 'DD. MM. YYYY' pocet_dni"
  exit 1
fi

# Přijetí parametrů
input_date=$1
days_to_add=$2

# Převod zadaného data do formátu YYYY-MM-DD pro jednodušší zpracování
formatted_date=$(date -j -f "%d. %m. %Y" "$input_date" "+%Y-%m-%d")

# Výpočet nového data
new_date=$(date -j -v+"$days_to_add"d -f "%Y-%m-%d" "$formatted_date" "+%d. %m. %Y")

# Zobrazení výsledného data
echo "Původní datum: $input_date"
echo "Po připočtení $days_to_add dní: $new_date"


































