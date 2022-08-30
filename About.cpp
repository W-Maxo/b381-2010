//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "About.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "RzStatus"
#pragma link "RzButton"
#pragma link "AdvReflectionLabel"
#pragma resource "*.dfm"
TAboutForm *AboutForm;

typedef TDateTime (__stdcall *GetBuildTime)(int i);
//---------------------------------------------------------------------------
__fastcall TAboutForm::TAboutForm(TComponent* Owner)
	: TForm(Owner)
{
}

//typedef Word UShort;

  /*struct TImageDosHeader {
	Word e_magic;                            // магическое число
	Word e_cblp;                             // количество байт на последней странице файла
	Word e_cp;                               // количество страниц вфайле
	Word e_crlc;                             // Relocations
	Word e_cparhdr;                          // размер заголовка в параграфах
	Word e_minalloc;                         // Minimum extra paragraphsneeded
	Word e_maxalloc;                         // Maximum extra paragraphsneeded
	Word e_ss;                               // начальное( относительное ) значение регистра SS
	Word e_sp;                               // начальное значениерегистра SP
	Word e_csum;                             // контрольная сумма
	Word e_ip;                               // начальное значение регистра IP
	Word e_cs;                               // начальное( относительное ) значение регистра CS
	Word e_lfarlc;                           // адрес в файле на таблицу переадресации
	Word e_ovno;                             // количество оверлеев
	Word e_res[4];               			   // Зарезервировано
	Word e_oemid;                            // OEM identifier (for e_oeminfo)
	Word e_oeminfo;                          // OEM information; e_oemid specific
	Word e_res2[10];             			   // Зарезервировано
	LongInt e_lfanew;                          // адрес в файле нового .exeзаголовка
  }; */

/*struct TImageResourceDirectory {

public:
	DWord Characteristics;
	DWord TimeDateStamp;
	Word MajorVersion;
	Word MinorVersion;
	Word NumberOfNamedEntries;
	Word NumberOfIdEntries;
//  IMAGE_RESOURCE_DIRECTORY_ENTRY DirectoryEntries[];
  }; */

  //typedef TImageResourceDirectory PImageResourceDirectory;

