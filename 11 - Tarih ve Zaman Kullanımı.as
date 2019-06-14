Tarih ve zaman işlemleri için date objesinden kullanırız.
Türkiye saat dilimi(UTC+2), Evrensel saat dilimi(UTC) iki terim çıkar
GMT standartı da vardır.(GMT+2)
-----------------------------------------------------------------------------------------------------------------------------------
var date:Date=new Date();
trace(date); // Thu Aug 9 12:21:04 GMT+0300 2012
trace(date.day); //4
trace(date.dateUTC); //9
trace(date.fullYear);//2012
trace(date.hours);//12
trace(date.month);//7
trace(date.getMonth());//7
//0Pazar, 6c.tesi
//0ocak, 11aralık
---------------------------------------------------------------------------------------------------------------------------------
var date:Date=new Date();
var ay:String=Ay(date.getMonth());
trace(ay);
function Ay(a:Number):String{
switch(a){
case 0:
return "Ocak"
break;
case 1:
return "Şubat"
break;
case 2:
return "Mart"
break;
case 3:
return "Nisan"
break;
case 4:
return "Mayıs"
break;
case 5:
return "Haziran"
break;
case 6:
return "Temmuz"
break;
case 7:
return "Ağustos"
break;
case 8:
return "Eylül"
break;
case 9:
return "Ekim"
break;
case 10:
return "Kasım"
break;
case 11:
return "Aralık"
break;}
return "ah";
}
------------------------------------------------------------------------------------------------------------------------------
var date:Date=new Date();
var gun:String=gunler(date.getDay());
trace(gun);
function gunler(a:Number):String
{
switch(a){
case 0:
return "Pazar";
break;
case 1:
return "Pazartesi";
break;
case 2:
return "Salı";
break;
case 3:
return "Çarşamba";
break;
case 4:
return "Perşembe";
break;
case 5:
return "Cuma";
break;
case 6:
return "Cumartesi";
break;}
return "asd"
}
----------------------------------------------------------------------------------------------------------------------------------
var date:Date=new Date();
trace(date.hours,date.minutes,date.seconds,date.milliseconds);
----------------------------------------------------------------------------------------------------------------------------------
Timer:flash içinde kullanabileceğimiz kronometredir.
Çalışmasını istediğimiz bir fonksiyon veya bir işlemi sürekli olarak verdiğimiz zaman dilimi
aralığında çalıştırmasını sağlamak için kullanılır.
Örnek1
import flash.utils.Timer;
var timer:Timer=new Timer(1000);//MİLİSANİYE CİNSİNDEN YAZILIR.
//2.parametreyi yazmazsak sürekli olarak durduruna kadar çalışır.
var timer2:Timer=new Timer(1000,6);//6 kez çalışacak
------------------------------------------------------------------------------------------------------------------------------------
Örnek 2
function timerfonk(evt:TimerEvent):void{
trace("fonksiyon çalıştı");
}
function timercompfonk(evt:TimerEvent):void{
trace("timer bitti");
}
var timer:Timer=new Timer(1000,6);
timer.addEventListener(TimerEvent.TIMER,timerfonk);
timer.addEventListener(TimerEvent.TIMER_COMPLETE,timercompfonk);
//TIMER_COMPLETE timer bitince çalışır.
timer.start(); //timer’i başlatır. Stop yazarsak durdurur.
------------------------------------------------------------------------------------------------------------------------------------
Örnek 3
var timer:Timer=new Timer(1);
function timerfonk(evt:TimerEvent):void{
if(evt.target.currentCount==500)
{
//timer.stop();
evt.target.stop();
} //evt.targettimer
daire.x+=1;
}
function timercompfonk(evt:TimerEvent):void{
trace("timer bitti");
}
timer.addEventListener(TimerEvent.TIMER,timerfonk);
timer.addEventListener(TimerEvent.TIMER_COMPLETE,timercompfonk);
//Timer Complete sadece 2. Parametreyi bildirdiğimizde çalışır.
timer.start();
------------------------------------------------------------------------------------------------------------------------------------
import flash.utils.Timer;
//txt adında dinamik text oluştur
function Saat():void
{
var date:Date=new Date();
//Saat hesaplama
var saat:String=String(date.hours);
if(date.hours<10)
{
saat="0"+saat;
}
//Dakika Hesaplama
var dakika:String=String(date.minutes);
if(date.minutes<10)
{
dakika="0"+dakika;
}
//Saniye Hesaplama
var saniye:String=String(date.seconds);
if(date.seconds<10)
{
saniye="0"+saniye;
}
//MiliSaniye Hesaplama
var milisaniye:String=String(date.milliseconds);
if(date.milliseconds<10)
{
milisaniye="00"+milisaniye;
}
else if(date.milliseconds<100)
{
milisaniye="0"+milisaniye;
}
txt.text=saat+":"+dakika+":"+saniye+":"+milisaniye
}
var timer:Timer=new Timer(1);
function zamanlayici(evt:TimerEvent):void{Saat();}
timer.addEventListener(TimerEvent.TIMER,zamanlayici);
timer.start();
