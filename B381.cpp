//---------------------------------------------------------------------------

#include <vcl.h>
#include <winuser.h>
#pragma hdrstop
//#pragma comment(lib, "user32.lib")
//#include <Sysutils.hpp>

#pragma comment(linker, "/SECTION:.shr,RWS")
#pragma data_seg(".shr")
HWND hGlobal = NULL;
#pragma data_seg()

//{$SetPEFlags IMAGE_FILE_RELOCS_STRIPPED}
//{$SetPEFlags IMAGE_FILE_DEBUG_STRIPPED}
//{$SetPEFlags IMAGE_FILE_LINE_NUMS_STRIPPED}
//{$SetPEFlags IMAGE_FILE_LOCAL_SYMS_STRIPPED}
//{$SetPEFlags IMAGE_FILE_AGGRESIVE_WS_TRIM}
//{$SetPEFlags IMAGE_FILE_REMOVABLE_RUN_FROM_SWAP}
//{$SetPEFlags IMAGE_FILE_NET_RUN_FROM_SWAP}
//{$SetPEFlags IMAGE_FILE_EXECUTABLE_IMAGE}

USEFORM("Main.cpp", Form1);
USEFORM("UOptions.cpp", FOptions);
USEFORM("UComment.cpp", Comment);
USEFORM("UNewExp.cpp", NewExp);
USEFORM("UToolWin.cpp", ToolWin);
USEFORM("UNewSeries.cpp", NewSeries);
USEFORM("Ufft.cpp", Form2);
USEFORM("URecMenu.cpp", RecDial);
USEFORM("NewSer.cpp", NewSerForm);
USEFORM("About.cpp", AboutForm);
//---------------------------------------------------------------------------

HWND xTargetWnd;

bool __fastcall IsRun()
{
  bool AlreadyRunning;

  HANDLE Mutex = ::CreateMutex(NULL , true, "{F23CFF3E-FD75-48ED-B5B4-B4F9DAF092A0}");

  AlreadyRunning = (GetLastError() == ERROR_ALREADY_EXISTS);

  if (Mutex != NULL)
  {
    ::ReleaseMutex(Mutex);
  }

  if ( AlreadyRunning )
	{
	  return true;
	}

	return false;
}

BOOL CALLBACK EnumWindowsProc(HWND h, LPARAM lparam)
{
  //LPTSTR buff;

  TCHAR title[500];
  ZeroMemory(title, sizeof(title));

  if (IsWindowVisible(h))
  {
	GetWindowText(h, title, sizeof(title)/sizeof(title[0]));

	AnsiString Tmp = (AnsiString)(title);

	if (Tmp != "") {
	  //ShowMessage(Tmp.SubString(0, 4));
	  if ((Tmp.SubString(0, 9) == "B381 2010") || (Tmp.SubString(0, 9) == "b381 2010"))
		xTargetWnd=h;
    }
   }

  return true;
};

WINAPI WinMain(HINSTANCE, HINSTANCE, LPSTR, int)
{
  if (IsRun()) {
    EnumWindows((WNDENUMPROC)EnumWindowsProc, 0);

	if (xTargetWnd != 0)
	{
	  //ShowWindow(xTargetWnd, SW_RESTORE);
	  //SetForegroundWindow(xTargetWnd);

	  SetForegroundWindow(xTargetWnd);

	  if (IsIconic(xTargetWnd))
	  {
		::ShowWindow(xTargetWnd, SW_RESTORE);
	  }
	}
	return 0;
  }

  try
  {
	Application->Initialize();

	DecimalSeparator=(Char)(46);

	Application->Title = "B381 2010";
	Application->CreateForm(__classid(TForm1), &Form1);
	Application->CreateForm(__classid(TFOptions), &FOptions);
	Application->CreateForm(__classid(TComment), &Comment);
	Application->CreateForm(__classid(TNewExp), &NewExp);
	Application->CreateForm(__classid(TToolWin), &ToolWin);
	Application->CreateForm(__classid(TNewSeries), &NewSeries);
	Application->CreateForm(__classid(TForm2), &Form2);
	Application->CreateForm(__classid(TRecDial), &RecDial);
	Application->CreateForm(__classid(TNewSerForm), &NewSerForm);
	Application->CreateForm(__classid(TAboutForm), &AboutForm);
	Application->Run();
  }
  catch (Exception &exception)
  {
	Application->ShowException(&exception);
  }
  return 0;
}
//---------------------------------------------------------------------------
