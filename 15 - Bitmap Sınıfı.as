BİTMAP VE BİTMAPDATA Gif png jpeg

Rbg renk kodunu kullanır(Red Green Blue 0-255)
Resolution width ve height değerleri vardır.
Pixel her bir noktaya denir.
Kütüphane olan bir resmi bu oluşturduğumuz bitmapa texture olarak background atayabiliriz.
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Bitmap Objesi Oluşturmak
Bitmap data class kullanırız. Bitmap oluşturmak için.
import flash.display.BitmapData;	//BitmapData Classı
var bmpd:BitmapData=new BitmapData(100,100,true,0x006699);
//boyutu,alfası,renk
True png ve giflerde aktif edilir.
False yapsaydık export yaparken jpeg olarak kullanacaktı.

BitmapData Display sınıfında olsa bile addchild la direk olarak sahneye ekleyemiyoruz.
Bitmap Data bir bitmap verisi. Sahneye ekleyebilmek için yeni bir bitmap sınıfı oluşturmaya ihtiyacımız var.

import flash.display.BitmapData;
import flash.display.Bitmap;

//true yaparsak transparant olduğu için bir şey görüntülemez
var bmpd:BitmapData=new BitmapData(100,100,false,0x006699);
var bmp:Bitmap=new Bitmap(bmpd);
addChild(bmp);
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Pixeller Üzerinde İşlem Yapmak
setPixel: İlgili pixelin rengini değiştirmeye yarar.

import flash.display.BitmapData;
import flash.display.Bitmap;

var bmpd:BitmapData=new BitmapData(100,100,false,0x006699);
for (var i:uint=0; i<100; i++)
{
	var kirmizi:uint=0xFF0000;
	bmpd.setPixel(i,50,kirmizi);//Yatay rengini değiştirir.
	bmpd.setPixel(50,i,kirmizi);//Dikey rengini değiştirir.
}		        //x ve y koordinat
var bmp:Bitmap=new Bitmap(bmpd);
addChild(bmp);
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Çizgiyi Kalınlaştırmak
import flash.display.BitmapData;
import flash.display.Bitmap;

var bmpd:BitmapData=new BitmapData(100,100,false,0x006699);
for (var i:uint=0; i<100; i++)
{
	var kirmizi:uint=0xFF0000;
	bmpd.setPixel(i,50,kirmizi);
	bmpd.setPixel(i,51,kirmizi);
	bmpd.setPixel(i,52,kirmizi);
	bmpd.setPixel(50,i,kirmizi);
}
var bmp:Bitmap=new Bitmap(bmpd);
addChild(bmp);
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Çapraz Çizgi Yapma
import flash.display.BitmapData;
import flash.display.Bitmap;

var bmpd:BitmapData=new BitmapData(100,100,false,0x006699);
for (var i:uint=0; i<100; i++)
{
	var kirmizi:uint=0xFF0000;
	bmpd.setPixel(i,50,kirmizi);
	bmpd.setPixel(i,50+i,kirmizi);
	bmpd.setPixel(i,51+i,kirmizi);
	bmpd.setPixel(50,i,kirmizi);
}
var bmp:Bitmap=new Bitmap(bmpd);
addChild(bmp);
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
GetPixel metodu
var pRenk:uint=bmpd.getPixel(0,0);		//0 a 0 koordinatı
trace(pRenk.toString(16));			//6699 rakamını verdi
//İstediği sayı sistemi 16

pRenk=bmpd.getPixel(50,50);		//50 50 koordinatı
trace(pRenk.toString(16));			//ff0000 rakamını verdi
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Byte Array Sınıfı
Byte Array: Toplu olarak pixellerle işlem yapmaya yarar.
İki BitmapData oluşturacağız 1 tanesini byte array nesnesine aktaracağız. Bu aktarım işlemini rectangle kullanarak gerçekleştireceğiz. Görsel olmayan bir dörtgen alan kullanarak toplu olarak pixellerini aktarcağız.

Kopyalamak isteğim BitmapData ya rectangle oluştur.


import flash.display.BitmapData;
import flash.display.Bitmap;
import flash.utils.ByteArray;
import flash.geom.Rectangle;

var bmpd1:BitmapData=new BitmapData(100,100,false,0x006699);
var bmpd2:BitmapData=new BitmapData(100,100,false,0xFF0000);

var rect:Rectangle=new Rectangle(0,0,100,100);
//BitmapDatam 0 a 0 koordinatında olacağı için Dikdörtgeni de o koordinatta oluşturduk.

var bytes:ByteArray=bmpd1.getPixels(rect);	//rectangle alanı istiyor
//getPixel 1 noktanın işlemini ister. X Y sini verdiğim noktanın renk kodunu ister.
//getPixels  verdiğim alanın her bir pixelini byte dizisine aktar demek

bytes.position=0; //Bytes alanımızın pozisyonu

bmpd2.setPixels(rect,bytes);

