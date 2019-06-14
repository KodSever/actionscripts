GÖRSEL PROGRAMLAMAYA
Üst seviyede  eskiden roottu şimdi ise stage oldu. 
Sonrasında timeline temsil eden root kullanılıyor. 
--------------------------------------------------------------------------------------------------
Display Object ve Container
	Display Object: Action Scriptle oluşturabileceğimiz ve stagede görebileceğimiz objelerin hepsine denir.
 
       Stage tüm display objectleri içerir. Herşey stage içerisinde bulunmak zorundadır.

DISPLAY OBJECT VE DISPLAY OBJECT CONTAINER IKI TERIM VARDIR. 

Containerlar içlerinde başka objeler bulundurabilen yapılardır.	
Display object container stage ve moviecliplerden başka birşey değildir.
--------------------------------------------------------------------------------------------------
Library’deki Objectleri Stage’e Eklemek
Action script teki x y koordinat ları bilgisiyle properties bilgisi farklıdır.
Not:Kütüphanedeki dosyalar swf içine dahil olmaz.
	
dortgen adında movieClip oluştur.
Dahil etmek için linkage yöntemi kullanılır. Export for Action Script tıkla.
var dortgen:Dortgen=new Dortgen();
--------------------------------------------------------------------------------------------------
Görsel Objectleri Stage’e Eklemek ve Silmek
var dortgen:Dortgen=new Dortgen();
addChild(dortgen)	//=	stage. addChild(dortgen)
	
var txt:TextField=new  TextField();
	dortgen.addChild(txt);
txt.border=true;
	txt.borderColor=0x006699;
	txt.text= "Dortgen movieclip içerisine eklendi "
//Hiyerarşiyi kodla kendimiz oluşturuyorsak direkt olarak özellik ve metodlarına ulaşabiliriz. Yani dortgen. txt.text yazılmaz
//removeChild(); Objeyi bulunduğu yerden siler.
dortgen.removeChild(txt);//txt metini siler
removeChild(dortgen);//dortgeni siler
Ekranda gördüğümüz objelerin listesi hiyerarşisi dislay object list
Ekranda görebileceğimiz yapı display object tir	(mesela video) ama (sound değildir) 
--------------------------------------------------------------------------------------------------
Sprite Class Kullanımı
Sprite class: Container oluşturmak için karşımıza çıkan classtır.(Boş MovieClip)

import flash.display.Sprite;
var sprite:Sprite=new Sprite();
addChild(sprite);

var d:Dortgen=new Dortgen();
sprite.addChild(d);
sprite.x=100;
//Container oluşturmak ama görsel bir işlem yapmamızı istediğimiz sınıf sprite olacaktır.
--------------------------------------------------------------------------------------------------
Objeleri Pozisyon Bildirerek Eklemek ve Silmek
//s Sprite d1 d2 d3 movieclpleri ekliyecem o da otomatik olarak indeks numarası verecek
//katmanlara benzer ilk gelen arkada kalır.
 
Örnek1
var s:Sprite=new Sprite();
addChild(s);

var d1:Dortgen=new Dortgen();
var d2:Dortgen=new Dortgen();
var d3:Dortgen=new Dortgen();
s.addChildAt(d1,0);
s.addChildAt(d2,1);	
s.addChildAt(d3,2);
d1.x=20;	d2.x=40;	 d3.x=60;
d1.y=20;	d2.y=40;	 d3.y=60;
----------------------------------------------------------------------------------------------------------------------------------
Örnek2
var s:Sprite=new Sprite();
addChild(s);

var d1:Dortgen=new Dortgen();
var d2:Dortgen=new Dortgen();
var d3:Dortgen=new Dortgen();
s.addChildAt(d1,0);
s.addChildAt(d2,1);	
s.addChildAt(d3,0);
d1.x=20;	d2.x=40;	 d3.x=60;
d1.y=20;	d2.y=40;	 d3.y=60;

Örnek3
var s:Sprite=new Sprite();
addChild(s);