/*PIMAGE_RESOURCE_DIRECTORY = ^IMAGE_RESOURCE_DIRECTORY;
  {$EXTERNALSYM PIMAGE_RESOURCE_DIRECTORY}
  _IMAGE_RESOURCE_DIRECTORY = record
    Characteristics: DWORD;
    TimeDateStamp: DWORD;
    MajorVersion: Word;
    MinorVersion: Word;
    NumberOfNamedEntries: Word;
    NumberOfIdEntries: Word;
    // IMAGE_RESOURCE_DIRECTORY_ENTRY DirectoryEntries[];
  end;
  {$EXTERNALSYM _IMAGE_RESOURCE_DIRECTORY}
  IMAGE_RESOURCE_DIRECTORY = _IMAGE_RESOURCE_DIRECTORY;
  {$EXTERNALSYM IMAGE_RESOURCE_DIRECTORY}
  TImageResourceDirectory = IMAGE_RESOURCE_DIRECTORY;
  PImageResourceDirectory = PIMAGE_RESOURCE_DIRECTORY;


function ResourceBuildTime(PResourceDir: PImageResourceDirectory): TDateTime; inline;
begin
  Result := FileDateToDateTime(PResourceDir.TimeDateStamp);
end;

function LoadedPEBuildTime(HImage: DWORD): TDateTime; inline;
begin
  Result = ResourceBuildTime(PImageResourceDirectory(PImageNtHeaders(HImage + DWORD(PImageDosHeader(HImage)._lfanew)).OptionalHeader.DataDirectory[IMAGE_DIRECTORY_ENTRY_RESOURCE].VirtualAddress + HImage));
end; */

 /*function GetPEBuildTime(const FileName: string): TDateTime;
var
  hFile: THandle;
  lpImgDosHeader: PImageDosHeader;
  lpImgNtHeaders: PImageNtHeaders;
  lpImgSectHeader: PImageSectionHeader;
  ImgResourceDir: TImageResourceDirectory;
  Buffer: array[0..1024 * 2 - 1] of Byte;
  BuffSize: DWORD;
  I, SectionsNum, SectionsRead: Integer;
begin
  if ((FileName = '') or SameFileName(FileName, GetModuleName(HInstance))) then
  begin
	Result := LoadedPEBuildTime(HInstance);
    Exit;
  end;
  Result := 0;
  hFile := CreateFile(PChar(FileName), GENERIC_READ, FILE_SHARE_READ, nil,
      OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, 0);
  if (hFile = INVALID_HANDLE_VALUE) then
    Exit;
  try
    if (ReadFile(hFile, Buffer, sizeof(Buffer), BuffSize, nil) and (BuffSize > sizeof(TImageDosHeader))) then
    begin
      lpImgDosHeader := PImageDosHeader(@Buffer);
      if ((lpImgDosHeader.e_magic = IMAGE_DOS_SIGNATURE) and
          (BuffSize > (DWORD(lpImgDosHeader._lfanew) + sizeof(TImageNtHeaders)))) then
      begin
        lpImgNtHeaders := @Buffer[lpImgDosHeader._lfanew];
        if (lpImgNtHeaders.Signature = IMAGE_NT_SIGNATURE) then
        begin
          lpImgSectHeader := PImageSectionHeader(DWORD(lpImgNtHeaders) + sizeof(TImageNtHeaders));
          SectionsNum := lpImgNtHeaders.FileHeader.NumberOfSections;
          SectionsRead := (BuffSize - DWORD(lpImgDosHeader._lfanew) - sizeof(TImageNtHeaders))
              div sizeof(TImageSectionHeader);
          if (SectionsNum > SectionsRead) then
            SectionsNum := SectionsRead;
          I := 0;
          while (I < SectionsNum) do
          begin
            if (StrComp(@lpImgSectHeader.Name, '.rsrc') = 0) then
            begin
              with lpImgSectHeader^ do
                if ((SizeOfRawData > 0) and (PointerToRawData > 0) and
                    (SetFilePointer(hFile, PointerToRawData, nil, FILE_BEGIN) = PointerToRawData) and
                    ReadFile(hFile, ImgResourceDir, sizeof(TImageResourceDirectory), BuffSize, nil) and
                    (BuffSize = sizeof(TImageResourceDirectory))) then
                  Result := ResourceBuildTime(@ImgResourceDir);
              Break;
            end;
            Inc(I);
            Inc(PByte(lpImgSectHeader), sizeof(TImageSectionHeader));
          end;
        end;
      end;
    end;
  finally
    CloseHandle(hFile);
  end;
end;*/

/*TDateTime __fastcall GetBuildTime()
{
  //Windows
  HANDLE hExeFile;
  TImageDosHeader ImageDosHeader;
  LPDWORD Signature;
  TImageFileHeader ImageFileHeader;
  TImageOptionalHeader ImageOptionalHeader;
  TImageSectionHeader ImageSectionHeader;
  TImageResourceDirectory ImageResourceDirectory;
  LPDWORD Temp;
  int i;*/

  //HANDLE ProcessHandle;

  //hExeFile = CreateFile(ParamStr(0).t_str(), GENERIC_READ, FILE_SHARE_READ, NULL, OPEN_EXISTING, 0, 0);


   //hProcess = OpenProcess(PROCESS_ALL_ACCESS, FALSE, dwPid);

//if (hProcess == NULL)
//{
//return FALSE;
//}

//hModule = GetModuleHandle(NULL);
  //HMODULE hModule, hNewModule;

  //DWORD ProcessID = GetCurrentProcessId();
  //ProcessHandle = OpenProcess(PROCESS_ALL_ACCESS,false,ProcessID);

  //if (ProcessHandle == NULL)
//{
//return FALSE;
//}

