-------------------------------------------------------------------------------------
İşlevler, belirli görevleri gerçekleştirdiğiniz ve programınızda
yeniden kullanılabilen kod bloklarıdır.
-------------------------------------------------------------------------------------
İki Yolla Fonksiyon Oluşturmak
function Mesaj():void
{
trace("Çalıştı.");
}
var Mesaj:Function=function():void
{
trace("Çalıştı");
}
-------------------------------------------------------------------------------------
Fonksiyonu Çalıştırmak
function Mesaj():void
{
trace("Çalıştı.");
}
Mesaj();
-------------------------------------------------------------------------------------
Fonksiyonu Başka Fonksiyona Atamak
function MesajOlumlu():void
{
trace("Çalıştı.");
}
function MesajOlumsuz():void
{
trace("Hata Oluştu.");
}
var sonuc:Function=MesajOlumlu;
sonuc(); //"Çalıştı" yazar.
sonuc=MesajOlumsuz; //MesajOlumsuz Fonksiyonunu atadı
sonuc(); //"Hata Oluştu" yazar.
//Önce MesajOlumlu fonksiyonunu sonuc fonksiyonuna atadı ve
sonuc fonksiyonunu çalıştırdı. Böylece ekrana Çalıştı yazdırdı.
//Sonra MesajOlumsuz fonksiyonunu sonuc fonksiyonuna atadı ve
sonuc fonksiyonunu çalıştırdı. Böylece ekrana Hata Oluştu yazdırdı.
-------------------------------------------------------------------------------------
Fonksiyona Sayi Parametre Atamak
function ParametreAlmak(a:Number, b:Number):void
{
trace(a,b); //20 10 yazar
trace(a+b); //30 yazar
}
ParametreAlmak(20,10);
-------------------------------------------------------------------------------------
Fonksiyona String Parametre Atamak
function ParametreAlmak(str:String):void
{
trace("Ersin"+str); //"Ersin Oymak" yazar
}
ParametreAlmak(Oymak);
-------------------------------------------------------------------------------------
Fonksiyona Object Parametre Atamak
function ParametreAlmak(gelenobj:Object):void
{
trace(obj.ad+" "+obj.soyad); //"Ersin Şengül" yazar
}
var obj:Object=new Object();
obj.ad="Ersin";
obj.soyad="Şengül";
ParametreAlmak(obj); 
-------------------------------------------------------------------------------------
Fonksiyona MovieClip Parametre Atamak
Biri mavi diğeri kirmizi olmak üzere iki tane MovieClip oluşturuyoruz
Şunları yazıyoruz.
function ParametreAlmak(mc:MovieClip):void
{
mc.x+=100;
}
ParametreAlmak(kirmizi);
-------------------------------------------------------------------------------------
Fonksiyon İçinde Fonksiyona MovieClip Parametre Atamak
function ParametreAlmak(fun:Function):void
{
fun(mavi);
}
function icMc(mc:MovieClip):void
{
mc.x+=300;
}
ParametreAlmak(icMc);
-------------------------------------------------------------------------------------
Fonksiyonlarda Ön Tanımlı Parametre Kullanmak
function Bilgi(a:Number , b:Number=5, c:Number=25):void
{
trace(a,b,c);
}
Bilgi(-125); //-125 5 25
Bilgi(-125,250); //-125 250 25
//Görüldüğü gibi fonksiyonun b sine ve c sine 5 ve 25
parametrelerini atadık. Böylece b ve c ye değer girmesek bile
otomatik değer atandı.(Dikkat a ya değer girmek zorundayız!)
-------------------------------------------------------------------------------------
function Bilgi(a:Number , b:Number):void
{
a++;
b++;
trace(a,b);
}
var rakam1:Number=10;
var rakam2:Number=20;
trace("Onceki durum:",rakam1,rakam2);
Bilgi(rakam1,rakam2);
trace("Sonraki durum:",rakam1,rakam2);
-------------------------------------------------------------------------------------
function Bilgi(objGelen:Object):void
{
objGelen.rakam1++;
objGelen.rakam2++;
trace(objGelen.rakam1, objGelen.rakam2);
}
var obj:Object=new Object()
obj.rakam1=10;
obj.rakam2=20;
trace("Onceki durum:", obj.rakam1, obj.rakam2);
Bilgi(obj);
trace("Sonraki durum:", obj.rakam1, obj.rakam2);
//Objeyiyi fonksiyona gönderdiğimiz için objenin değerleri değişti.
-------------------------------------------------------------------------------------
Fonksiyonlar İçerisinde Arguments Kullanmak
Fonksiyonlar içerisinde istediğim kadar parametre göndermek
için kullanılır.
//… İstediğiniz kadar parametre ve istedğiniz kadar veri tipiyle
gönderebilirsiniz demek ve args nin içerisine dizi gibi oluşturacağım
demek. Artık args den ulaşabilirsiniz demek(args ye for döngüsüyle
ulaşılır.)
//args.length kaç parametre girdiğimizi belirler
function Bilgi(…args):void
{
for (var i:uint=0;i<args.length;i++)
{
trace(args[i]);
}
}
Bilgi(5,10,15,20,"Merhaba",true);
-------------------------------------------------------------------------------------
Fonksiyonlarda Hem Parametre Hem De Arguments Kullanmak
function Bilgi(X:int,…args):void
{
for (var i:uint=0;i<args.length;i++)
{
trace(args[i]);
}
}
Bilgi(5,10,15,20,"Merhaba",true);
-------------------------------------------------------------------------------------
Fonksiyonlarda Parametre Döndürmek
String Parametre Döndürmek
function Bilgi():String
{
return "Merhaba"
}
var gelenBilgi:String=Bilgi();
trace(gelenBilgi);
// Bilgi fonksiyonun sonucu string çıktısı üretmek zorunda
//Bilgi fonksiyonunda return değeri gelenBilgiye eşitledi.
Number Parametre Döndürmek
function Bilgi(rakam:Number):Number
{
return rakam+rakam;
}
var gelenBilgi:Number=Bilgi(10);
trace(gelenBilgi);
// Bilgi fonksiyonun sonucu Number çıktısı üretmek zorunda
//Return fonksiyonları bitirmek için de kullanılır.
//Return deyiminden sonraki kodlar çalışmaz.
-------------------------------------------------------------------------------------
Fonksiyonu Sonlandırma(return)
function Bilgi(rakam:Number):void
{
if(rakam==10)
{
return ;
}
trace("Gelen rakam 10 dan farklı bir değere sahip.")
}
Bilgi(10);
//rakam 10 olduğu için if çalışır ve returnle fonksiyon sonlanır.Ama
10 olmasaydı trace çalışıp, "Gelen rakam 10 dan farklı bir değere
sahip." Diye yazardı.
-------------------------------------------------------------------------------------
İç İçe Fonksiyon
function Temel():String
{
function Parca():String
{
return "Action";
}
function Parca2():String
{
return "Script 3.0";
}
return(Parca1()+Parca2());
}
trace(Temel());
-------------------------------------------------------------------------------------
NOT:Fonksiyon içindeki oluşturulan değişken adı ile dışarıda
oluşturulan genel değişkenin adı aynı olsa, atama yapıldığında
fonksiyon içindeki değişkene atama yapılıyor.
Değişken adları farklı olsa fonk içindeki değişkene atama yapılsa
kullandıktan sonra silinir ve dışardaki değişkenin değerini
değiştirmez.
Değişken adları farklı olsa genel tanımlanmış değişkene atama
yapılsa dışardaki değişkenin değerini kalıcı olarak değiştirir.
Fonksiyona parametre olarak özellikler atanırsa, nesnenin özelliği
değişmez.
Fonksiyona parametre olarak nesneler atanırsa, nesnenin kendi
özelliği değişir.(Movieclip,Object)
