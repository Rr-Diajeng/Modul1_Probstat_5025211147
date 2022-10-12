# Modul1_Probstat_5025211147
Praktikum Probstat 1

## Identitas
| Name                                | NRP         | Kelas      |
| ---                                 | ---         | -----------|
| Rr. Diajeng Alfisyahrinnisa Anandha | 5025211147  | Probstat A |

## Soal 1

### Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya.



### a. Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi  sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi ? (distribusi Geometrik)

``` Volt
#a
x <- 3
p <- 0.2
peluang <- dgeom(x, 1 - p)
print(peluang)

```


<img width="960" alt="image" src="https://user-images.githubusercontent.com/91377782/195317538-4492b82f-2b45-46db-8281-7d1415c5ae2a.png">


> Hasil dari peluang penyurvei bertemu 3 orang yang tidak menghadiri acara vaksinasi sebelum keberhasilan pertama dengan menggunakan distribusi geometrik adalah 0,0064


### b. Mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 )

``` Volt
#b
n <- 10000
ratarata <- mean(rgeom(n, p) == 3)
print(ratarata)

```

<img width="960" alt="image" src="https://user-images.githubusercontent.com/91377782/195319016-03d066d8-7f79-44fe-8c09-463fe745488d.png">

> Mean dari distribusi geometrik dengan 10000 data random akan menghasilkan rata-rata yang selalu berubah karena kita menggunakan data random. Misal, untuk percobaan pertama, mean yang kita dapatkan adalah
<img width="305" alt="image" src="https://user-images.githubusercontent.com/91377782/195319720-0120107d-39cf-4a1e-adc7-c084cf889b32.png">


> Lalu saat kita nge run lagi, hasil dari mean akan berubah yaitu menjadi 
<img width="325" alt="image" src="https://user-images.githubusercontent.com/91377782/195319646-9f39caa8-c1aa-4dd8-8066-ef1b836ff06f.png">


### c. Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?

> Dari point a dan b, terdapat perbedaan bahwa kalau poin `a` kita mendapatkan peluang distribusi geometrik yang tetap namun pada poin `b`, kita mendapatkan hasil yang `berubah-ubah` karena kita menggunakan data random untuk poin `b`


### d. Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama
>Membuat histogram `hist()` dengan `rgeom()` untuk parameter `n` dan `p`

``` Volt
#d
set.seed(1)
hist(rgeom(n, p), main = "hist")

```

<img width="649" alt="image" src="https://user-images.githubusercontent.com/91377782/195323009-05415b81-450a-47f9-8b79-068a01306bf3.png">

### e. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik.

``` Volt
#e
rataan = 1 / p
paste("Nilai rataan:", rataan)

varian = (1 - p) / (p ^ 2)
paste("Nilai varian:", varian)

```

<img width="960" alt="image" src="https://user-images.githubusercontent.com/91377782/195323672-3a2aabce-9462-4e3e-9c99-8150ed2fe756.png">

> Dari hasil perhitungan diatas, dapat kita ambil kesimpulan bahwa `rataan` ialah `5` dengan variansi `20`


## Soal 2
### Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan :

### a. Peluang terdapat 4 pasien yang sembuh.

``` Volt
n <- 20
p <- 0.2

#a
x <- 4
binom = dbinom(x, n, p)

print(binom)

```

<img width="955" alt="image" src="https://user-images.githubusercontent.com/91377782/195324192-d6c1f42b-f00b-4c5d-bcca-6dd6c024ac33.png">

> Maka, peluang terdapat 4 pasien yang sembuh dengan menggunakan distribusi binomial adalah `0.2`

### b. Gambarkan grafik histogram berdasarkan kasus tersebut.

``` Volt
#b
hist(rbinom(x, n, p))

```

<img width="960" alt="image" src="https://user-images.githubusercontent.com/91377782/195324528-7939becc-8a9c-4b4f-9631-c9eba77fd4a8.png">

> Grafik tersebut didapat dari parameter `x`, `n`, dan `p`

### c. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Binomial.

