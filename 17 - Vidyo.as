 
//bir tane flv player eklenmiş olmalıdır (kütüphanede gözükür)
//eklenmezse hata verir.
import fl.video.FLVPlayback;
var vidComp:FLVPlayback=new FLVPlayback();
addChild(vidComp);
vidComp.source="film.flv";
//vidyo dosyaları (flv,mp4) olmak zorundadır oynatabilmesi için

vidComp.volume=.1;
vidComp.scaleMode="noScale";	
//vidComp.skin="SkinOverPlaySeekMute";

var nc:NetConnection = new NetConnection();
nc.connect(null);

var ns:NetStream = new NetStream(nc);
ns.addEventListener(AsyncErrorEvent.ASYNC_ERROR,onError);
function onError(evt:AsyncErrorEvent):void
{
}
ns.play("film.mp4");
var video:Video=new Video(500,400);
video.attachNetStream(ns);
addChild(video);

import flash.events.MouseEvent;

var nc:NetConnection = new NetConnection();
nc.connect(null);

var ns:NetStream = new NetStream(nc);
ns.addEventListener(AsyncErrorEvent.ASYNC_ERROR,onError);
function onError(evt:AsyncErrorEvent):void
{
}
ns.play("film.mp4");
var video:Video=new Video(320,200);
video.attachNetStream(ns);
addChild(video);


function onPlay(evt:MouseEvent):void
{
	ns.resume();
}
function onStop(evt:MouseEvent):void
{
	ns.pause();
	ns.seek(0);
}
function onPause(evt:MouseEvent):void
{
	ns.pause();
}
playBtn.addEventListener(MouseEvent.CLICK,onPlay);
stopBtn.addEventListener(MouseEvent.CLICK,onStop);
pauseBtn.addEventListener(MouseEvent.CLICK,onPause);


import flash.events.MouseEvent;

var nc:NetConnection = new NetConnection();
nc.connect(null);

var ns:NetStream = new NetStream(nc);
ns.addEventListener(AsyncErrorEvent.ASYNC_ERROR,onError);
function onError(evt:AsyncErrorEvent):void
{
}
ns.play("film.mp4");
//ns.pause();
var video:Video=new Video(320,200);
video.attachNetStream(ns);
addChild(video);


function onPlay(evt:MouseEvent):void
{
	ns.resume();
	//ns.play("baska.mp4");
}
function onStop(evt:MouseEvent):void
{
	ns.pause();
	ns.seek(0);
}
function onPause(evt:MouseEvent):void
{
	ns.pause();
}
playBtn.addEventListener(MouseEvent.CLICK,onPlay);
stopBtn.addEventListener(MouseEvent.CLICK,onStop);
pauseBtn.addEventListener(MouseEvent.CLICK,onPause);
