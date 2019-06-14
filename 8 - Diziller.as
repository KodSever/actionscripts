-------------------------------------------------------------------------------------
Diziler: Aynı gruptaki verilerin, gruplanmış değişkenlerdir.
-------------------------------------------------------------------------------------
Dizi Tanımlamak
var array:Array=new Array();//Boş dizi (formatlanmış harddisk)
var array1:Array;//null dizi (formatlanmamış harddisk)
var array2:Array=[];//Boş dizi (formatlanmış harddisk)
var array3:Array=new Array("Ersin","ActionScript",true,250);
var array4:Array=["Ersin","ActionScript",true,250];
var array5:Array=new Array(5)//boş,5 tanımsız(undefined) eleman
Dizilerin veri tipi yoktur. !Köşeli parentez varsa mutlaka dizi vardır.
-------------------------------------------------------------------------------------
Dizi Kullanmak
var dizi:Array=new Array("Ersin","ActionScript",true,250);
trace(dizi[2]); //true
trace(dizi); //Ersin,ActionScript,true,250
//Dizinin indeksini yazmadan tümünü yazdırabiliriz.
-------------------------------------------------------------------------------------
Çok Boyutlu Dizi Oluştur 1
var dizi:Array=new Array(["Ersin","ActionScript",true,250],[12,15]);
trace(dizi[1][0]); //12
trace(dizi[1]); //12,15
-------------------------------------------------------------------------------------
Çok Boyutlu Dizi Oluştur 2
var dizi:Array=[["Ersin","ActionScript",true,250],[12,15]];
trace(dizi[1][0]); //12
trace(dizi[1]); //12,15
-------------------------------------------------------------------------------------
Diziyi Döngüyle Kullanmak
var dizi:Array=new Array("Ersin","ActionScript",true,250);
for (var i:uint=0;i<dizi.length;i++){
trace(dizi);
}//Dizinin elemanlarını verir.
//Dizinin içindeki eleman sayısı sayısı kadar yazdırmak için
dizi.length kullanırız.
-------------------------------------------------------------------------------------
Dizi Sonuna Veri Eklemek(PUSH METODU)
Push metodu: Dizinin sonuna veri ekleyen metottur.
var array:Array=new Array();
array.push("Ersin");
trace(array); //Ersin
array.push("Şengül","ActionScript");
trace(array); //Ersin,Şengül,ActionScript
restParam veritipi: Gördüğümüz yere istediğiniz veri tipi
yazabilirim(MovieClip,Boolean,Number,String…)
-------------------------------------------------------------------------------------
Dizi Başına Veri Eklemek(UNSHIFT METODU)
Unshift metodu: Dizinin başına veri ekleyen metottur.
var array:Array=new Array();
array.push("Ersin");
array.unshift(1,2,3);
trace(array); // 1,2,3,Ersin
-------------------------------------------------------------------------------------
Veri Eklemek(SPLICE METODU)
Splice metodu: Dizinin içine istediğim indeks numarasına veri
ekleyen ve silen metottur.
splice(Birinci indeks, Kaç adet sileyim, Eklenecek Veri)
!Eklenecek veri girilmek zorunda değildir.
var array:Array=new Array();
array.push("Ersin");
array.unshift(1,2,3);
array.splice(1,0,true,"Merhaba");
trace(array); //1,true,Merhaba,2,3,Ersin
-------------------------------------------------------------------------------------
Dizi Sonundan Veri Silmek(POP METODU)
Pop metodu: Dizinin sonundan veri silen metottur.
var dizi:Array= ["Ersin","Şengül","ActionScript 3 .0"];
dizi.pop();
trace(dizi); // Ersin,Şengül
-------------------------------------------------------------------------------------
Dizi Başından Veri Silmek(SHIFT METODU)
Shift metodu: Dizinin başından veri silen metottur.
var dizi:Array= ["Ersin","Şengül","ActionScript 3 .0"];
dizi.shift();
trace(dizi); //Şengül, ActionScript 3 .0
-------------------------------------------------------------------------------------
Dizi Arasından Veri Silmek(SPLICE METODU)
Splice metodu: Dizinin arasından veri silen metottur.
var dizi:Array= ["Ersin","Şengül","ActionScript 3 .0"];
dizi.splice(0,2);
trace(dizi); // ActionScript 3 .0
-------------------------------------------------------------------------------------
Dizi Arasından Veri Silmek(DELETE METODU)
Delete metodu: Dizinin içindeki veriyi boşaltan metottur.
Dizi uzunluğu değişmez.
var dizi:Array= ["Ersin","Şengül","ActionScript 3 .0"];
delete array[1];
trace(dizi); // Ersin,,ActionScript 3 .0
-------------------------------------------------------------------------------------
Dizi Elemanlarıyla İşlem Yapmak
var array:Array=["Ersin", "Şengül", "ActionScript 3.0",true];
array[1]= "MyErso";
trace(array); // Ersin, MyErso ,ActionScript 3.0,true
var bool:Boolean=array[0];
trace(bool); //true //Ersin’i Booleana dönüştürüp atadı
-------------------------------------------------------------------------------------
Dizilerin İçeriklerini Sıralamak
Reverse Metodu
var array:Array=["Marmara", "Ege","Karadeniz","Akdeniz"];
trace(array); // Marmara,Ege,Karadeniz,Akdeniz
array.reverse(); //dizi elemanlarını tersine çevirir.
trace(array); // Akdeniz, Karadeniz ,Ege , Marmara
-------------------------------------------------------------------------------------
A dan Z ye Sort Metodu
Sort Metodu:Sıralama yaparken dizi içerisindeki bütün elemanları
String’e dönüştürür.
var array:Array=["Marmara","Ege","Karadeniz","Akdeniz",3,1,2];
array.sort(); //Sort metodu A’dan Z’ye sıralar.
trace(array); //1,2,3, Akdeniz, Ege,Karadeniz,Marmara
-------------------------------------------------------------------------------------
Büyük Küçük Karakter Sort Metodu
//Adan Zye sıraladığımızda küçük karakterleri sona atıyor.
//Bunu önlemek için Array.CASEINSENSITIVE kullanırız.
var array:Array=["Marmara","E","ege","Karadeniz,","akdeniz","A"];
array.sort();
trace(array);//A,E,Karadeniz,Marmara,akdeniz,ege
array.sort(Array.CASEINSENSITIVE);
trace(array);//A,akdeniz,E,ege,Karadeniz,Marmara
-------------------------------------------------------------------------------------
Z den A ya Sort Metodu
var array:Array=["Marmara","Ege","Karadeniz","Akdeniz"];
array.sort(Array.DESCENDING);
trace(array); // Marmara,Karadeniz,Ege,Akdeniz
-------------------------------------------------------------------------------------
Sort Metodunda 2 parametre
var array:Array=["Marmara","Ege","a","Karadeniz","e","Akdeniz"];
array.sort(Array.DESCENDING|Array.CASEINSENSITIVE);
trace(array); // Marmara,Karadeniz,Ege,e,Akdeniz,a
-------------------------------------------------------------------------------------
Sort Metodunda Rakamlar Kullanmak(12345)
array.sort(1); //A dan Z ye ve Büyük Küçük Karakter göz önünde
array.sort(2); //Z den A ya doğru sıraladı.
array.sort(3); // Z den A ya ve Büyük Küçük Karakter göz önünde
array.sort(4); //A dan Z ye sıraladı.
array.sort(5); // Büyük Küçük Karakter duyarlı ve A dan Z ye sıraladı.
-------------------------------------------------------------------------------------
Dizilerle İşlem Yapmak
CONCAT METODU 1
Concat:Diziye başka veriler ekleyerek yeni dizi oluşturmak veya iki
diziyi birleştirip yeni bir dizi oluşturmak için kullanılır.
var array:Array=[1,2,3];
var array2:Array=[4,5,6];
var array3:Array=array.concat(array2);
trace(array3); //Birleştirme işlemi yaptı 1,2,3,4,5,6
-------------------------------------------------------------------------------------
CONCAT METODU 2
var array:Array=[1,2,3];
var array2:Array=[4,5,6];
var array3:Array=array.concat(4,5,6,7,8);
trace(array3);
//Bir diziye yeni veriler ekleyip yeniye ataduk 1,2,3,4,5,6,7,8
-------------------------------------------------------------------------------------
Diziden Dilim Alma(Slice Metodu)
var array:Array=[1,2,3];
var array2:Array=[4,5,6];
var array3:Array=array.concat(4,5,6,7,8);
trace(array3);
var array4:Array=array3.slice(2,4); //3,4
slice(2,4)= 2. Indeksten başlar 3.ye kadar atar.
-------------------------------------------------------------------------------------
TOSTRING METODU
Tostring=Tüm elemanların arasına virgül koyup stringe çevirir.
Sadece dizilerde kullanılmaz.
var array:Array=[1,2,3];
var str:String=array.toString();
trace(str); //1,2,3
-------------------------------------------------------------------------------------
JOIN METODU
Join=Tüm elemanların arasına virgül değil benim istediğim karakteri
koyup stringe çevirir.
var array:Array=[1,2,3];
var str:String=array.join ("+");
trace(str); //1+2+3
-------------------------------------------------------------------------------------
İLİŞKİSEL DİZİ KULLANIMI
//İlişkisel dizi ile indekslenmiş dizi arasındaki fark indekslenmiş
dizilerde kendileri indeks numarasını vererek kaydeder,fakat
ilişkisel dizide her bir bilgiyi etiket numarası vererek diziye
kaydeder.
var array:Array=new Array();
array["ad"]= "Ersin";
array["soyad"]= "Şengül";
array["telefon"]=”021200000”;
trace(array.lengh); //0
trace(array); //boş
trace(array["ad"]); // Ersin
trace(array["Ad"]); // Undefined
-------------------------------------------------------------------------------------
//Dizileri ilişkilendirmede kullanmak yerine object kullanmak daha
yararlıdır.
OBJECT TANIMLA ŞEKLİ 1
var obj:Object=new Object();
obj["ad"]="Ersin";
obj["soyad"]="Şengül";
obj["telefon"]="0212000000";
trace(obj["ad"]); //Ersin
OBJECT TANIMLA ŞEKLİ 2
var obj1:Object={ad:"Ersin",telefon:0212000000,sonuc:true};
-------------------------------------------------------------------------------------
İLİŞKİSEL DİZİ KULLANIMI
var obj1:Object=new Object();
obj1.ad="Ersin";
obj1.soyad="Şengül";
var obj2:Object=new Object();
obj2.ad="Ali";
obj2.soyad="Varyemez";
var obj3:Object=new Object();
obj3.ad="Abuzer";
obj3.soyad="Kadayıf";
var array:Array=new Array();
array.push(obj1,obj2,obj3);
for (var i:uint=0;i<array.length;i++)
{
trace(array[i].ad+" "+array[i].soyad);
}
-------------------------------------------------------------------------------------
BOŞ BİR OBJECT TANIMLAMANIN İKİ YOLU
var obj:Object=new Object();
var obj1:Object={};
-------------------------------------------------------------------------------------
SORTON İLE DİZİDE OBJECT SIRALAMA
var array:Array=new Array();
array.push({ad: "Ersin",soyad:"Şengül"});
array.push({ad:"Ali",soyad:"Şengül"});
array.push({ad:"Abuzer",soyad:"Kadayıf"});
array.sortOn("soyad",Array.DESCENDING);
for(var i:uint=0;I<array.length;i++)
{
trace(array[i].ad+" "+array[i].soyad);
} //Soyada gore Zden Aya sıralar
//Array.NUMERIC=numaraya gore sıralar.String "23" sayıya
dönüştürüp sıralar
-------------------------------------------------------------------------------------
İKİ İNDEKSLİ DİZİ KULLANMAK
var array:Array=new Array();
array[0]=["Ersin", "Şengül","ActionScript 3.0"];
array[1]=["Ali","Varyemez"];
array[2]=["Abuzer","Kadayıf"];
trace(array[1][0]); // Ali
-------------------------------------------------------------------------------------
OBJECT İÇERİSİNDE DİZİ KULLANMAK
var obj:Object=new Object();
obj.isimler=["Ersin","Ayşegül"];
trace(obj.isimler); // Ersin,Ayşegül
trace(obj.isimler[1]); // Ayşegül
-------------------------------------------------------------------------------------
