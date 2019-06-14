STRİNG
Giriş
Kullanıcıdan form aracılığıyla bilgi almak
Sanal Klavye yapmak için stringler kullanılır
G tuşuna bastığında T yazdırtmak Stringlerle olur.
Kullanıcının girdiği bilgiler mutlaka String olarak işlenmek zorundadır.
Form objelerinde form alanlarında mail kontrolü yapmak(@ .), telefon nosunun doğru olup olmadığını control etmek(2525223)

var str1:String="Actionscript";
var str2:String;
var str3:String=new String("Actionscript");
Dikkat:Aynı bölgede aynı isimle değişken, nesne… oluşturursak hata verir.
--------------------------------------------------------------------------------------------------
Stringlerde Kullanilan Özel Karakterler

Özel Karakterin Kullanıldığı Yer Örnekleri
Alt satıra geçmek,
Tab veya BackSpace kullanmak istediğimizde,
Entere karşılık gelen bir karakter kullanmak istediğimizde
---------------------------------------------------------------------------------------------------------------------------------------
String içine yazdığımız yazı ekrana sığmayacak büyüklükte olduğunda altsatıra geçmesi için Word Wrap kul.
 
Hangi satırda olduğumuzu bilmek için satır numarası verilir. Satır numarasını da aktif etmek için Line Numbers bölümünden aktif edebiliriz.



//Alt Satıra Geçmek(\n)
//.dan sonra alt satıra geçmek için
var str:String="Renkler, renk kodları, renk paletleri.\nRenk adına göre soldaki menüden bir renk seçip renkleri görebilirsiniz.\nRastegele renkler";
trace(str);

//Enter anlamına gelen özel karakter \r
var str:String="Renkler, renk kodları, renk paletleri.\rRenk adına göre soldaki menüden bir renk seçip renkleri görebilirsiniz.\rRastegele renkler";
trace(str);
Not: \n \n… şeklinde yazarsak kaç kez kullandıysak o kadar alt satıra geçer. 


ÖZEL KARAKTERLER HEPSİ
Alt Satıra Geçmek --> \n
Enter anlamına gelen özel karakter --> \r
Backspace anlamına gelen özel karakter --> \b
Tab anlamına gelen özel karakter --> \t
Smile --> \unnnn gibi beş karakterden oluşur. 
Gülme sembolü --> \u263a ( unicode karakter setinden karakterleri öğrenebiliriz. )
Çift tırnak --> \"		Örnek: \"YAZI\"
Tek tırnak --> \'			Örnek: \'YAZI\'
Slaş yerleştirme  --> \\	Örnek:	\\YAZI\\

Uyarı: Tek tırnağı direkt yazabilirdik ama exturn interface konusunda fonksiyona parametre göndermek yada javascriptin bir komutunu tetiklemek istediğimizde tek tırnak kullanıcaz o da problem çıkarır.Bu yüzden \' şeklinde kullanılmalıdır.
--------------------------------------------------------------------------------------------------
Stringlerin Karakter Sayısını Bulmak
var str:String="";
trace(str.length);	//0
str="Merhaba";
trace(str.length);	//7
str="Merhaba ";
trace(str.length);	//8




--------------------------------------------------------------------------------------------------
charCode() ve charCodeAt() Metodları
var
