-------------------------------------------------------------------------------------
: Yazdığımız kodları istediğimiz
şekilde birkaç projede kullanma şeklidir. Bütün profesyonel
uygulama dillerinde kullanılır.
//Temelini class(sınıf)lar oluşturur.
//Daha ölçeklenebilir kodlar geliştirmemizi sağlar.
Örneğin bir yazdığımız fonksiyonu veya birkaç fonksiyonu sürekli
olarak bütün uygulamalarınızda A projesinde B projesinde
kullanıyorsanız, tekrar tekrar yazmak zorunda oluruz ya da kopyala
yapıştır yaparız. Fakat object yapısında daha ölçeklenebilir daha
stabil kodlar yazıp, hem de isteğimiz projede bu class’ı kullan bu
sınıfı kullan dediğimizde direk olarak kullanabiliriz.
//Geliştirdiğimiz uygulamayı kuracağımız bir sistemdir.
-------------------------------------------------------------------------------------
Örnek Sınıf Mantığı
-Görüntü oynatabilsin
-DVD’den Mp3 çalabilsin
-Radyo dinlenebilsin
-DVD’den film oynatabilsin
//4 adet özelliği yapabilen bir adet televizyon yapacaklar.
//Sınıfımız değişkenlerden ve fonksiyonlardan oluşuyor.
-Görüntü oynatabilsin
 Girdiantenden frekansları oku (parametre)
 İşlemfrekansları görüntüye dönüştür. (İşlem)
 Çıktıekrana görüntüyü aktar. (Return)
