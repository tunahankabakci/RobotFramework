# **Trafik Sigortası Robot Framework Test Otomasyon**

## Kütüphanelerin tanımlanması ##
* Robot Framework
* Debug Library  
* Faker Library  
* Selenium Library  

## Kütüphanelerin Yüklenmesi
```
pip install robotframework
pip install robotframework-seleniumlibrary
pip install robotframework-debuglibrary
pip install robotframework-faker
```
##       ya da

```
pip install -r ./requirments.txt
```

## Chrome Web Driver Yüklenmesi
``` Python
# NOT=Chrome Driver dosyasının bilgisayarınıza uygun olarak seçıilmesine dikkat ediniz ve venv>Scripts içine eklemeyi unutmayınız.

https://chromedriver.chromium.org/downloads

```




## Test Koşumu

``` Python

#Tests klasöründeki tüm testlerin koşulması için;
robot ./Tests/*

#Belirli bir test dosyasını koşmak için;
robot ./Test/TrafikSigortasiTest.robot

#Belirli test case koşmak için;
robot -t "test case name" ./Test/TrafikSigortasiTest.robot

```

## Test kayıtlanın oluşacağı klasörün oluşturulması

``` Python

#rapor dosyası oluşturmak için;
#Bu proje için rapor klasörünün adı reports olarak belirlenmiştir.
robot -d reports ./Test/TrafikSigortasiTest.robot  

```

