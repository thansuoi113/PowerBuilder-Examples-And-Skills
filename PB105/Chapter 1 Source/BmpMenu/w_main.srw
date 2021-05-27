$PBExportHeader$w_main.srw
forward
global type w_main from window
end type
end forward

global type w_main from window
integer width = 1979
integer height = 1100
boolean titlebar = true
string title = "ͼ��˵�"
string menuname = "m_bmp"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "CreateLibrary5!"
boolean center = true
end type
global w_main w_main

type prototypes
FUNCTION ulong LoadImageA(ulong hInst,ref string lpsz,ulong un1,ulong  n1,ulong n2,ulong un2) LIBRARY "user32.dll" 
FUNCTION boolean SetMenuItemBitmaps(ulong hmenu,uint upos,uint flags,ulong handle_bm1,ulong handle_bm2)  LIBRARY "USER32.DLL"
FUNCTION int GetSystemMetrics(  int nIndex ) LIBRARY "USER32.DLL"
FUNCTION ulong GetMenuItemID(ulong hMenu,uint uItem) LIBRARY "USER32.DLL"
FUNCTION int GetSubMenu(ulong hMenu,int pos) LIBRARY "USER32.DLL"
FUNCTION ulong GetMenu(ulong hWindow) LIBRARY "USER32.DLL"
FUNCTION boolean ModifyMenu(ulong  hMnu, ulong uPosition, ulong uFlags, ulong uIDNewItem, long lpNewI) alias for ModifyMenuA LIBRARY "USER32.DLL"
end prototypes

type variables
//��������
Integer IMAGE_BITMAP	   = 0
Integer LR_LOADFROMFILE = 16
Integer SM_CXMENUCHECK  = 71
Integer SM_CYMENUCHECK	= 72
Integer MF_BITMAP			= 4
Integer MF_BYPOSITION	= 1024
end variables

on w_main.create
if this.MenuName = "m_bmp" then this.MenuID = create m_bmp
end on

on w_main.destroy
if IsValid(MenuID) then destroy(MenuID)
end on

event open;Long	ll_MainHandle
long	ll_SubMenuHandle
integer	li_MenuItemID
long	ll_X,ll_Y
long	ll_BitmapHandleA, ll_BitmapHandleB
long     ll_BitmapHandleC, ll_BitmapHandleD
string   ls_new, ls_open, ls_save, ls_exit
string   ls_contents, ls_home, ls_about

// �õ��˵����
ll_MainHandle = GetMenu(Handle(this))

// ��һ���˵�����
ll_SubMenuHandle = GetSubMenu(ll_MainHandle,0)

//ͼƬ�ļ�
ls_new  = 'new.bmp'
ls_open = 'open.bmp'
ls_save = 'save.bmp'
ls_exit = 'exit.bmp'

// ��ԭʼ��Сװ��ͼƬ�ļ�
ll_BitmapHandleA = LoadImageA(0, ls_new , IMAGE_BITMAP, 0, 0, LR_LOADFROMFILE)
ll_BitmapHandleB = LoadImageA(0, ls_open, IMAGE_BITMAP, 0, 0, LR_LOADFROMFILE)
ll_BitmapHandleC = LoadImageA(0, ls_save, IMAGE_BITMAP, 0, 0, LR_LOADFROMFILE)
ll_BitmapHandleD = LoadImageA(0, ls_exit, IMAGE_BITMAP, 0, 0, LR_LOADFROMFILE)

//�õ���һ���Ӳ˵����޸Ĳ˵�
li_MenuItemID = GetMenuItemID(ll_SubMenuHandle,0)
ModifyMenu(ll_SubMenuHandle,li_MenuItemID,MF_BITMAP,li_MenuItemId, ll_BitmapHandleA)

//�õ��ڶ����Ӳ˵����޸Ĳ˵� 
li_MenuItemID = GetMenuItemID(ll_SubMenuHandle,1)
ModifyMenu(ll_SubMenuHandle,li_MenuItemID,MF_BITMAP,li_MenuItemId, ll_BitmapHandleB)

//�õ��������Ӳ˵����޸Ĳ˵�
li_MenuItemID = GetMenuItemID(ll_SubMenuHandle,2)
ModifyMenu(ll_SubMenuHandle,li_MenuItemID,MF_BITMAP,li_MenuItemId, ll_BitmapHandleC)

//�õ�������Ӳ˵����޸Ĳ˵� 
li_MenuItemID = GetMenuItemID(ll_SubMenuHandle,4)
ModifyMenu(ll_SubMenuHandle,li_MenuItemID,MF_BITMAP,li_MenuItemId,ll_BitmapHandleD)

//�õ��ڶ������˵�����
ll_SubMenuHandle = GetSubMenu(ll_MainHandle,1)

//ȡ�ò˵���Ĭ��λͼ��С
ll_x = GetSystemMetrics(SM_CXMENUCHECK) 
ll_y = GetSystemMetrics(SM_CYMENUCHECK) 

//ͼƬ�ļ�
ls_contents = 'help.bmp'
ls_home      = 'home.bmp'
ls_about     = 'about.bmp'

// ��ϵͳ�ߴ�װ��ͼ��
ll_BitmapHandleA = LoadImageA(0, ls_contents, IMAGE_BITMAP, &
				ll_x, ll_y, LR_LOADFROMFILE)
ll_BitmapHandleB = LoadImageA(0, ls_home    , IMAGE_BITMAP, &
				ll_x, ll_y, LR_LOADFROMFILE)
ll_BitmapHandleC = LoadImageA(0, ls_about   , IMAGE_BITMAP, &
				ll_x, ll_y, LR_LOADFROMFILE)

// ���ò˵�λͼ
SetMenuItemBitmaps(ll_SubMenuHandle, 0, MF_BYPOSITION, &
			ll_BitmapHandleA, ll_BitmapHandleA)
SetMenuItemBitmaps(ll_SubMenuHandle, 1, MF_BYPOSITION, &
			ll_BitmapHandleB, ll_BitmapHandleB) 
SetMenuItemBitmaps(ll_SubMenuHandle, 3, MF_BYPOSITION, &
			ll_BitmapHandleC, ll_BitmapHandleC)

end event