-DVD’den Mp3 çalabilsin
-Radyo dinlenebilsin
-DVD’den film oynatabilsin
-düşük ,orta ve yüksek seviyesinde(ses değişkeniyle ayarlar.)
-------------------------------------------------------------------------------------
Package Sistemi
File-New-ActionScript File ile açarız.
As uzantılı text tabanlı dosyalardır.
Notepad le yeni döküman oluşturup as uzantılı kaydedip
kullanılabilir.
Packagelar: klasör sistemini actionscript içerisinde bildirmenizi
sağlayan deyimlerdir.(. ile klasörlere ulaşırız a.b.c_klasörü)
package klasör yolu(flanın yanındaysa boş bırakılır)
{
classları tanımla
}
package MyErso//MyErso klasörü içinde
{
}
//package MyErso.Matematik
-------------------------------------------------------------------------------------
CLASS TANIMLAMAK
package MyErso
{
class Ersom
{
}
}
Class yetkilendirme
Public:Her yerden herkes ulaşılabilir.(fla,erso veya matematik
klasöründen ulaşabilirim)
İnternal:Class’ın bulunduğu klasörün dışında kullanılmasın
demektir.Erso.as ye internal yazarsak MyErso klasöründeki
classlara ulaşabilir.(fla içinde kullanamaz)
Class’ın başına hiçbirşey yazmazsam default değeri olarak
internal kabul eder.
package MyErso.Matematik
{
public class Hesaplama
{
}
}
//Class isminin fiziksel adresiyle aynı olması gerekmez ama aynı
olmasının sakıncası yoktur.
-------------------------------------------------------------------------------------
TANILAYICI FONKSİYON VE METODLAR (CONSTRUCTER)
Tanımlayıcı fonksiyon: Bir class uygulama içerisinde ilk tanimlandiği
anda tetiklenen fonksiyondur.
Tanımlayıcı fonksiyonu oluşturmazsak actionScript tanımlayıcı
fonksiyonu otomatik olarak oluşturur ve boş olarak atar.
Var ersom:Ersom=new Ersom();//Fla’ya yaz class çağırma
Tanımlayıcı fonksiyon, class ismi ile aynı olmak zorundadır.
package MyErso
{
public class Ersom
{
public function Ersom():void
{
}
private function YeniFonksiyon(a:Number,b:String):String
{
return a+b;
}
public function islem():void
{
var sonuc:String= YeniFonksiyon(10,"Test");
}
}
}
Fonksiyonları tanımlarken public ve private deyimlerini kullanacağız
Fonksiyonlar varsayılan değeri olarak publictir
Tanımlayıcı fonksiyona private yazılamaz.
Private sadece bu class içerisinde kullanılabilir anlamındadır.
CLASS İÇİNE ÖZELLİK TANIMLAMA
*Class içindeki fonksiyona metod da denir.
*Class içindeki değişkenlere özellikleri(fonksiyon dışındaysa) denir
Public ve private deyimleri class içine değişken tanımlarken
kullanılır.
Public:Bu class’ı kullandığımız her yerden ulaşabiliriz.
Private:Sadece o class’ın içerisinde heryerde kullanılır ve vardır.
Fonksiyon içinde bu deyimleri kullanamayız.
package MyErso
{
public class Ersom
{
public var ad:String=”Ersin”;
public function Ersom():void
{
}
private function YeniFonksiyon(a:Number,b:String):String
{
return a+b;
}
private function islem():void
{
var sonuc:String=YeniFonksiyon(10,”Test”);
}
}
}
UYGULAMA İÇERİSİNDE CLASSLARI KULLANMAK
Class’a Yazılacaklar
package MyErso.Matematik{
public class Hesaplama{
public var mesaj:String="Bu class ın özelliği olan mesaj";
public function Hesaplama():void
{
//tanımlayıcı metod boş
}
public function Mesaj():void
{
trace("fonk içindeki class");
}
}
}
Fla’ya Yazılacaklar
//Flash içerisinde top level classları import yazmak gerekmez array
sınıfı gibi.
//new ile nesnenin kopyasını alırız.
import MyErso.Matematik.Hesaplama;//İmportla classı dahil ederiz
var hesapKopya:Hesaplama=new Hesaplama();//new ile kopyalar.
trace(hesapKopya.mesaj);//Özelliğin mesajı
trace(hesapKopya.Mesaj());//Metodun mesajı
EXTENDS KULLANIMI
Extends:Bir class’ı başka bir class’a
dahil eder.
a Classına Yazılacak
package MyErso.Matematik{
public class a{
public function xx(){trace("xx var");}
public function yy(){trace("yy var");}
}
}
c Class’ına Yazılacaklar
package MyErso.Matematik{
public class c extends a{ //c’nin içine a’yı dahil ettim.
public function zz(){trace("zz var");}
}
}
Fla’ya Yazılacak
import MyErso.Matematik.c;
var ali:c=new c();
trace(ali.yy());
CLASSLAR İÇERİSİNDEN İMPORT KULLANIMI
Extends ile import arasındaki fark
Extends yönteminde biri diğerine atandığı zaman, sanki aitmiş
gibi atanır. İmport yönteminde new operatörüyle yeniden
tanımlama ihtiyacı duyar.
İmport class’ın tepesine yazılır. Extends ise class’ın yanına
yazılır
package MyErso.Matematik
{
import flash.display.MovieClip; //import ile dahil ettim.
public class c extends a
{
public var mc:MovieClip=new MovieClip();
}//MovieClipi dahil ettikten sonra kullanabildim.
}
NOT:İlgili class’ları flash içine mutlaka almak zorundayız.Sol
taraftaki oka > tıklayarak classları görebiliriz.
DYNAMIC CLASS KULLANIMI
Fla’ya Yazılacaklar
import MyErso.Matematik.Hesaplama;
var hesapKopya:Hesaplama=new Hesaplama();
hesapKopya.ad="Yersin";
trace(hesapKopya.ad);
Class’a Yazılacaklar
package MyErso.Matematik
{
public dynamic class Hesaplama
{
public function Hesaplama():void
{
//tanılayıcı metod boş
}
}
}
Protected ve Final Yetkilendirme Deyimleri(Public&İnternal Önceki)
Protected Sadece kendisi ve Extends olarak alındığı class içerisinde
ulaşılabilecek. Bu classı başka hiçbir yerde kullanmak mümkün değil
package MyErso.Matematik{
protected class B{
Public function Z():void{}
}
}
Final Bir classın sadece extends olarak kullanılmaması için kullanılır.
Package MyErso.Matematik
{
public final class B
{
public function z():void{}
}
}
Static:new operatörüyle tanımlama yapmadan class ismini yazarak
özelliklerine ve ya metodlarına ulaşabilmemize olanak sağlar.
import MyErso.Matematik.* //Matematik klasörü içindeki “*” tüm
classları import eder
Class’a Yazılacaklar
package MyErso{
public class StatikClass{
public static var egitmen:String="Maskeli Beşler";
}
}
Fla’ya Yazılacaklar
import MyErso.*;
trace(StatikClass.egitmen);
// Maskeli Beşler
Fla2’ya Yazılacaklar
import MyErso.*;
StatikClass.egitmen="yeni eğitmen";
trace(StatikClass.egitmen);
var PI:Number=StatikClass.SabitSayi();
trace(PI);
Class2’a Yazılacaklar
package MyErso{
public class StatikClass{
public static var egitmen:String="Maskeli Beşler";
public static function SabitSayi():void{ return 3.14; }
}
}
Oyun yazarken ortak kullanılan özellik ve metodları statik olarak
tanımladığımızda 1 merkezden kontrol sağlamış oluruz.(oyun skoru
1 tane olur )new operatörüyle tanimlama yapinca default değeri
verir.İşte bu yüzden Statik tanimlamaya ihtiyaç vardir. 
Uygulama içinde değişmesini istemediğimiz şeyler için const
kullanılır.
Class’a Yazılacaklar
package MyErso{
public class StatikClass
{
public static const egitmen:String="Ersin Şengül";
}
}
Fla’ya Yazılacaklar
import MyErso.*;
StatikClass.egitmen="Yeni egitmen";//const olduğundan atanamaz.
trace(StatikClass.egitmen);
OVERRIDE DEYIMI(DAHA ONCESINDE EXTENDS)
Override: İsmi aynı olan özellik veya metodların birini diğerinin
üzerine yazmasını sağlar.
package MyErso.Matematik
{
public class A extends B
{
override public function ozellik():String
{
return "Bu A classın ozellik metodu";
}
}
}
package MyErso.Matematik
{
public class B
{
public function ozellik():String
{
return "Bu B classın ozellik metodu";
}
}
}
SUPER METODU()
Super:Extends la alınan tanımlayıcı fonksiyon çalışması için
kullanılanılır.
//A classı
package MyErso.Matematik
{
public class A extends B
{
public function A():void{ super(25);}
}
}
//B classı
package MyErso.Matematik
{
public class B
{
public function B(a:Number):void{}
}
}
TANIMLAYICI FONKSIYON UYGULAMASI
Fla ya Yazılacaklar
import MyErso.Matematik.*;
var hesap:Hesaplama=new Hesaplama(10,20);
Class’a Yazılacaklar
package MyErso.Matematik
{
public class Hesaplama
{
public function Hesaplama(a:Number,b:Number):void
{
trace("Rakamlar:",a,b);
}
}
}
Sonuc Rakamlar: 10 20
PRIVATE DEGERINE ULAŞMA
Class a Yazılacaklar
package MyErso.Matematik
{
public class Action
{
private var sifre:Number=123456;
public function SifreDegeri():Number
{
return sifre;
}
public function SifreGuncelle(yeniSifre:Number):void
{
sifre=yeniSifre;
}
}
}
Fla ya Yazılacaklar
import MyErso.Matematik.*;
var action:Action=new Action();
action.SifreGuncelle(123);
trace(action.SifreDegeri());
GET SET :Private değeri değiştirmek için iki farklı isimle public
fonksiyon tanımlayarak yaptık bunu engellemek için kullanılır.
Flaya Yazılacaklar
import MyErso.Matematik.*;
var action:Action=new Action();
action.Sifre=321546789;
trace(action.Sifre);
Class a Yazılacaklar
package MyErso.Matematik
{
public class Action
{
private var sifre:Number=123456;
public function get Sifre ():Number
{
return sifre;
}
public function set Sifre (yeniSifre:Number):void
{
sifre=yeniSifre;
}
}
}