//hModule = GetModuleHandle(NULL);

  //CopyMemory(&ImageDosHeader, hModule, sizeof(ImageDosHeader));
  //CopyMemory(&ImageDosHeader, hModule, sizeof(ImageDosHeader));

 //CopyMemory(&ImageOptionalHeader, ((BYTE *)hModule + sizeof(DWORD) + ImageDosHeader._lfanew + sizeof(IMAGE_FILE_HEADER)), sizeof(ImageOptionalHeader));

 //CopyMemory(&ImageFileHeader, ((BYTE *)hModule + sizeof(DWORD) + ImageDosHeader._lfanew + sizeof(IMAGE_FILE_HEADER)), sizeof(ImageFileHeader));

  //__try
  //{

	//ImageDosHeader = new TImageDosHeader;
	//ShowMessage(IntToStr(ImageDosHeader->_lfanew));

	//ReadFile(hExeFile, &ImageDosHeader, sizeof(ImageDosHeader), Temp, NULL);

	//ShowMessage(IntToStr(&ImageDosHeader->_lfanew));

	//SetFilePointer(hExeFile, ImageDosHeader._lfanew, NULL, FILE_BEGIN);

	//ReadFile(hExeFile, Signature, sizeof(Signature), Temp, NULL);
	//ReadFile(hExeFile, ImageFileHeader, sizeof(ImageFileHeader), Temp, NULL);
	//ReadFile(hExeFile, ImageOptionalHeader, sizeof(ImageOptionalHeader), Temp, NULL);


	//for (i=0 ; i < ImageFileHeader.NumberOfSections - 1; i++) {
	  //ReadFile(hExeFile, ImageSectionHeader, sizeof(ImageSectionHeader), Temp, NULL);

	  //CopyMemory(&ImageSectionHeader, ((BYTE *)hModule + sizeof(DWORD) + ImageDosHeader._lfanew + sizeof(IMAGE_FILE_HEADER)), sizeof(ImageSectionHeader));

	  //AnsiString rsc = ".rsrc";

	  //ShowMessage((LPCSTR)ImageSectionHeader.Name);

	  //CopyMemory(&ImageResourceDirectory, ((BYTE *)hModule + sizeof(DWORD) + ImageDosHeader._lfanew + sizeof(IMAGE_FILE_HEADER)), sizeof(ImageResourceDirectory));
	  //ShowMessage(FormatDateTime("dddddd tt", FileDateToDateTime(ImageResourceDirectory.TimeDateStamp)));

	  //if (strcmp(ImageSectionHeader.Name, rsc.c_str())==0)
	  //break;
	//}

	//SetFilePointer(hModule, ImageSectionHeader.PointerToRawData, NULL, FILE_BEGIN);
	//ReadFile(hExeFile, ImageResourceDirectory, sizeof(ImageResourceDirectory), Temp, NULL);

	//CopyMemory(&ImageResourceDirectory, ((BYTE *)hModule + sizeof(DWORD) + ImageDosHeader._lfanew + sizeof(IMAGE_FILE_HEADER)), sizeof(ImageResourceDirectory));
  //}
  //__finally
  //{
	//FileClose((int)hExeFile);
  //};

  //return FileDateToDateTime(ImageResourceDirectory.TimeDateStamp);

//}

/*TDateTime xGetBuildTime() {
   HINSTANCE XMainDll=LoadLibrary("Main.dll");
   if (XMainDll) {
	 ReadEPROM=(TReadFromEPROM *)GetProcAddress(UNILPTXdll,"ReadFromEPROM");
     if (ReadEPROM==NULL) return 2;
     else
       if (ReadEPROM(DeviceID,4,64,ADCCoeff)) DevicePrepared=true;
       else return 1;
   }
   else return 3;
   ReadEPROM(DeviceID,70,16,DACCoeff);
   return 0;

 }; */


