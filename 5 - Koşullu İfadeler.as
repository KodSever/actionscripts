Koşullu İfadeler
-------------------------------------------------------------------------------------
If Koşulu
var durum:Boolean = true;
if (durum==true)
{
trace("Durum truedur");
}
// "Durum truedur" yazar
-------------------------------------------------------------------------------------
If Else Koşulu
var durum:Number =5;
if (durum==4)
{
trace("Durum 4dur");
}
else
{
trace("Durum 4 değildur");
}
//Durum 4 olmadığı için Durum 4 değildur çalışır.
-----------------------------------------------------------------------------------
If….. Else If ….Else Koşulu
var durum:Number =5;
if (durum==4)
{
trace("Durum= 4");
}
else if(durum==5)
{
trace("Durum= 5");
}
else if(durum==3)
{
trace("Durum= 3");
}
else
{
trace("Durum!=4 ve 5");
}
// "Durum= 5" yazar
//Tek değişkenin farklı değerlerini kontrol ederken if yerine SWITCH
kullanmak daha doğru olur.Birden fazla değişkeni kontrol ediyorsak
ya da bir değişkenin olup olmamasını kontrol ediyorsam if
kullanmak en sağlıklısı olacaktır.Doğru yanlış kontrolü if e uygun)
-----------------------------------------------------------------------------------
Switch Case Koşulu
var durum:uint=5;
switch(durum)
{
case 1:
trace("Durum değeri 1 dir.");
case2:
trace("Durum değeri 2 dir.");
case3:
trace("Durum değeri 3 dir.");
case4:
trace("Durum değeri 4 dir.");
}
//Break yazmazsak Case doğruyu bulduktan sonra altındaki caseleri
de doğruymuş gibi çalıştırır.
//Bunu engellemek için break çalıştırılır. Böylece Case doğruyu
bulduktan sonra diğerlerini doğruymuş gibi davranmaz.
var durum:uint=5;
switch(durum){
case 1:
trace("Durum değeri 1 dir.");
break;
case2:
trace("Durum değeri 2 dir.");
break;
case3:
trace("Durum değeri 3 dir.");
break;
case4:
trace("Durum değeri 4 dir.");
break;
}
// break deyimi switchi bitir demektir.
-----------------------------------------------------------------------------------
Switch Case Default
var durum:uint=5;
switch(durum){
case 1:
trace("Durum değeri 1 dir.");
break;
case 2:
trace("Durum değeri 2 dir.");
break;
case 3:
trace("Durum değeri 3 dir.");
break;
case 4:
trace("Durum değeri 4 dir.");
break;
default :
trace("Durum değeri hiçbiri");
break;
}//Default if deki elseye denk gelir.
Birden Çok Koşul Kontrolü
-----------------------------------------------------------------------------------------
Ve Deyimi(&&)
var a:Number=10;
var b:Number=20;
if(a==10 && b==20)
{
trace("Bütün şartlarım doğru");
}
// && "VE" deyimine bağlı şartlar ( a=10 b=20)doğru olduğu için
"Bütün şartlarım doğru" sonucunu yazar.
//Koşulun 1i yanlış olursa kartezyenler çalışmaz
-----------------------------------------------------------------------------------
Veya Deyimi
var a:Number=10;
var b:Number=20;
var c:Number=5;
if(a==10 || b==5){
trace("1 tanesi doğru");
}//a==10 olduğu için "1 tanesi doğru" diye yazdırır.
//Veya deyiminde koşulun 1tanesinin doğru olması yeterlidir.
-----------------------------------------------------------------------------------
Parantez Önceliğine Göre Ve(&&)- Veyanın(||) Kullanımı
var a:Number=10;
var b:Number=20;
var c:Number=5;
if((a==0 || b==20)&& c==5){
trace("Karışık doğru");
}//a!=0 ama b==20 bu yüzden true değeri döner.
//1.si true c==5 olduğu için trace çalışır.
-----------------------------------------------------------------------------------
Değilse Operatörü(!)
var sonuc:Boolean=false;
if(!sonuc) {
trace("true değil");
} //true değilse çalışıyor.sonuc false olduğu için "true değil" yazar
-----------------------------------------------------------------------------------
Değilsenin Anlamı(!)
if(sonuc) = if(sonuc==true)
if(!sonuc)= if(sonuc==false)
-----------------------------------------------------------------------------------
İç İçe koşullu ifadeler
var sonuc:Boolean=true;
var a:Number=10;
var b:Number=5;
if(sonuc)
{ if(a==10)
{
trace("sonuc true ve anın değeri 10dur")
if(b==5){
trace("sonuc true, 10 eşit ve b 5 tir.")
}
else
{
trace("sonuc true a değeri 10 b nin değeri 5 değildir.")
}
}
else
{
trace("sonuc true ve anın değeri 10 değildir");
}
}
else
{
trace("sonuc false ve anın değeri bilinmiyor.")
}
