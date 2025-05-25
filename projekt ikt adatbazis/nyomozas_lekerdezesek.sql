--! Kérdések és válaszok!(8db):--


--1. Kik mondták, hogy „nem tudnak semmit” vagy „nem emlékeznek a részletekre”?--
SELECT sz.nev, k.vallomas
FROM kihallgatas k
JOIN szemely sz ON k.szemely_id = sz.id
WHERE k.vallomas LIKE '%nem tud%' OR k.vallomas LIKE '%nem emlék%';


-- 2. Hányszor lett kihallgatva egy adott személy?--
SELECT sz.nev, COUNT(*) AS kihallgatasok_szama
FROM kihallgatas k
JOIN szemely sz ON k.szemely_id = sz.id
GROUP BY sz.nev
ORDER BY kihallgatasok_szama DESC;


-- 3. Van-e olyan személy, akit még nem hallgattak ki?--
SELECT sz.nev
FROM szemely sz
LEFT JOIN kihallgatas k ON sz.id = k.szemely_id
WHERE k.id IS NULL;


-- 4. Mely kihallgatásokban említik Helgát?--
SELECT k.id, sz.nev AS kihallgatott, k.vallomas
FROM kihallgatas k
JOIN szemely sz ON k.szemely_id = sz.id
WHERE k.vallomas LIKE '%Helga%';


-- 5. Melyik nyomozó adott le a legtöbb kihallgatást?--
SELECT n.nev, COUNT(*) AS kihallgatasok_szama
FROM kihallgatas k
JOIN nyomozo n ON k.nyomozo_id = n.id
GROUP BY n.nev
ORDER BY kihallgatasok_szama DESC;


-- 6. Kik utaltak arra, hogy valaki „ideges” vagy „gyanús” volt?--
SELECT sz.nev AS kihallgatott, k.vallomas
FROM kihallgatas k
JOIN szemely sz ON k.szemely_id = sz.id
WHERE k.vallomas LIKE '%ideges%' OR k.vallomas LIKE '%gyanús%';


-- 7. Mely kihallgatásokban említik Ádámot vagy Fruzsinát?--
SELECT k.id, sz.nev AS kihallgatott, k.vallomas
FROM kihallgatas k
JOIN szemely sz ON k.szemely_id = sz.id
WHERE k.vallomas LIKE '%Ádám%' OR k.vallomas LIKE '%Fruzsina%';


-- 8. Ki az áruló?--
SELECT *
FROM szemely
WHERE arulo = 1;

