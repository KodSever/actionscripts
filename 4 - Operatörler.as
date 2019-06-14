Operatörler
-------------------------------------------------------------------------------------
Matematiksel Operatörler
var islemsonucu:Number;
var a:Number = 20;
var b:Number = 5;
islemsonucu= a * b; //100
--------------------------------------------------------------------------------------------
Stringle Sayi Toplama
var islemsonucu:String;
var a:String = "20";
var b:Number = 5;
islemsonucu= a + b;
trace(islemsonucu); //205 string ifade olur.
-------------------------------------------------------------------------------------------
%Mod Alma(Kalanı Verir)
var islemsonucu:Number;
var a:Number = 152;
var b:Number = 5;
islemsonucu= a % b; // 152/2 den kalan 2 dir.
-------------------------------------------------------------------------------------------
Atama Operatörleri
Eşittir(=)
-------------------------------------------------------------------------------------
var ash:Number = 10;
var yeni:Number = 50;
ash yeni+yeni;
trace(ash); //Eşittir sağdan sola doğru atar.
------------------------------------------------------------------------------------------
Topla ve Eşitle( += )
var a:Number =10;
a+=5; //kısaltma yazılım
//a=a+5; ile a+=5 yazılım aynıdır
trace(a); //15
-----------------------------------------------------------------------------------------
Çarp ve Eşitle(*=)
var a:Number =10;
a*=5; //50
a*=5; //250
trace(a);
------------------------------------------------------------------------------------------
Böl ve Eşitle ( /= )
var a:Number =10;
a/=5; //2
trace(a);
------------------------------------------------------------------------------------------
Modunu Al ve Eşitle ( %= )
var a:Number =11;
a%=5; //kalan 1
trace(a);
-------------------------------------------------------------------------------------
Çıkar ve Eşitle ( -= )
var a:Number =11;
a-=5; //Çıkarma işlemi sonucu 6
trace(a);
-------------------------------------------------------------------------------------------
Arttırma Operatörü(sayi++)
var a:Number=1;
a++;
trace(a); //Sonuc 2
-------------------------------------------------------------------------------------------
//Sayinin ilk değerine ihtiyaç yoksa ++sayi varsa sayi++ yazacağız
Arttırma Operatörü(++sayi)
-----------------------------------------------------------------------------------------
var a:Number=1;
var b:Number=10;
b=++a;
trace(b) //Sonuc 2
-----------------------------------------------------------------------------------------
++ Operatörün Sağda ya da Soldaki Kullanımı
b=a++; //a’nın değerini b’ye eşitle sonra anın değerini 1 arttır
b=++a; // a’nın değerini 1 arttır sonra anın değerini b’ye eşitle
------------------------------------------------------------------------------------------
Mantıksal Operatörler
Eşitse(==)
var a:Number =10;
var b:Number =20;
if(a==b)
{
trace("a değişkeni b değişkenine eşittir.");
}
//Sonuc boş çünkü eşit değildir.
------------------------------------------------------------------------------------------
Eşit Değilse(!=)
var a:Number =10;
var b:Number =20;
if(a!=b)
{
trace("a değişkeni b değişkenine eşit değildir.");
}
//a değişkeni b değişkenine eşit değildir. Böylece trace çalışır.
------------------------------------------------------------------------------------------
Farklı Veri tiplerinde Karşılaştırma İşlemi
var a:String ="10";
var b:Number =20;
if(a==b)
{
trace("a değişkeni b değişkenine eşit değildir.");
}
//Hata verir çünkü veri tipleri farklı
-------------------------------------------------------------------------------------------
String lerde Eşitse(==)
var a:String ="10";
var b:String ="20";
if(a==b){
trace("a stringi b stringine eşittir.");
}
-------------------------------------------------------------------------------------------
Veri Tipini Bilmediğimiz Durumlar İçin(*)
var a:* =10;
var b:* ="10";
if(a==b){
trace("a nın değeri b nın değerine eşittir.");
}
//anın değeri b nin değerine eşittir. Trace çalışır.
//* işareti hepsi anlamına gelir. İçerisine bütün veritiplerini
alabilecek duruma gelir.
//Bir tane * olması yeterlidir. Eşit gibi çalışması için
-------------------------------------------------------------------------------------------
Kesin Eşitse(===)
var a:* =10;
var b:* ="10";
var c:*;
if(a===b){
trace("a nın değeri b nın değerine kesin eşittir.");
trace(c); //undefined
}//anın değeri b nin değerine eşit ama tipleri farklıdır. Böylece kesin
eşit değildir Trace çalışmaz.
-------------------------------------------------------------------------------------------
Küçüktür Büyüktür İlişkisel Operatörler (< >)
var a:Number =10;
var b:Number =20;
if(a<b)
{
trace("a b den küçüktür.");
}// a b den küçüktür yazar
-------------------------------------------------------------------------------------------
Küçük Eşittir Büyük Eşittir İlişkisel Operatörler (<= >=)
var a:Number =10;
var b:Number =10;
if(a<=b)
{
trace("a b den küçük eşittir.");
}// a b den küçük eşittir yazar
-------------------------------------------------------------------------------------------
Veri tipi Kontrolünü Yapan İs İlişkisel Operatörü(is)
var a:Number =10;
trace(a is String);
//False değeri dönecektir.
var a:Number =10;
var kontrol:Boolean = a is Number;
trace(kontrol);
//a Number olduğu için kontrol içine true değerini atar.
//a +tamsayi olduğu için is (Number int uint) hepsi true verir.
-------------------------------------------------------------------------------------------