var d1:Dortgen=new Dortgen();
var d2:Dortgen=new Dortgen();
var d3:Dortgen=new Dortgen();
var d4:Dortgen=new Dortgen();
s.addChildAt(d1,0);
s.addChildAt(d2,1);
s.addChildAt(d3,2);
s.addChildAt(d4,3);
d1.x=20;	d1.y=20;	d2.x=40;	d2.y=40;
d3.x=60;	d3.y=60;	d4.x=80;	d4.y=80;
-----------------------------------------------------------------------------------------------------------------------------------
Örnek3
var s:Sprite=new Sprite();
addChild(s);

var d1:Dortgen=new Dortgen();
var d2:Dortgen=new Dortgen();
var d3:Dortgen=new Dortgen();
var d4:Dortgen=new Dortgen();
s.addChildAt(d1,0);
s.addChildAt(d2,1);
s.addChildAt(d3,2);
s.addChildAt(d4,3);
s.removeChildAt(2);	//2.İndeks numarasındaki nesne silindi 3 deki 2ye geldi.
d1.x=20;	d1.y=20;
d2.x=40;	d2.y=40;
d3.x=60;	d3.y=60;
d4.x=80;	d4.y=80;
------------------------------------------------------------------------------------------------------------------------------------
Örnek4
var s:Sprite=new Sprite();
addChild(s);

var d1:Dortgen=new Dortgen();
var d2:Dortgen=new Dortgen();
var d3:Dortgen=new Dortgen();
var d4:Dortgen=new Dortgen();
s.addChildAt(d1,0);
s.addChildAt(d2,1);
s.addChildAt(d3,2);
s.addChildAt(d4,3);
s.removeChildAt(0);	//0.indeksdekini siler ve 1i 0a 2yi 1 3ü 2ye kaydırır.
s.removeChildAt(0);
d1.x=20;	d1.y=20;
d2.x=40;	d2.y=40;
d3.x=60;	d3.y=60;
d4.x=80;	d4.y=80;
--------------------------------------------------------------------------------------------------**************************************************************
Objelerin Pozisyonlarıyla İşlem Yapmak
numChildren(Eleman Sayısı)
var container:Sprite=new Sprite();	addChild(container);
var d1:Dortgen=new Dortgen();	container.addChild(d1);
var d2:Dortgen=new Dortgen();	container.addChild(d2);
var d3:Dortgen=new Dortgen();	container.addChild(d3);
trace(container.numChildren);	//Eleman sayısını verir.(3)
------------------------------------------------------------------------------------------------------------------------------------
getChildByName(Ada Göre)  &&  getChildAt(İndekse Göre)
var container:Sprite=new Sprite();	addChild(container);
var d1:Dortgen=new Dortgen();	container.addChild(d1);
var d2:Dortgen=new Dortgen();	container.addChild(d2);
var d3:Dortgen=new Dortgen();	container.addChild(d3);

d1.name="d1";
d2.name="d2";
d3.name="d3";
trace(container.getChildByName("d1") is MovieClip);	//true
trace(container.getChildByName("d1").width);		//52.5
trace(container.getChildAt(0).width)				//52.5
------------------------------------------------------------------------------------------------------------------------------------
SetChildIndex(Indekse Göre Taşıma)
import flash.display.Sprite;

var konteynir:Sprite=new Sprite();
addChild(konteynir);

var d1:Dortgen=new Dortgen();	konteynir.addChild(d1);
var d2:Dortgen=new Dortgen();	konteynir.addChild(d2);
var d3:Dortgen=new Dortgen();	konteynir.addChild(d3);

d1.name="dd1";	d2.name="dd2";	d3.name="dd3"

trace(konteynir.numChildren);	//konteynir eleman sayisi
trace(konteynir.getChildByName("dd1") is Object);	//konteynirda ismi dd1 olan nesne midir?
trace(konteynir.getChildAt(0).name)	//konteynirdaki 0 indeksli nesnenin ismi
konteynir.setChildIndex(d3,0)	//d3 ü 0.indekse kaydırır.
-------------------------------------------------------------------------------------------------------------------------
swapChildren(Yerdeğiştir)  &&  swapChildrenAt(İndeksle Yerdeğiştir)

