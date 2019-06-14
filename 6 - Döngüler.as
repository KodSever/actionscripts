Döngüler
-------------------------------------------------------------------------------------
//Yaptırmak istediğimiz işlemleri birden fazla yapma ihtiyacınız
varsa bunları döngü kullanarak istediğimiz kadar art arda
yaptırabiliriz.
-------------------------------------------------------------------------------------
For Döngüsü
for (var i:uint=1;i<11;i++)
{
trace(i);
}//Sonuc 1 2 3 4 5 6 7 8 9 10
-------------------------------------------------------------------------------------
//Döngüler çok hızlı çalıştığı için animasyonda döngüler kullanılmaz.
//Örnek olarak 1 den 1000e kadar döngü kullanıp nesnenin x
koordinatını döngünün değerini kullarak arttırdığımızda aradaki
geçişleri göremeyiz. Direkt olarak nesnenin koordinatı 1000de
görürüz.
-------------------------------------------------------------------------------------
For In Döngüsü
//Objeleri actionscript içerisinde, içerisinde istediğimiz türde bilgi
saklayabilen boş kümelerdir.
-------------------------------------------------------------------------------------
var obj:Object=new Object();
obj.ad="Ersin";
obj.bilgi="Actionscript 3.0";
obj.durum=true;
//Ad bilgi gibi farklı kelimelerle ilişkilendirilmiş değişkenler var
içerisinde ve bu isimleri bilmiyorsak bu tip bilgileri toplu halde
çekebilmek için for in döngüsü kullanırız.
for (var i:String in obj) //İ etiketlerin isimlerinin bilgisini saklar
{
trace(obj[i]);
}//Sonuç Ersin Actionscript 3.0 true alt alta yazar
//Eğer objenin ya da dizinin isimlerini biliyorsak trace(obj.ad)
şeklinde kullanırız.
-------------------------------------------------------------------------------------
For Each In Döngüsü
//Mantık olarak aynı işlemi görür.
var obj:Object=new Object();
obj.ad="Ersin";
obj.bilgi="Actionscript 3.0";
obj.durum=true;
for each(var icerik in obj)
{
trace(icerik);
}
-------------------------------------------------------------------------------------
For Each In Döngüsü ile For In Döngüsü Farkı
//For Each In veri tipini belirtmem gerekmez.
//For In veri tipini belirtmem gerekir.(String olmak zorundadır.)
//For Each direct objenin içerisindeki bilginin tek başına içeriğin
içine aktarılmasını sağlar.
//For In Objenin içerisindeki değişkeni kullanarak bilgiye ulaşır.
-------------------------------------------------------------------------------------
While Döngüsü
var i:uint=1;
while(i<10)
{
trace(i);
i++;
}
//Ardışık olarak ve ya belli bir arttırım katsayısıyla toplu verilere
ulaşmak için, toplu işlemler yapmak için kullanılan döngü türüdür.
-------------------------------------------------------------------------------------
While For Farkı
While da daha önceden isimli bir değişken oluşturmak zorundadır.
While parantezleri içinde değişken tanımlamamıza izin vermez.
Ayrıca ifdeki gibi i++ yazıp arttırma operatörü while ın
parantezlerinde kullanılmaz.
İf de değişkeni tanımlarken başlangıç değerini belirle, koşulu belirle
ve arttırmak için kullanacağımız işlemi belirliyorduk,
While da sadece koşulu belirliyoruz.
-------------------------------------------------------------------------------------
Do While Döngüsü
var i:uint=10;
do
{
trace(i);
i++;
}while(i<10)
// While ile aynı özelliklere sahiptir. Sadece küçük bir farkı vardır.
//While döngüsüne göre farkı yanlış olsa bile mutlaka 1 kez çalışır.
-------------------------------------------------------------------------------------
