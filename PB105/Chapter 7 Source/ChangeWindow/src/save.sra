$PBExportHeader$save.sra
forward
global type save from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type save from application
string appname = "save"
end type
global save save

type prototypes






end prototypes

on save.create
appname="save"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on save.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;//open(w_runtime)

open(w_ball)
end event

