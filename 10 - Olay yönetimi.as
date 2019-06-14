-------------------------------------------------------------------------------------
EVENT:Bir işlem yaptırabilmek için tetiklenen ilk yapı olaylardır.
Eventler=Mouse, klavye, sistem eventler var. Bazı sınıflara ait eventler de var text alanına ait select
eventidir.
ActionScript olay yönelimli bir dildir.
Örnek eventlerClick, double click, Mouse hareketi, scroll hareketlerine event döndür, nesne
üstüne gelip gelmeme
Kontrolümüzde ve kontrolümüz dışında eventler var.
Arkadaşımıza adıyla seslenmek olay, bana dönmesi işlemdir.
-------------------------------------------------------------------------------------
Buton oluştur adı da btn olsun.(Büyük karakterlerle yazımış olan eventler yazdığımız sınıfa
ait özel eventlerdir.)
CLICK EVENTI(Mouse sol tuşuna basıp, bıraktıktan sonra çalışır.)
function ButonClick(evet:MouseEvent):void
{
trace("Butona tıkladınız.");
}
btn.addEventListener(MouseEvent.CLICK,ButonClick);
DOUBLE CLICK EVENTI
function ButonClick(evt:MouseEvent):void
{
trace("Butona tıkladınız.");
}
function CiftClick(evt:MouseEvent):void{
trace("Butona çift tıkladınız.");
}
btn.doubleClickEnabled=true;//ÇİFT CLİCK ÖZELLİĞİNİ AÇMA
btn.addEventListener(MouseEvent.CLICK,ButonClick);
btn.addEventListener(MouseEvent.DOUBLE_CLICK,CiftClick);
//ÇİFT CLİCKLEYINCE TEK CLICK DE ÇALIŞIYOR.
------------------------------------------------------------------------------------------------------------------------------------
EVENTI TEMIZLEMEK
Örnek1
function ButonClick(evt:MouseEvent):void
{
trace("Butona tıkladınız.");
}
function CiftClick(evt:MouseEvent):void{
trace("Butona çift tıkladınız.");
}
btn.doubleClickEnabled=true;//ÇİFT CLİCK ÖZELLİĞİNİ AÇMA
btn.addEventListener(MouseEvent.CLICK,ButonClick);
btn.addEventListener(MouseEvent.DOUBLE_CLICK,CiftClick);
btn.removeEventListener(MouseEvent.CLICK,ButonClick);
//CLICK EVENT Çalışmaz
Örnek2
function ButonClick(evt:MouseEvent):void
{
trace("Butona tıkladınız.");
btn.removeEventListener(MouseEvent.CLICK,ButonClick);
//Bir kez çalışıp click eventini siler
}
function CiftClick(evt:MouseEvent):void{
trace("Butona çift tıkladınız.");
}
btn.doubleClickEnabled=true;
btn.addEventListener(MouseEvent.CLICK,ButonClick);
btn.addEventListener(MouseEvent.DOUBLE_CLICK,CiftClick);
------------------------------------------------------------------------------------------------------------------------------------
Örnek3
function ButonClick(evt:MouseEvent):void
{
trace("Butona tıkladınız.");
btn.removeEventListener(MouseEvent.CLICK,ButonClick);
btn.doubleClickEnabled=true;//ÇİFT CLİCK ÖZELLİĞİNİ AÇMA
btn.addEventListener(MouseEvent.DOUBLE_CLICK,CiftClick);
//Birkez tıkladıktan sonra DoubleClick özelliğini açar.
}
function CiftClick(evt:MouseEvent):void{
trace("Butona çift tıkladınız.");
}
btn.addEventListener(MouseEvent.CLICK,ButonClick);
--------------------------------------------------------------------------------------------
MOUSE MOVE
mouseMoveMouse player da hareket ettiği sürece çalışan eventtir.Piksel başına tetiklenir.
50pikselde 50 kez tetiklenir.
--------------------------------------------------------------------------------------------
function onMove(evt:MouseEvent):void{
trace("hareket etti");
mc.x++; //mc üzerinde hareket edince mcnin x koordinatı arttırır.
}
mc.addEventListener(MouseEvent.MOUSE_MOVE,onMove);
//Sahnede hareketi algılaması için yazılır.
stage.addEventListener(MouseEvent.MOUSE_MOVE,onMove);
--------------------------------------------------------------------------------------------
MOUSE DOWN EVENTI(BUTONUN SOL TUŞU)
function MouseEventleri (evt:MouseEvent):void{
mc.x+=1;
}//Mouse sol tuşuna basıldığı anda hareket eder.
mc.addEventListener(MouseEvent.MOUSE_DOWN, MouseEventleri);
--------------------------------------------------------------------------------------------
MOUSE UP EVENTI(CLICKE AYNI)
function MouseEventleri (evt:MouseEvent):void{
mc.x+=1;
}// Mouse bıraktığımızda çalışır.
mc.addEventListener(MouseEvent.MOUSE_DOWN, MouseEventleri);
---------------------------------------------------------------------------------------------
MOUSE OVER EVENTI
function MouseEventleri (evt:MouseEvent):void{
mc.x+=1;
}//Mouse Nesnenin üzerine geldiği anda hareket eder.
mc.addEventListener(MouseEvent.MOUSE_DOWN, MouseEventleri);
---------------------------------------------------------------------------------------------
MOUSE OUT EVENTI
function MouseEventleri (evt:MouseEvent):void{
mc.x+=1;
}//Mouse Nesnenin üzerinden ayrıldığı anda hareket eder.
mc.addEventListener(MouseEvent.MOUSE_OUT, MouseEventleri);
---------------------------------------------------------------------------------------------
MOUSE ROLL_OVER
function MouseEventleri (evt:MouseEvent):void{
mc.x+=1;
}//Mouse üzerine geldiğinde hareket eder.
mc.addEventListener(MouseEvent.ROLL_OVER, MouseEventleri);
---------------------------------------------------------------------------------------------
MOUSE WHEEL EVENTI
function MouseEventleri (evt:MouseEvent):void{
mc.x+=1;
}//Mouseın tekerleği hareket ettiğinde hareket eder.
mc.addEventListener(MouseEvent.MOUSE_WHEEL, MouseEventleri);
---------------------------------------------------------------------------------------------
CLASS İÇERİSİNE EVENT KULLANIMI
Class Içine Yazilacaklar
package MyErso.Olaylar
{
import flash.events.MouseEvent; //classa MouseEvent sınıfını dahil ettim.
public class EventOrnek { }
}
-------------------------------------------------------------------------------------------------------
3 tane movieclip oluşturuyoruz mc1,mc2,mc3
Classa yazılacaklar(1.yol)
package MyErso.Olaylar{
Import flash.display.MovieClip;
import flash.events.MouseEvent;
public class EventOrnek
{
private var mc:MovieClip;
public function EventleriAktifEt(mc:MovieClip):void
{
this.mc=mc
mc.doubleClickEnabled=true;
mc.addEventListener(MouseEvent.CLICK,onClick);
mc.addEventListener(MouseEvent.DOUBLE_CLICK,onDouble);
}
private function onClick(evt:MouseEvent):void{mc+=10;}
private function onDouble(evt:MouseEvent):void{mc.visible=false;}
}
}
-------------------------------------------------------------------------------------------------------
Classa yazılacaklar(2.yol)
package MyErso.Olaylar{
import flash.display.MovieClip;
import flash.events.MouseEvent;
public class EventOrnek
{
public function EventleriAktifEt(mc:MovieClip):void
{
mc.doubleClickEnabled=true;
mc.addEventListener(MouseEvent.CLICK,onClick);
mc.addEventListener(MouseEvent.DOUBLE_CLICK,onDouble);
} //evt.currentTarget.x ile mc.x aynıdır.
private function onClick(evt:MouseEvent):void{evt.currentTarget.x=10;}
private function onDouble(evt:MouseEvent):void{evt.currentTarget.visible=false;}
} evt event içerisinden hangi obje tetikleniyorsa o objeyle ilgili bazı bilgiler döndürmektedir.
}
Flaya yazılacaklar
import MyErso.Olaylar.*;
var eo:EventOrnek=new EventOrnek();
eo.EventleriAktifEt(mc1);
eo.EventleriAktifEt(mc2);
eo.EventleriAktifEt(mc3);
--------------------------------------------------------------------------------------------------------------------------
KEY EVENTLERI(TUŞA BASTIĞIMIZDA VEYA BIRAKTIĞIMIZDA)
Klavye kontrolü Entere basılması
import flash.events.KeyboardEvent;
function onKey(evt:KeyboardEvent):void
{
if(evt.keyCode==Keyboard.ENTER)
{
trace("Enter Tuşuna bastınız.");
mc.x+=10;
}
trace(evt.charCode);//Basılan tuşun sayısal değeri
}
stage.addEventListener(KeyboardEvent.KEY_DOWN,onKey);
//flash playerdan control menüsünden disable keyboards shortcuts seç
--------------------------------------------------------------------------------------------------------------------------
Switch kullanarak klavye konrolü
function onKey(evt:KeyboardEvent):void
{
if(evt.keyCode==Keyboard.ENTER)
{
mc.x+=10;
}
switch(evt.charCode)
{
case 97:
trace("Şu an a karakterine bastınız.");
break;
case 65:
trace("Şu an A karakterine bastınız.");
break;
}
}
stage.addEventListener(KeyboardEvent.KEY_DOWN,onKey);
-------------------------------------------------------------------------------------------------------
Bastığımız tuşu bize verir.
function onKey(evt:KeyboardEvent):void
{
trace("Bastığınız Tuş:" +String.fromCharCode(evt.charCode));
}
stage.addEventListener(KeyboardEvent.KEY_DOWN,onKey);
-------------------------------------------------------------------------------------------------------
ENTERFRAME KULLANIMI
ENTERFRAME Örnek1
function onEnter(evt:Event):void
{
daire.x+=1;
}
stage.addEventListener(Event.ENTER_FRAME,onEnter);
--------------------------------------------------------------------------------------------------------------
ENTERFRAME Örnek2
function onEnter(evt:Event):void
{
daire.x+=1;
if(daire.x==60)
{
stage.removeEventListener(Event.ENTER_FRAME,onEnter);
}
}
stage.addEventListener(Event.ENTER_FRAME,onEnter);
