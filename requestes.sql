--Ведомость лекарств, пользующихся наибольшим спросом за месяц с указанием объема выручки--
SELECT
    m."MedicinesName",
    SUM(s."NumberOfPackagesSold") AS "TotalPackagesSold",
    SUM(s."SummaryPrice") AS "TotalRevenue"
FROM
    public.sales s
JOIN
    public.medicines m ON s."ArticulMedicine" = m."Articul(ID)"
WHERE
    s."SaleDate" >= '2023-10-01' AND s."SaleDate" < '2023-11-01'
GROUP BY
    m."Articul(ID)", m."MedicinesName"
ORDER BY
    "TotalPackagesSold" DESC;

--Ведомость популярных показаний за месяц--
SELECT
    i."IndicatorName",
    COUNT(*) AS "TotalSales"
FROM
    public.sales s
JOIN
    public.medicines_indications mi ON s."ArticulMedicine" = mi."IDMedicines"
JOIN
    public.indications i ON mi."IDIndicator" = i."IDIndicator"
WHERE
    s."SaleDate" >= '2023-10-01' AND s."SaleDate" < '2023-11-01'
GROUP BY
    i."IndicatorName"
ORDER BY
    "TotalSales" DESC;

--Отчет о проданных лекарствах на указанную дату--
SELECT
    s."IDSales",
    m."MedicinesName",
    s."NumberOfPackagesSold",
    s."SummaryPrice"
FROM
    public.sales s
JOIN
    public.medicines m ON s."ArticulMedicine" = m."Articul(ID)"
WHERE
    s."SaleDate" = '2023-10-01 10:00:00'; 