var bmp1:Bitmap=new Bitmap(bmpd1);
var bmp2:Bitmap=new Bitmap(bmpd2);
addChild(bmp1);
addChild(bmp2);
bmp2.x=150;
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
İki nokta arasındaki karşılaştırmayı hitTest metoduyla nasıl yaparız onu belirleyeceğiz
Pixellerin çalışmasını kontrol etmek
import flash.display.BitmapData;
import flash.display.Bitmap;
import flash.geom.Point;

var bmpd1:BitmapData=new BitmapData(100,100,false,0x00FF00);
var bmpd2:BitmapData=new BitmapData(25,25,false,0xFF0000);
var bmp1:Bitmap=new Bitmap(bmpd1);
addChild(bmp1);

var kk1:Bitmap=new Bitmap(bmpd2);
addChild(kk1);
kk1.x=200;

var kk2:Bitmap=new Bitmap(bmpd2);
addChild(kk2);

var p1:Point=new Point(0,0);
var p2:Point=new Point(20,20);
var p3:Point=new Point(225,225);

trace(bmpd1.hitTest(p1,0XFF,p2));
//bmpd1 üzerinde 100x100,birici nokta ,kesiştiği nokta p2 noktasıyla karşılaştır

Örnek 2
//point noktasının renk kodunu kullanarak ilgili bitmapdata üzerinde olup olmadığını kontrol edebiliriz.
import flash.display.BitmapData;
import flash.display.Bitmap;
import flash.geom.Point;

var bmpd1:BitmapData=new BitmapData(100,100,false,0x00FF00);
var bmpd2:BitmapData=new BitmapData(25,25,false,0xFF0000);
var bmp1:Bitmap=new Bitmap(bmpd1);
addChild(bmp1);

var kk1:Bitmap=new Bitmap(bmpd2);
addChild(kk1);
kk1.x=200;

var kk2:Bitmap=new Bitmap(bmpd2);
addChild(kk2);

var p1:Point=new Point(0,0);
var p2:Point=new Point(20,20);
var p3:Point=new Point(225,225);

trace(bmpd1.hitTest(p1,0XFF,p2));

trace(bmpd1.hitTest(p1,0XFF,p3));
//OxFF ile başlayan renk kodu p3 noktasıyla çakışıp çakışmadığını sorduğumuzda false
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
BitmapDataların kopyasını almak

import flash.display.BitmapData;
import flash.display.Bitmap;

var bmpd1:BitmapData=new BitmapData(100,100,false,0x00FF00);
var bmpd2:BitmapData=bmpd1.clone();

var bmp1:Bitmap=new Bitmap(bmpd1);
var bmp2:Bitmap=new Bitmap(bmpd2);
addChild(bmp1);
addChild(bmp2);
bmp2.x=200;

Yol2
Toplu olarak pixellerle işlem yapacaksak mutlaka bir rectangle ihtiyacımız var(copyPixels=kopyala yapıştır metodu)
copyPixels(bmpd1,rect);

Yol3
copyChannel(bmpd1,rect,dönüşüm noktası, renk);
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Noise özelliği İLE TEK BİR TONLAMA YAPILIR
import flash.display.BitmapData;
import flash.display.Bitmap;

var bmpd:BitmapData=new BitmapData(200,200,false,0x006699);
bmpd.noise(400,0,125,BitmapDataChannel.GREEN,false);
//Random rakam istiyecek(karıncalı görüntü için nokta sayısı), 
//en düşük değeri, en yüksek değeri, 
//ana kanallardan bir tanesi örneklemesini ister(alfa yeşil mavi kırmızı)

var bmp:Bitmap=new Bitmap(bmpd);
addChild(bmp);

PERLİNE NOİSE(ORGANİK DOKU)
import flash.display.BitmapData;
import flash.display.Bitmap;

var bmpd:BitmapData=new BitmapData(200,200,false,0x006699);
var noktaSayisi:Number=Math.floor(Math.random()*100);//KARINCALANMA SAYISI(SEED)
var kanallar:uint=BitmapDataChannel.BLUE | BitmapDataChannel.GREEN;

bmpd.perlinNoise(120,90,6,noktaSayisi,false,true,kanallar,false,null);
//Noise başlangıç nokta X , Y koordinatı, Renkleri karıştırmada kullanılan rakam, noktaSayisi, Smooth,Geçişleri keskinleştirsin ya da etmesin, kanallar, false, offset için boş değer gönder
var bmp:Bitmap=new Bitmap(bmpd);
addChild(bmp);

 
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
BitmapDatalarda Scroll(İçindeki BitmapDatayı hareket ettiriyor)
import flash.display.BitmapData;
import flash.display.Bitmap;

var bmpd:BitmapData=new BitmapData(2000,2000,false,0x006699);
var noktaSayisi:Number=Math.floor(Math.random()*100);
var kanallar:uint=BitmapDataChannel.BLUE | BitmapDataChannel.GREEN;

bmpd.perlinNoise(120,90,6,noktaSayisi,false,true,kanallar,false,null);

var bmp:Bitmap=new Bitmap(bmpd);
addChild(bmp);
bmp.x=-500;
bmp.y=-500;
function onEnter(evt:Event):void
{
		bmpd.scroll(1,1);
}
addEventListener(Event.ENTER_FRAME,onEnter);

