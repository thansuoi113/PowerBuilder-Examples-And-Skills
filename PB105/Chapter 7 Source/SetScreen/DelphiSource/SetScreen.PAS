unit Setscreen;

interface

library  setscreen;
uses Windows;
var NewDevMode: TDEVMODE;
function setdisplaymode(pwidth,pheight:integer):
	longint;stdcall;export;
begin
   With NewDevMode do
   begin
      dmSize := 122;
      dmFields := DM_PELSWIDTH Or DM_PELSHEIGHT ;
      dmPelsWidth := pwidth ;
      dmPelsHeight := pheight ;
   end;
  result:=ChangeDisplaySettings(NewDevMode,0);
end;
Function getscreenwidth():longint;stdcall;export;
begin
result:=GetDeviceCaps(hinstance, HORZRES);
end;
function getscreenheight():longint;stdcall;export;
begin
result:=GetDeviceCaps(hinstance, VERTSIZE);
end;
  exports
  setdisplaymode index 1,
  getscreenwidth index 2,
  getscreenheight index 3;
  begin
  end.


end.