var konteynir:Sprite=new Sprite();
addChild(konteynir);

var d1:Dortgen=new Dortgen();	konteynir.addChild(d1);
var d2:Dortgen=new Dortgen();	konteynir.addChild(d2);
var d3:Dortgen=new Dortgen();	konteynir.addChild(d3);

d1.name="dd1";	d2.name="dd2";	d3.name="dd3";
for (var i:uint=0;i<konteynir.numChildren;i++)
{
	konteynir.getChildAt(i).x=i*50;
	konteynir.getChildAt(i).y=i*50;
}
konteynir.swapChildren(d1,d2);		//YerDEĞİŞTİRME
konteynir.swapChildrenAt(0,1);		//YerDEĞİŞTİRME
--------------------------------------------------------------------------------------------------
Scale Mode && FrameRate
FrameRate(Kare Hızı)
var d:Dortgen=new Dortgen();
addChild(d);

function onEnter(evt:Event):void
{
	d.x+=2;
}
d.addEventListener(Event.ENTER_FRAME,onEnter);
stage.frameRate=10;
trace(stage.stageWidth,stage.stageHeight)
------------------------------------------------------------------------------------------------------------------------------------
Örnek2
var d:Dortgen=new Dortgen();
addChild(d);
d.x=stage.stageWidth/2-d.width/2;
d.y=stage.stageHeight/2-d.height/2;//Ekranın orasına ortalama işlemi yaptı.
------------------------------------------------------------------------------------------------------------------------------------
Örnek3
var d:Dortgen=new Dortgen();
addChild(d);
d.x=stage.stageWidth/2-d.width/2;
d.y=stage.stageHeight/2-d.height/2;

Swf player büyüsün ama içindeki obje boyutları değişmesin diyorsak.
stage.scaleMode=StageScaleMode.NO_SCALE; Objelerin width ve height ölçüsü değiştirmez.
stage.scaleMode=StageScaleMode.EXACT_FIT; Objelerin width ve height ölçüsü bağımsızdır.
stage.scaleMode=StageScaleMode.NO_BORDER; Objeler swf playerda sıkışmaz.Ekran dışına taşar
stage.scaleMode=StageScaleMode.SHOW_ALL; Objeler swf playerda sıkışır.Ekran dışına taşmaz
------------------------------------------------------------------------------------------------------------------------------------
HİZALAMA
//Nesneyi player büyüttüğümüzde nesne dayalı olduğu tarafa olan mesafesini korur.
stage.align=StageAlign.LEFT	//Sola yaslar.
stage.align=StageAlign.BOTTOM_LEFT	//Sol Alta yaslar.

Playerı büyütüp küçültüldüğünde piksel sayısı değişir.
Her bir piksel büyütülüp küçültüldüğünde kullanabileceğimiz bir event var(RESIZE)

function Resize(evt:Event):void
{
	trace(stage.stageWidth);
}
stage.addEventListener(Event:RESIZE, Resize) ;
--------------------------------------------------------------------------------------------------
FULL SCREEN MODE
Tam Ekran yada Normal Modu çalıştırır. FullScreen Modu Swfnin kendisini çalıştırarak çalışır.
Örnek1
import flash.events.MouseEvent;
import flash.text.TextField;
var d:Dortgen=new Dortgen();		addChild(d);
function onClick(evt:MouseEvent):void
{
	stage.displayState=StageDisplayState.FULL_SCREEN;	
//FULLSCREEN VEYA NORMAL MODA AYIRABİLİRİZ
}
d.addEventListener(MouseEvent.CLICK,onClick);

Örnek2
import flash.events.MouseEvent;
import flash.text.TextField;
import flash.events.FullScreenEvent;

