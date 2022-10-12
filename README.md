# Modul1_Probstat_5025211147
Praktikum Probstat 1

## Identitas
| Name                                | NRP         | Kelas      |
| ---                                 | ---         | -----------|
| Rr. Diajeng Alfisyahrinnisa Anandha | 5025211147  | Probstat A |

## Soal 1
Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya.

### a. Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi  sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi ? (distribusi Geometrik)

```
x <- 3
p <- 0.2
peluang <- dgeom(x, 1 - p)
print(peluang)

'''

<img width="960" alt="image" src="https://user-images.githubusercontent.com/91377782/195317538-4492b82f-2b45-46db-8281-7d1415c5ae2a.png">

> Hasil dari peluang penyurvei bertemu 3 orang yang tidak menghadiri acara vaksinasi sebelum keberhasilan pertama dengan menggunakan distribusi geometrik adalah 0,0064

