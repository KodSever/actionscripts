Değişkenler
var a:Number = 15;
var b:Number; trace(b); //Nan
var c:Number = new Number(); //object tanımlamak istediğimizde
------------------------------------------------------------------------------------------
Global Değişkenler
var metin:String = "ActionScript Developer";
trace(metin); //(MANTIK ŞU: ÖNCE TANIMLA SONRA KULLAN)
//Global değişkenleri tanımlamadan trace ile yazdırırsak null verir.
Ama tanımladıktan sonra istediğimiz her yerden çağırabiliriz. Farklı
layerdan da sorabiliriz "ActionScript Developer" verir
//Aynı framede farklı layerdan değer isterse Actionscript
değişkenleri oluşturur, ancak değerleri "EN ÜST" layerdan atamaya
başlar.***
Sayılarda içerisinde değer yoksa null yerine nan diye cevap verir.
------------------------------------------------------------------------------------------
Lokal Değişkenler
var global:String="Bu global değişkendir. "
trace(global);
function localdegisken():void{
var local:String="Bu lokal değişkendir."}
//Fonksiyon dışında değişkenler otomatik olarak silinir. Değişkenleri
sürekli tanımlarız yer kaplar. Silmediğimiz değişkenler programı
yavaşlatır.
Lokal Global Farkı
//Global değişkenler Flash içerisinden her yerden her zaman
ulaşılabilir olmasıdır.
//Lokal değişkenler herhangi Kartezyen içerisinde tanımlamak ve
Kartezyen dışında silinmesini sağlamaktır.
---------------------------------------------------------------------------------------
Değişkenleri Silmek
var egitimSeti:Array=new Array("12");
delete egitimSeti[0]; //Silme İşlemi
trace(egitimSeti[0]); //Undefined
---------------------------------------------------------------------------------------
//Dizinin indeks numarasını kullanarak içini boşaltıyor.(undefined)
//Metinleri,int, uint, Number silmiyor