``` Volt
#c
rataan <- n * p
variansi <- n * p * (1 - p)

print(rataan)
print(variansi)
```

<img width="960" alt="image" src="https://user-images.githubusercontent.com/91377782/195324732-f44431e9-83e1-4fde-adae-36cbed7237a6.png">

> Hasil `rataan` yang didapat dengan menggunakan distribusi binomial adalah `4` dan `variansi` nya ialah 3.2

## Soal 3
### Diketahui data dari  sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis 4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson)

### a. Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?

``` Volt
lamda <- 4.5

#a
x <- 6
pel <- dpois(x, lamda)
print(pel)

```

<img width="958" alt="image" src="https://user-images.githubusercontent.com/91377782/195325105-847abb55-583c-4ba3-9aff-4b6cbbb0d727.png">

> Peluang 6 bayi akan lahir di rumah sakit besok adalah `0.12812` dengan menggunakan distribusi poisson

### b. simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini  selama setahun (n = 365)

``` Volt
#b
n <- 365
hist(rpois(n, lamda))

```

<img width="960" alt="image" src="https://user-images.githubusercontent.com/91377782/195325420-6d7c0816-63c2-46c8-905e-72194050e22e.png">

> Histogram tersebut memperlihatkan data kelahiran 6 bayi yang akan lahir selama setahun

### c. dan bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan

> Kesimpulannya ialah untuk poin `a`, kita tidak mengambil kemungkinan 6 bayi lahir dalam satu tahun sedangkan untuk poin `b`, kita mengambil kemungkinan 6 bayi akan lahir dalam 1 tahun 

### d. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Poisson.

``` Volt
#d
rataan <- lamda
variansi <- lamda
print(rataan)
print(variansi)

```
<img width="951" alt="image" src="https://user-images.githubusercontent.com/91377782/195326150-66ddc27f-3f9d-45dd-909a-ebd70df0b525.png">

> Hasil `rataan` yaitu `4.5` dan hasil `variansi` adalah `4.5` juga


## Soal 4

### Diketahui nilai x = 2 dan v = 10. Tentukan:

### a. Fungsi Probabilitas dari Distribusi Chi-Square.

``` Volt
x <- 2
v <- 10

#a
peluang <- dchisq(x, v)
print(peluang)

```

<img width="952" alt="image" src="https://user-images.githubusercontent.com/91377782/195326503-5c76c650-fbca-4714-99c5-ad0b80f0f954.png">

> Hasil peluangnya dengan menggunakan chi-square untuk parameter `x = 2` dan `v = 10` adalah `0.007664`

### b. Histogram dari Distribusi Chi-Square dengan 100 data random.

``` Volt
#b
n <- 100
hist(rchisq(n, v))

```

> Hasil histogram dari 100 data random dengan menggunakan Chi-Square adalah sebagai berikut

<img width="944" alt="image" src="https://user-images.githubusercontent.com/91377782/195326877-879c3d23-c719-4d6c-9b65-b33bcbbfecd5.png">

### c. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Chi-Square.

``` Volt
#c
rataan <- v
variansi <- 2 * v

print(rataan)
print(variansi)

```

<img width="960" alt="image" src="https://user-images.githubusercontent.com/91377782/195327097-ef5ded0d-fb8c-4559-850b-8e3dbf67632a.png">

> Hasil `rataan` ialah `10` dan `variansi` adalah `10`


## Soal 5

### Diketahui bilangan acak (random variable) berdistribusi exponential (λ = 3). Tentukan

### a. Fungsi Probabilitas dari Distribusi Exponensial 

``` Volt
lamda <- 3

#a
prob <- rexp(1, rate = lamda)
print(prob)

```

<img width="960" alt="image" src="https://user-images.githubusercontent.com/91377782/195327581-1ac62ab5-8d4d-40ca-9a98-f063b853faf5.png">

> Hasil fungsi probabilitas untuk  `λ = 3` pada distribusi exponensial adalah `0.05293`

### b. Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random