/*TDateTime __fastcall GetPEDate()
{
  TMemoryStream *F;
  TImageDosHeader *ImageDosHeader;
  DWORD Signature;
  TImageFileHeader *ImageFileHeader;


  F= new TMemoryStream();
  __try
  {
	F->LoadFromFile(ParamStr(0));
	F->Position = 0;
	F->Read(ImageDosHeader, sizeof(TImageDosHeader));
	if (ImageDosHeader->e_magic == IMAGE_DOS_SIGNATURE) {
	  F->Position = ImageDosHeader->_lfanew;
	  F->Read(&Signature, sizeof(DWORD));
	  if (Signature == IMAGE_NT_SIGNATURE) {
		F->Read(ImageFileHeader, sizeof(TImageFileHeader));
		return EncodeDate(1970, 1, 1) + (double)ImageFileHeader->TimeDateStamp / SecsPerDay;
	  }
	}
  }
  __finally
  {
	delete F;
  }
} */


//---------------------------------------------------------------------------
void __fastcall TAboutForm::FormCreate(TObject *Sender)
{
  RzStatusPane2->Caption = RzVersionInfo1->FileVersion;



  /*function GetBuildTime: TDateTime;
var
  Offset:DWORD;
  FD:LongRec;
  Date,Time:TDateTime;
begin
  Result:=0;
  Offset:=PImageNtHeaders(HInstance+DWORD(PImageDosHeader(HInstance)._lfanew)).OptionalHeader.DataDirectory[IMAGE_DIRECTORY_ENTRY_RESOURCE].VirtualAddress;
  if Offset<>0 then begin
    Integer(FD):=PInteger(Offset+HInstance+4)^;
    if TryEncodeDate(FD.Hi shr 9+1980,FD.Hi shr 5 and 15,FD.Hi and 31,Date)
      and TryEncodeTime(FD.Lo shr 11,FD.Lo shr 5 and 63,FD.Lo and 31 shl 1,0,Time) then
      Result:=Date+Time;
  end;
end; */

  /*TFileStream *fs;
  TImageDosHeader *idh;
  TImageFileHeader *ifh;

  fs= new TFileStream(/*ParamStr(0)*/ //"B381 - Copy.exe", fmOpenRead | FILE_SHARE_READ);
  /*fs->Read(idh, sizeof(idh));
  fs->Seek(idh->_lfanew + 4, soFromBeginning);
  fs->Read(ifh,sizeof(ifh));

			   //ShowMessage(FloatToStr(ifh->TimeDateStamp));
			   //ShowMessage(DateTimeToStr((EncodeDate(1970, 1, 1) + (double)(ifh->TimeDateStamp))));

  ShowMessage(FloatToStr(ifh->TimeDateStamp));
  delete fs; */

  /*HANDLE DllTestHandle = LoadLibrary("Main.dll");

  if(DllTestHandle)
  {
	GetBuildTime xGetBuildTime = (GetBuildTime)GetProcAddress(DllTestHandle, "GetBuildTime");

	if(xGetBuildTime) Caption= + "[" + FormatDateTime("dddddd tt", xGetBuildTime(0)) + "]";
	else ShowMessage("Function is not founded");
	FreeLibrary(DllTestHandle);
  }
  else ShowMessage("Could not load dll");  */

  /*HMODULE hLib;
  hLib = LoadLibrary("Main.dll");

  if(hLib)
  {
	GetBuildTimeAddress = (SumFunctionType)GetProcAddress(hLib, "GetBuildTime");
	if(SumFuncAddress) {
      GetBuildTime();
    } */


  //TDateTime (*GetBuildTime)(void);
  //(FARPROC &)GetBuildTime = GetProcAddress(hLib, "GetBuildTime");
  //pFunction(0, 0);


  //}

  //Caption= + "[" + FormatDateTime("dddddd tt", GetPEDate()) + "]";
}
//---------------------------------------------------------------------------

void __fastcall TAboutForm::FormShortCut(TWMKey &Msg, bool &Handled)
{
  if (Msg.CharCode == 27) {
	Close();
  }

  if (Msg.CharCode == 13) {
	Close();
  }
}
//---------------------------------------------------------------------------

