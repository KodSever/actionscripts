VERİ TİPLERİ
var boolean:Boolean=true
Number - + ondalıklı sayılar
var number:Number=-1.3;
İnt + - tamsayılar
var number2:int=-1.3;
Uint + tamsayılar
var number3:uint=1.3;
String= düz metin
var metin:String="Actionscript 3.0";
	Void fonksiyonlarda parametre döndürmediğindeki veri tipidir.
function veritipi():void{}	//return 10;
	Null=boş, yapısı tamamlanmamış, içeriği yapılandırılmamış
var array:Array;
//array=null;
trace(array);
---------------------------------------------------------------------------------
	Object veritipi(dizi objedir. Sound nesnesi object veri tipine denk gelmektedir.)Array,Sound,Video,String
var str:String="Ersin Şengül";
var array:Array=new Array();
var sound:Sound=new Sound();
var video:Video=new Video();
VERİ TİPLERİ DÖNÜŞÜMLERİ
String Number
var str:String="25";
var num:Number=Number(str);
---------------------------------------------------------------------------------
str="Ersin";
num=Number(str);
trace(num);	//sonuç NAN
---------------------------------------------------------------------------------
Number  String
var number:Number=25;
var string:String=String(number);
trace(string + 20);	//sonuç "2520"
---------------------------------------------------------------------------------
String  Boolean
var string:String = "Ersin"; veya " " 
var boolean:Boolean= Boolean(string);
trace(boolean);		//sonuç true		
//iki tırnak içerisinde herhangi bir karakter varsa true yoksa "" false değeri döndürür.
---------------------------------------------------------------------------------
Number  Boolean
var number:Number=100;
var boolean:Boolean = Boolean(number);
trace(boolean);		//true
//İçerisinde 0 değeri veya değer yoksa false değeri döndürdü
---------------------------------------------------------------------------------
Boolean  Number
var boolean:Boolean = true;
var number:Number = Number(boolean);
trace(number);
//true ise 1 false ise 0 sonuç verir
---------------------------------------------------------------------------------
Boolean  String
var boolean:Boolean = true;
var string:String = String(boolean);
trace(string);
//true yada false

Veri Türü İle Varsayılan Değer Tablosu
Veri türü		Varsayılan değer
Boolean	false
İnt	0
Number	NaN
Object	null
String		null
Uint	0
Bildirilmemiş (tür ek açıklamasına eşit *)	undefined
Kullanıcı tanımlı sınıflar da dahil olmak üzere diğer tüm sınıflar.	null
Veri Tiplerinin Varsayılanları
var arti:uint=1.3;		//1 tam kısmını alıyor
var eksi:uint=-1.3;		//4294967295 uint'e -li bir sayiya verince saçmalıyor 
----------------------------------------------------------------------------------------
var arti:int=1.3;		//1	tam kısmını alıyor
var eksi:int=-1.3;		//-1	tam kısmını alıyor
----------------------------------------------------------------------------------------
var numara:Number;	//NaN 	
numara=new Number;	//Varsayılan sıfır değerini atadı. 
----------------------------------------------------------------------------------------
var pozitif_sayi:uint;	//Atamadan varsayılanı 0
pozitif_sayi=new uint();	//0
----------------------------------------------------------------------------------------
var tam_sayilar:int;	//Atamadan varsayılanı 0
tam_sayilar=new int();	//0
----------------------------------------------------------------------------------------
var dizi:Array;		//null
dizi=new Array;		//
----------------------------------------------------------------------------------------
var metin:String;		//null
metin=new String;	//
----------------------------------------------------------------------------------------
var obje:Object;		//null
obje=new Object();	//[object Object]
----------------------------------------------------------------------------------------
var dizi:Array=new Array;
dizi[0]=new Object;
dizi[0].name="yeşil";
dizi[0].katman1="sıvılar";
trace(dizi[0].name);	//yesil
trace(dizi[0].katman1);	//sıvılar

