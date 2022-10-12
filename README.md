# Modul1_Probstat_5025211147
Praktikum Probstat 1

## Identitas
| Name                                | NRP         | Kelas      |
| ---                                 | ---         | -----------|
| Rr. Diajeng Alfisyahrinnisa Anandha | 5025211147  | Probstat A |

## Soal 1
### Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya.

### a. Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi  sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi ? (distribusi Geometrik)

```
x <- 3
p <- 0.2
peluang <- dgeom(x, 1 - p)
print(peluang)

```

<img width="960" alt="image" src="https://user-images.githubusercontent.com/91377782/195317538-4492b82f-2b45-46db-8281-7d1415c5ae2a.png">

> Hasil dari peluang penyurvei bertemu 3 orang yang tidak menghadiri acara vaksinasi sebelum keberhasilan pertama dengan menggunakan distribusi geometrik adalah 0,0064

### Mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 )

```
n <- 10000
ratarata <- mean(rgeom(n, p) == 3)
print(ratarata)

```

<img width="960" alt="image" src="https://user-images.githubusercontent.com/91377782/195319016-03d066d8-7f79-44fe-8c09-463fe745488d.png">

> Mean dari distribusi geometrik dengan 10000 data random akan menghasilkan rata-rata yang selalu berubah karena kita menggunakan data random. Misal, untuk percobaan pertama, mean yang kita dapatkan adalah
> <img width="305" alt="image" src="https://user-images.githubusercontent.com/91377782/195319720-0120107d-39cf-4a1e-adc7-c084cf889b32.png">

> Lalu saat kita nge run lagi, hasil dari mean akan berubah yaitu menjadi 
> <img width="325" alt="image" src="https://user-images.githubusercontent.com/91377782/195319646-9f39caa8-c1aa-4dd8-8066-ef1b836ff06f.png">