``` Volt
#b
hist(rexp(10, rate = lamda))
hist(rexp(100, rate = lamda))
hist(rexp(1000, rate = lamda))
hist(rexp(10000, rate = lamda))

```
<img width="652" alt="image" src="https://user-images.githubusercontent.com/91377782/195328144-de25e8be-6676-4594-9703-f6ddedf5da1f.png">

<img width="648" alt="image" src="https://user-images.githubusercontent.com/91377782/195328204-d396298a-1fd5-4263-a4f3-c48e2cf73fab.png">

<img width="648" alt="image" src="https://user-images.githubusercontent.com/91377782/195328265-44ef9ddd-2b96-4af8-93ff-d0c348531e21.png">

<img width="660" alt="image" src="https://user-images.githubusercontent.com/91377782/195328331-b1e98505-cb7f-4edf-a2fb-af7d814e0828.png">


### c. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Exponensial untuk n = 100 dan λ = 3
Petunjuk: 
Gunakan set.seed(1)
Gunakan fungsi bawaan R

``` Volt
#c
n <- 100
set.seed(1)

rataan <- mean(rexp(n, rate = lamda))
variansi <- (sd(rexp(n, rate = lamda)))^ 2
print(rataan)
print(variansi)

```

<img width="960" alt="image" src="https://user-images.githubusercontent.com/91377782/195328571-5b3a5655-425f-4228-bd33-3171bba8e028.png">

> Hasil dari `rataan` ialah `0.343558` dan `variansi` adalah `0.065607`

## Soal 6
###  Diketahui generate random nilai sebanyak 100 data, mean = 50, sd = 8. Tentukan
### a. Fungsi Probabilitas dari Distribusi Normal P(X1 ≤ x ≤ X2), hitung Z-Score Nya dan plot data generate randomnya dalam bentuk grafik. Petunjuk(gunakan fungsi plot()).
Keterangan : 
X1 = Dibawah rata-rata 
X2 = Diatas rata-rata
Contoh data :
1,2,4,2,6,3,10,11,5,3,6,8
rata-rata = 5.083333
X1 = 5
X2 = 6


``` Volt
n <- 100
mean <- 50
sd <- 8

#a
set.seed(1)
var <- rnorm(n, mean, sd)
rataan <- mean(var)

x1 <- floor(rataan)
x2 <- ceiling(rataan)

print(x1)
print(x2)
print(rataan)

zscore <- (var - rataan) / sd(var)
plot(zscore)

```

<img width="960" alt="image" src="https://user-images.githubusercontent.com/91377782/195330415-4d17cc5e-7b65-4fd4-85d8-c7104f9ddec8.png">

<img width="657" alt="image" src="https://user-images.githubusercontent.com/91377782/195330460-ab2e3906-20ca-4db1-9a21-a6ee64f10c10.png">

> Hasil `x1` ialah `50` dan `x2` adalah `51` dengan `rataan distribusi normal` adalah `50.871` dan kita juga dapat menemukan `Z-score` nya yang dibutuhkan untuk membuat `plot()`

### b. Generate Histogram dari Distribusi Normal dengan breaks 50 dan format penamaan: 
NRP_Nama_Probstat_{Nama Kelas}_DNhistogram
Contoh :
312312312_Rola_Probstat_A_DNhistogram

``` Volt
#b
breaks <- 50
hist(var, breaks, main = "5025211147_Rr. Diajeng Alfisyahrinnisa Anandha_Probstat_{A}_DNhistogram")

```
> Histogram dari distribusi normal dengan breaks 50 ialah

<img width="960" alt="image" src="https://user-images.githubusercontent.com/91377782/195331226-f7039343-1b98-4bea-bb6b-b2565ca9e754.png">

### c. Nilai Varian (σ²) dari hasil generate random nilai Distribusi Normal.

``` Volt
#c
variansi <- (sd(var)) ^ 2
print(variansi)

```

<img width="960" alt="image" src="https://user-images.githubusercontent.com/91377782/195331520-a438d617-b7fb-4277-a96b-c3bab66eb5d4.png">

> Dengan hasil variansi dari generate random nilai distribusi normal ialah `51.63277`