var d:Dortgen=new Dortgen();		addChild(d);
var txt:TextField=new TextField();	//Text Dosyası Oluştur
d.addChild(txt);					txt.text="Normal Mode";		//İçine very yaz

function onClick(evt:MouseEvent):void
{
	stage.displayState=StageDisplayState.FULL_SCREEN;	
//FULLSCREEN VEYA NORMAL MODA AYIRABİLİRİZ
}
d.addEventListener(MouseEvent.CLICK,onClick);

function onFull(evt:FullScreenEvent):void	//FullScreenEvent Sınıfı
{
	if(evt.fullScreen)	//Tam Ekransa
	{
		txt.text="Şu anda full screen mode";
	}
	else
	{
		txt.text="Normal Mode";
	}
}
stage.addEventListener(FullScreenEvent.FULL_SCREEN,onFull);
//Normal Olduğunda veya FullScreen olduğunda FullScreen Eventi tetiklenecektir.

Htmlde FullScreen Çalıştırmak İçin
F12 bas sonra html dosyasını not defteriyle açarız
1-Javascript yazılı kısımdaki allowFullScreen false değerini true yapılır.
2-noscript kısımdaki param name deki allowFullScreen value değerini true yapılır.
3-embed hizasındaki allowFullScreen değerini true yaparız
------------------------------------------------------------------------------------------------------------------------
Event İşleyişi ve Path Belirlemek
Bir tane mc1 adlı MovieClip Oluştur
İçine gir resimi kopyala mc2 adlı MovieClip Oluştur





import flash.events.MouseEvent;

function mc1Click(evt:MouseEvent):void
{
	trace("mc1Click");
}
mc1.addEventListener(MouseEvent.CLICK,mc1Click);

function mc2Click(evt:MouseEvent):void
{
	trace("mc2Click");
}
mc1.mc2.addEventListener(MouseEvent.CLICK,mc2Click);

Ana sahnenin içinden kod yazdığımız için mc1 MovieClip’in içindeki mc2 MovieClip’ine ulaşmak için mc1.mc2.addEventListener() diyerek mc2ye ait olay dinleyicisi atadık.
mc1in içindeki mc2nin üstüne tıklarsak önce mc2nin olay dinleyicisi sonra da mc1in ki çalışır.
----------------------------------------------------------------------------------------------------------------------------------
Genel Bilgi
//Ancak şekiller üzerine tıklanabilir.
//Yani iki nesnenin arası boş olduğu için boşluğa tıklanıldığında tepki vermez.
-----------------------------------------------------------------------------------------------------------------------------------
mc1in içinden kod yazarken
mc1 mc2 elle oluşturduğumuz için MovieClip classı içersinde işlenmektedir 
MovieClip(root);	//Ana timeline yazmış oluruz.
MovieClip(root).mc1.x=250;	//mc1in konumunu değiştirir.
MovieClip(this.parent).mc1.x=250;	//this.parent Şu anda bulunduğum yerden bir üst seviyeye ulaşır.
------------------------------------------------------------------------------------------------
Sürükle Birak Özelliği
Dortgen adında classa dahil MovieClip oluştur

var d:Dortgen=new Dortgen();	addChild(d);

function onStart(evt:MouseEvent):void
{
	d.startDrag();	//Sürükle
	//startDrag(lockCenter,Bounds)
	//lockCenter içine true yazarsak Mouse Cursoru Registration noktasına taşır
	//Bounds taşımayı devam ettiği maksimum minimum x ve y kordinatlarını belirler
}
function onStop(evt:MouseEvent):void
{
	d.stopDrag();	//Bırak
	//Görsel takılmaları kaybetmesi için bu komutu yazarız F5 tuşu gibi
	evt.updateAfterEvent();
}
d.addEventListener(MouseEvent.MOUSE_DOWN,onStart);
d.addEventListener(MouseEvent.MOUSE_UP,onStop);
------------------------------------------------------------------------------------------------
Size ve Scale Özelliği
Dortgen adında class’a eklenmiş MovieClip vardır.

