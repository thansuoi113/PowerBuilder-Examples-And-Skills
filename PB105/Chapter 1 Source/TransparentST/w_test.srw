$PBExportHeader$w_test.srw
forward
global type w_test from window
end type
type st_1 from uo_transparent_st within w_test
end type
type p_1 from picture within w_test
end type
end forward

global type w_test from window
integer width = 1211
integer height = 848
boolean titlebar = true
string title = "透明文本示例"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 12639424
string icon = "JaguarProfile!"
boolean center = true
st_1 st_1
p_1 p_1
end type
global w_test w_test

type variables

end variables

on w_test.create
this.st_1=create st_1
this.p_1=create p_1
this.Control[]={this.st_1,&
this.p_1}
end on

on w_test.destroy
destroy(this.st_1)
destroy(this.p_1)
end on

type st_1 from uo_transparent_st within w_test
integer x = 293
integer y = 96
integer width = 622
integer height = 96
integer textsize = -16
long textcolor = 8388608
string text = "透明文本示例"
alignment alignment = center!
end type

type p_1 from picture within w_test
integer x = 366
integer y = 96
integer width = 457
integer height = 488
string picturename = "boy.gif"
boolean focusrectangle = false
end type

event constructor;//i_ulng_handle=getdc(handle(this)) 
////设置此控件的背景为透明模式 
//setbkmode(i_ulng_handle,1) 



end event

