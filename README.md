# Analiza Wyników Sprzedażowych i Lojalności Klientów (Olist)

## Cel projektu
P  rzegląd wyników sprzedażowych platformy e-commerce w podziale na kategorie i region zamówień oraz analizę retencji klientów (Returning Customers).

## Wykorzystane technologie
* **SQL (MySQL):** Integracja danych relacyjnych, przygotowanie widoków, 
* **Power BI:** Modelowanie danych, identyfikacja unikalnych klientów, Time Intelligence.

## Zakres prac
1. **Modelowanie i przygotowanie danych w SQL:**
   - Konsolidacja danych z tabel `orders`, `items`, `products` oraz `customers` przy użyciu złączeń `LEFT JOIN`.
   - Implementacja tłumaczeń kategorii produktów z języka portugalskiego na angielski.
   - Obliczenie marży operacyjnej na poziomie produktu: `Price - Freight Value (COGS)`.
   - Przygotowanie danych pod analizę lojalności poprzez stworzenie widoku v_dim_customers
2. **Wizualizacja i raportowanie (Power BI):**
   - **Analiza Lojalności:** Wyznaczenie liczby powracających klientów (Returning Customers) oraz ich udziału w całkowitej sprzedaży.
   - **Analiza Sprzedaży:** Monitorowanie przychodu i marży% w ujęciu czasowym oraz kategorii produktowych poprzez przychód, średnią wartość sprzedaży i koszt            zakupu
   - **Geografia:** Wizualizacja rozkładu klientów na mapie Brazylii z uwzględnieniem stanów i miast.

## Kluczowy wniosek
Projekt pozwolił na precyzyjne oddzielenie nowych klientów od powracających, co umożliwia ocenę skuteczności działań retencyjnych. Dodatkowo analiza średniej wartości sprzedaży i ceny zakupu wskazała kategorie o niskiej marżowości.

## Pliki w repozytorium
* `olist_analytical_views.sql` - skrypty SQL (widoki `v_sales_details`, `v_dim_customers`).
* `olist_dashboard.png` - zrzut ekranu raportu Power BI.