var d:Dortgen=new Dortgen(); addChild(d);
d.width=100;
d.height=100;

//Scale:Objenin toplam boyutunu piksel değil yüzdelik oranlarla arttırır veya azaltır.
//Rakamsal artışlar yüzdeyi temsil eder.1 => %100 demektir.
//scaleX Widh değeri demektir
//d.scaleY=.5 ile d.scaleY=0.5 aynıdır.Yüzde 50
//- değeri objeyi ters tarafında açılır
//0 değeri objeyi yok eder.
d.scaleX=1
d.scaleY=.5;

//ALPHA DA İSE SADECE 0 İLE 1 ARASINDA DEĞER ALIR.(ŞEFFAFLIK)
//1DEN FAZLA YAZSAK DA 1 GİBİ ALGILAR.0DAN AZ YAZSAK DA 0 GİBİ ALGILAR.
d.alpha=1;//%100 görünür.
------------------------------------------------------------------------------------------------
Cache As Bitmap Kullanımı
Kare çiz-Color Panelinden Lineer Gredient Seç
Gradient Transform Toolla renk dağılımını sağla
Çizimi-MovieClip’e dönüştür.
Prosperties ten (Cache as Bitmap ,Export as Bitmap) seçilir.
Bu Çizimi artık vektörel bir çizim değil onu Bitmapa dönüştürür.


NERELERDE KULLANILIR!
Kompleks arkaplan resimlere sahipsek onları daha rahat kullanabilmek için Bitmap Cache özelliğini kullanmak daha sağlıklı olacaktır.
	Flashta elle maske yaptığınızda masked herhangi bir alfa kanalı yani opacity değerlerini kullanamayız.Fakat 2 MovieClip I Bitmap  Cache özelliğini kullanarak, alfa kanal maskesi yapmak rahatlıkla mümkün.
	Window yapısına sahip uygulamanız varsa bu yapıları bitmap cache özelliğini aktif ederseniz, çok daha sağlıklı net görüntüler elde ederiz.
	Text alanlarında scroll özelliğini kullanıyorsanız bitmap cache özelliğini aktif etmek çok daha net görüntüler elde etmemizi sağlar
------------------------------------------------------------------------------------------------------------------------------------
Uygulama1
Gradientli çizilmin Color Panelini kullanarak opacity düşür ve adınıda "mc" MovieClip oluştur.
Lineer Gradientli ikinci çizimi yap ve kenar çizgilerini sil opacity düşür.Bunu da MovieClipe dönüştür.Adi da maske olsun
YOL1
mc.mask=maske;	//Cache as Bitmapsiz olduğu için sadece maskeledi alfa kanalını kullanmadı 
YOL2
İki movieclipin de cache özelliklerini elle aktif yapalım.
mc.mask=maske;	//Cache as Bitmapi elle yaptığımız için alfa kanalını da kullanarak maskeledi.
YOL3
mc.cacheAsBitmap=true;//İki MovieClip de kodla cacheAsBitmap özelliklerini aktif ettik
maske.cacheAsBitmap=true;
mc.mask=maske;     //Cache as Bitmapi kodla yaptığımız için alfa kanalını da kullanarak maskeledi
Not: With ve Height ölçüsü 2880 piksel büyüklüğünü flash player kaldırmaz memory hatası verir.

------------------------------------------------------------------------------------------------------------------------
Blending Mode Kullanımı
İki tane resim al MovieClip e dönüştür. Adı da r1 olsun
Propertiesde blendi elle Multiply ayarlayalım.(2 resmin renkleri karışır)
Blendi eski hale(Normal) getirelim
r1.blendMode="multiply";
r1.blendMode="normal";
Not: BlendMode bitmap tabanlıdır.Tüm Display Objelerde kullanılabilir.

------------------------------------------------------------------------------------------------------------------------
Görsel Objelerde Color Kullanımı 1
Bir tane Dortgen adlı classlı MovieClip oluştur

import flash.geom.ColorTransform;
var d:Dortgen=new Dortgen();
addChild(d);
var colorBilgi:ColorTransform=new ColorTransform();
colorBilgi.color=0x006699;
d.transform.colorTransform=colorBilgi;
Görsel Objelerde Advanced Color Kullanımı 2

Bir tane Dortgen adlı classlı MovieClip oluştur
Yol1:MovieClip i sahneye sürükle özelliklerden Color Effect - Style – Advanced seç








Yol2:
import flash.geom.ColorTransform;

var d:Dortgen=new Dortgen();	addChild(d);
var colorBilgi:ColorTransform=new ColorTransform();
colorBilgi.color=0x006699;
d.transform.colorTransform=colorBilgi;

//colorBilgi.redMultiplier=50;	//Kırmızı renk ayarı
colorBilgi.greenMultiplier=60; 	//Yeşil renk ayarı
colorBilgi.blueMultiplier=60; 	//Mavi renk ayarı
colorBilgi.alphaOffset=50		//Alfa offset ayarı
colorBilgi.alphaMultiplier=80;	//Alfa rengi
colorBilgi.greenOffset=125;	//Yeşil offset ayarı
d.transform.colorTransform=colorBilgi;
------------------------------------------------------------------------------------------------------------------------
Dışarıdan Swf ve Image Yüklemek 1
Önce kanal (URLRequest) açıcaz.
Text tabanlıda URLLoader kullanıcağız. 
Görsel tabanlı dosyalarda ise Loader nesnesi kullanacağız.
Loader bir display objectir 

import flash.display.Loader;
import flash.net.URLRequest;

var ldr:Loader=new Loader();
var req:URLRequest=new URLRequest("img/materyal.png");
ldr.load(req);	addChild(ldr);

ldr.x=200;
ldr.scaleX=1.2;

Resim yüklemesi komple bitince yapılması gereken işlemler için Complete Eventini kullanacağız
Progress Eventi de Resmin ne kadar yüklendiğini öğreneceğiz
------------------------------------------------------------------------------------------------------------------------
Dışarıdan Swf ve Image Yüklemek 2
import flash.display.Loader;
import flash.net.URLRequest;
import flash.events.Event;

var ldr:Loader=new Loader();
var req:URLRequest=new URLRequest("img/materyal.png");
ldr.load(req);

function onComplete(evt:Event):void
{
	addChild(ldr);
	ldr.x=200;
	ldr.scaleX=1.2;
}
ldr.contentLoaderInfo.addEventListener(Event.COMPLETE,onComplete);
//Yükleme İşlemi bitince çalışır.
-----------------------------------------------------------------------------------------------------------------------------------
Flash dışardan yüklediği işlemleri (görsel bir objeyi yüklediğinde) internetten yüklüyormuş gibi simülasyonunu yapabilir.
View – Simulate – Download		//İndirme Simulasyonunu yapar.
View – Download Settings			//İndirme hızını ayarlar.
View – Bandwidth Profil			//Objenize timeline nasıl yüklediğini görebilirsiniz.
-----------------------------------------------------------------------------------------------------------------------------------

Her bir bayt yüklenince progress eventi tetiklenir.

import flash.display.Loader;
import flash.net.URLRequest;
import flash.events.Event;
import flash.text.TextField;

var ldr:Loader=new Loader();
var req:URLRequest=new URLRequest("img/materyal.png");
ldr.load(req);
var txt:TextField=new TextField();	addChild(txt);

function onComplete(evt:Event):void
{
	addChild(ldr);
	ldr.x=200;
	ldr.scaleX=1.2;
}

function onProgress(evt:ProgressEvent):void
{
	txt.text="% "+Math.floor(evt.bytesLoaded/evt.bytesTotal*100);
	//evt.bytesLoaded o anda yüklenen bilginin bayt cinsinden rakamını verir.
	//evt.bytesTotal Dışardaki dosyanın toplam boyutunu verir.
}
ldr.contentLoaderInfo.addEventListener(Event.COMPLETE,onComplete);
ldr.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,onProgress);


	
