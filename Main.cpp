#include <vcl.h>
#pragma hdrstop

#include <Filectrl.hpp>

#include "Main.h"
#include "Ufft.h"
#include "UOptions.h"
#include "UComment.h"
#include "UNewExp.h"
#include "UNewSeries.h"
#include "NewSer.h"
#include "UToolWin.h"
#include "Recorder.h"
#include "URecMenu.h"
#include "TeeThemes.hpp"
#include "Math.hpp"
#include "DateUtils.hpp"

#pragma link "TeeJPEG"
#pragma link "TeeGIF"
#pragma link "TeePNG"
#pragma link "TeePCX"
#pragma link "TeePDFCanvas"

#pragma link "TeeSVGCanvas"
#pragma link "TeePSCanvas"
#pragma link "TeeVMLCanvas"
#pragma link "TeExport"
#pragma link "TeeJPEG"

#pragma resource "res.RES"

//#pragma link "TeeTranslate"
//#pragma link "TeeRussian"

//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "TeeTools"
#pragma link "RzTabs"
#pragma link "RzCommon"
#pragma link "RzForms"
#pragma link "RzCmboBx"
#pragma link "RzEdit"
#pragma link "RzLabel"
#pragma link "RzLine"
#pragma link "RzPanel"
#pragma link "RzSpnEdt"
#pragma link "RzStatus"
#pragma link "RzSplit"
#pragma link "RzButton"
#pragma link "RzRadChk"
#pragma link "TeeEdit"
#pragma link "TeeAntiAlias"
#pragma link "RzRadGrp"
#pragma link "AdvToolBar"
#pragma link "AdvToolBarStylers"
#pragma link "AdvGlowButton"
#pragma link "AdvOfficeSelectors"
#pragma link "RzShellDialogs"
#pragma link "AdvMenus"
#pragma link "AdvMenuStylers"
#pragma link "JvComponentBase"
#pragma link "JvScreenSaveSuppress"
#pragma resource "*.dfm"
//---------------------------------------------------------------------------
#include "Cursor.h"
#include "CSignal.cpp"
#include "CDevice.cpp"
#include "About.h"

 CSeria xSign(0,1);
 Cursors* Crs;
 CRecData Rec;

 double TSr;

 String MainDir;

 TStringList* 		ConfFile;
 TStringList* 		LabelFile;
 TStringList* 		AllLabelFile;

 TStringStream* 	RecFile;
 TFileStream*		RecorderFile;

 TStringStream* 	ESrFile;
 TFileStream*		EFile;

 TStringStream* 	ISrFile;
 TFileStream*		IFile;

 TStringStream* 	RSrFile;
 TFileStream*		RFile;

 TStringList* 		SeriesList;

 int CnAll			= 0;
 double Rx			= 0;

 double FE, FI;

 String xStr;
 bool Record   		= false;
 bool Paused 		= false;
 bool Chk 			= false;
 bool DevReady 		= false;
 bool RecRecorder 	= false;
 bool Redc 			= false;
 int LineCount		= 0;
 AnsiString DCText  = "";
 AnsiString xDR		= "";
 double CurrTime	= 0;
 double Last 		= 5;
 double LastI       = 15;
 double TCrt 		= 0;
 double TrCrt 		= 0;
 double xval		= 0;
 double UStc		= 0;
 double RtG			= 0;
 double xTime		= 0;
 int RCount			= 0;
 int FullLineCount  = 0;
 bool ToolRunEn     = false;
 double xrxTime     = 0;

 double ECDelta 	= 0;
 double ICDelta 	= 0;

 double EOldDelta 	= 0;
 double IOldDelta 	= 0;

 AnsiString NM,DR;

 double StartCurr;
 double StartVoltd;

 int StartCntBf     = 0;

 bool UStcK 		= false;
 double DACValue 	= 0;
 bool GDACValue 	= false;
 bool ChnE			= true;
 double OldTime 	= 0;
 AnsiString NameSrs;
 AnsiString SPath;
 bool Cycle 		= false;
 int CycleCount 	= 0;

 int CountSeries	= 0;

 int SeriaNumber	= 0;

 double MinX, MaxX, Lx, Kx,
        MinY1,MaxY1,Ly1,Ky1,
		MinY2,MaxY2,Ly2,Ky2,
        q;
 double WCoef;
 BOOL TypeBinO=true;
 BOOL TypeBinS=true;
 AnsiString WorkDir,SeriaName;
 AnsiString MainCap;
 bool MDown=false;

 int ToDAC = 0;
 bool AppTerminate = false;
 int ValData=0;
 double I0=0;
 bool ValI0=true;
 int OutCount = 0;
 bool Wait = false;
 float **tmp;
 int xn = 500;
 int nTimes = 0;
 double StTimerClock;

 TSpeedTheme *SpeedThemeI;
 TSpeedTheme *SpeedThemeU;

 TSpeedTheme *SpeedThemeE;
 TSpeedTheme *SpeedThemeCurr;
 TSpeedTheme *SpeedThemeR;
 TSpeedTheme *SpeedThemeEx;
 TSpeedTheme *SpeedThemeCurrx;

 void __fastcall FixFName(AnsiString &S)
 {
  while (S.Pos(":")) S[S.Pos(":")]=';';
  while (S.Pos("|")) S[S.Pos("|")]='!';
  while (S.Pos("/")) S[S.Pos("/")]='(';
  while (S.Pos("\\")) S[S.Pos("\\")]=')';
  while (S.Pos("?")) S[S.Pos("?")]='$';
  while (S.Pos("*")) S[S.Pos("*")]='^';
  while (S.Pos("""")) S[S.Pos("""")]='`';
  while (S.Pos("<")) S[S.Pos("<")]='{';
  while (S.Pos(">")) S[S.Pos(">")]='}';
};

 struct SE{
   AnsiString Name;
   AnsiString Dir;
   AnsiString FName;
   int Ns;
   bool Modified;

        SE(){
          Name="";
          Dir="";
          FName="";
          Ns=0;
          Modified=false;
        };
   BOOL Opened(){if (Name=="") return false;
                               return true;};
   void Open(AnsiString FN){
     int F;
     FName=FN;
     Dir=ExtractFileDir(FN);
	 F=FileOpen(FName,fmOpenRead);      //ShowMessage(FName);
     Form1->CBSeries->Clear();

	 int N;
	 AnsiChar* ch;

     FileRead(F,&N,sizeof(int));
	 ch=new AnsiChar[N+1];
     ch[N]=0;
	 FileRead(F,ch,sizeof(AnsiChar)*N);
	 Name=ch;

	 //ShowMessage(ch);

	 delete[] ch;


	 FileRead(F,&Ns,sizeof(int));
     for(int i=0;i<Ns;i++){
       FileRead(F,&N,sizeof(int));
       ch=new AnsiChar[N+1];
       ch[N]=0;
       FileRead(F,ch,sizeof(AnsiChar)*N);
	   Form1->CBSeries->Items->Add(ch);

	   //ShowMessage(ch);

       delete[] ch;
     };
	 Form1->CBSeries->ItemIndex=0;
     FileClose(F);
     AnsiString S=Form1->CBSeries->Items->Strings[0]+".bn";
     FixFName(S);
	 xSign.FName=Dir+"\\"+S;
     xSign.LoadFromBinFile();
     //Rec.RName=Dir+"\\recorder.bn";
     //Rec.RLoad();
     Form1->Caption=MainCap+" - "+Name;
   };

   void Close(){
     Form1->Caption=MainCap;

     if (Name=="") return;
     if (xSign.Ni==0) Ns--;
     if (Ns<=0) return;

     if (!DirectoryExists(Dir)) CreateDir(Dir);
     xSign.SaveToBinFile();
	 //Rec.RSave();
	 //Rec.Clear();

     int F=FileCreate(FName);
     int N;
	 AnsiChar* ch;

	 N=Name.Length();
     FileWrite(F,&N,sizeof(N));

     ch=new AnsiChar[N+1];
     StrCopy(ch,Name.c_str());
     FileWrite(F,ch,sizeof(AnsiChar)*N);
     delete[] ch;

     FileWrite(F,&Ns,sizeof(Ns));
     for(int i=0;i<Ns;i++) {
       N=Form1->CBSeries->Items->Strings[i].Length();
       FileWrite(F,&N,sizeof(N));
       ch=new AnsiChar[N+1];
	   StrCopy(ch, AnsiString(Form1->CBSeries->Items->Strings[i]).c_str());
	   FileWrite(F,ch,sizeof(AnsiChar)*N);
       delete[] ch;
     }
     FileClose(F);
   };

   BOOL New(AnsiString NM, AnsiString Dr){
     Close();
     Name=NM;
     Dir=Dr;
     Form1->Caption=MainCap+" - "+Name;
     FName=Dir+"\\inf.exp";
	 //Rec.RName=Dir+"\\recorder.bn";
     //Rec.Run();
     Ns=0;
     return true;
   };
 } xExp;

//---------------------------------------------------------------------------
 CDevice B181;
 TForm1 *Form1;

 AnsiString OldTxt;

//---------------------------------------------------------------------------

void __fastcall SetView() {
  /*q=15;

  Lx=MaxX-MinX;

  if (Form1->ScrollBarX->Max)
    Kx=(MaxX-MinX-Lx)/Form1->ScrollBarX->Max;
  else Kx=0;

  Form1->ScrollBarX->Position=Form1->ScrollBarX->Max/2;

  Form1->ScrollBarX->SmallChange=(Lx/(MaxX-MinX))*Form1->ScrollBarX->Max/q;
  Form1->ScrollBarX->LargeChange=(Lx/(MaxX-MinX))*Form1->ScrollBarX->Max/3;

  Ly1=MaxY1-MinY1;
  Ly2=MaxY2-MinY2;


  if (Form1->ScrollBarY1->Max)
    Ky1=(MaxY1-MinY1-Ly1)/Form1->ScrollBarY1->Max;
  else Ky1=0;

  Form1->ScrollBarY1->Position=Form1->ScrollBarY1->Max/2;
  Form1->ScrollBarY1->SmallChange=(Ly1/(MaxY1-MinY1))*Form1->ScrollBarY1->Max/q;
  Form1->ScrollBarY1->LargeChange=(Ly1/(MaxY1-MinY1))*Form1->ScrollBarY1->Max/3;
//  Form1->Chart->Repaint();

  if (Form1->ScrollBarY2->Max)
    Ky2=(MaxY2-MinY2-Ly2)/Form1->ScrollBarY2->Max;
  else Ky2=0;

  Form1->ScrollBarY2->Position=Form1->ScrollBarY2->Max/2;
  Form1->ScrollBarY2->SmallChange=(Ly2/(MaxY2-MinY2))*Form1->ScrollBarY2->Max/q;
  Form1->ScrollBarY2->LargeChange=(Ly2/(MaxY2-MinY2))*Form1->ScrollBarY2->Max/3;
//  Form1->Chart1->Repaint(); */
};

TColor __fastcall xGetColor(TColor StartColor, TColor EndColor, int Value, int Steps)
{
  Byte R1, G1, B1, R2, G2, B2, R, G, B;

  R1 = GetRValue(ColorToRGB(StartColor));
  G1 = GetGValue(ColorToRGB(StartColor));
  B1 = GetBValue(ColorToRGB(StartColor));
  R2 = GetRValue(ColorToRGB(EndColor));
  G2 = GetGValue(ColorToRGB(EndColor));
  B2 = GetBValue(ColorToRGB(EndColor));

  R = R1 - Value * (R1 - R2) / Steps;
  G = G1 - Value * (G1 - G2) / Steps;
  B = B1 - Value * (B1 - B2) / Steps;

  return RGB(R, G, B);
}

//---------------------------------------------------------------------------
void __fastcall SetMinMax() {
  //MinX=Sign.t0;
  //MaxX=MinX+Sign.Nt*Sign.dt;
  /*  MaxY=Sign[0][0];
  MinY=Sign[0][0];
  for(int i=0;i<Sign.Number;i++)
    for(int j=0;j<Sign.Length;j++) {
       if(MaxY<Sign[i][j]) MaxY=Sign[i][j];
       if(MinY>Sign[i][j]) MinY=Sign[i][j];
    }*/
  //


  /*MinY1=PConf->ADCMin[0];
  MaxY1=PConf->ADCMax[0];
  MinY2=PConf->ADCMin[1];
  MaxY2=PConf->ADCMax[1];

  Form1->Chart->BottomAxis->Minimum=MinX;
  Form1->Chart->BottomAxis->Maximum=MaxX;
  Form1->Chart1->BottomAxis->Minimum=MinX;
  Form1->Chart1->BottomAxis->Maximum=MaxX;
  Form1->Chart->LeftAxis->Minimum=MinY1;
  Form1->Chart->LeftAxis->Maximum=MaxY1;
  if (MinY2>Form1->Chart1->LeftAxis->Maximum) {
    Form1->Chart1->LeftAxis->Minimum=MinY2;
    Form1->Chart1->LeftAxis->Maximum=MaxY2;
  }
  else {
    Form1->Chart1->LeftAxis->Maximum=MaxY2;
    Form1->Chart1->LeftAxis->Minimum=MinY2;
  }; */

};
//---------------------------------------------------------------------------

__fastcall TForm1::TForm1(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------


//---------------------------------------------------------------------------
//   Меню выход
//---------------------------------------------------------------------------
void __fastcall TForm1::Menu_ExitClick(TObject *Sender)
{
   PostMessage(Form1->Handle,WM_CLOSE,0,0);
}

//---------------------------------------------------------------------------
//   Подтверждение завершения работы
//---------------------------------------------------------------------------
void __fastcall TForm1::OnClose(TWMClose& a)
{
  if (MessageBox(Form1->Handle, PAnsiChar("Вы действительно хотите выйти?"),         //Application->
  PAnsiChar("Подтверждение"), MB_YESNO | MB_ICONQUESTION)==IDYES)
	  Close();
  a.Result=0;
}

//---------------------------------------------------------------------------
//    Открытие файла
//---------------------------------------------------------------------------

void __fastcall TForm1::Menu_OpenClick(TObject *Sender)
{

  if (OpenDialog1->Execute()){

    BOOL k;
    int Tm=Now();

/*    if (TypeBinO)*/ k=xSign.LoadFromBinFile(/*OpenDialog1->FileName.c_str() */);
//    else k=Sign.LoadFromTxtFile(OpenDialog1->FileName.c_str() );

    if (k) {
      SetMinMax();
      SetView();
      CBSeries->Text=ExtractFileName(OpenDialog1->FileName);
    }
	else ShowMessage("Файл не удается прочесть");
    Tm=Now()-Tm;
	ShowMessage("Время чтения из файла "+IntToStr(Tm)+","+IntToStr((int)0));
  }
}

//---------------------------------------------------------------------------
//    Сохранение файла
//---------------------------------------------------------------------------
void __fastcall TForm1::Menu_Save_AsClick(TObject *Sender)
{
     if (Name=="") return;
	 if ((xExp.Ns<=0)||((xExp.Ns==1)&&(xSign.Ni==0))) return;

	 if (!DirectoryExists(xExp.Dir)) CreateDir(xExp.Dir);
	 if (!xSign.SaveToBinFile()) ShowMessage("Не удалось сохранить файл");


	 int F=FileCreate(xExp.FName);
     int N;
     AnsiChar* ch;
	 N=xExp.Name.Length();
     FileWrite(F,&N,sizeof(N));

     ch=new AnsiChar[N+1];
	 StrCopy(ch, xExp.Name.c_str());
	 FileWrite(F,ch,sizeof(AnsiChar)*N);

	 //ShowMessage(xExp.Name.c_str());

	 //ShowMessage(ch);

     delete[] ch;

	 int NS=xExp.Ns;
     if (xSign.Ni==0) NS--;
     FileWrite(F,&NS,sizeof(NS));
     for(int i=0;i<NS;i++) {
       N=Form1->CBSeries->Items->Strings[i].Length();
       FileWrite(F,&N,sizeof(N));
       ch=new AnsiChar[N+1];
	   StrCopy(ch, AnsiString(Form1->CBSeries->Items->Strings[i]).c_str());

	   //ShowMessage(ch);

	   FileWrite(F,ch,sizeof(AnsiChar)*N);
       delete[] ch;
     }
     FileClose(F);
}

//---------------------------------------------------------------------------
void __fastcall xSpan(double Lt, double Ht, double &xMin, double &xSec)
{
  xMin = MinuteSpan(Ht, Lt);
  xSec = SecondSpan(Ht, Lt);
}
//---------------------------------------------------------------------------
void __fastcall TForm1::xNewSeries(TObject *Sender)
{
  NewSerForm->EditName->Text=AnsiString("Серия " + Now());
	if (NewSerForm->ShowModal()==mrOk)
	{
	  xDR=NewSerForm->EditName->Text;

	  FixFName(xDR);

	  int indx = Form1->RzComboBox2->Add(xDR);
	  Form1->RzComboBox2->ItemIndex=indx;

	  if (!DirectoryExists(DR + "\\Data\\" + xDR +"\\")) CreateDir(DR + "\\Data\\" + xDR +"\\");

	  //ShowMessage(DR + "\\Data\\" + xDR +"\\");

	  Form1->RzComboBox2->Items->SaveToFile(DR + "\\Data\\Series.srs");

	  if (ESrFile->Size > 0)
	  {
		EFile->Position=EFile->Size;
		ESrFile->SaveToStream(EFile);

		ESrFile->Clear();
	  }


	  if (ISrFile->Size > 0)
	  {
		IFile->Position=IFile->Size;
	    ISrFile->SaveToStream(IFile);

		ISrFile->Clear();
	  }

	  //EFile->

	  EFile->Free();
	  IFile->Free();
	  RFile->Free();

	  EFile = new TFileStream(DR + "\\Data\\" + xDR + "\\" + "[E].txt" , fmCreate);
	  ESrFile->Clear();

	  IFile = new TFileStream(DR + "\\Data\\" + xDR + "\\" + "[I].txt" , fmCreate);
	  ISrFile->Clear();

	  RFile = new TFileStream(DR + "\\Data\\" + xDR + "\\" + "[R].txt" , fmCreate);
	  RSrFile->Clear();

	  LabelFile->Clear();

	  //xNewSeries();

	  //DFile = new TFileStream(DR + "\\Rec.smp", fmCreate);
	  //DFile->Clear();

	  Form1->SimensSeries->Clear();
	  Form1->VoltageSeries->Clear();
	  Form1->SeriesR->Clear();
	  Form1->CurrentSeries->Clear();
	  Form1->Series5->Clear();

	  //TSr=Double(Time());
	  CurrTime=xTime;

	  Form1->ToolButton13->Enabled=true;
	  Form1->ToolButton19->Enabled=true;
	  Form1->RzEdit1->Enabled=true;

	  Form1->CurrentSeries->DrawAllPoints=true;
	  Form1->VoltageSeries->DrawAllPoints=true;

	  RCount = 0;
	  Form1->SeriesR->Pointer->Size=4;
	  Form1->SeriesR->Pointer->Size=4;

	  Form1->SeriesR->Pointer->Visible=true;
	  Form1->SimensSeries->Pointer->Visible=true;

	  for (int i = 0; i < LineCount; i++)
	  {
		delete VoltageChart->FindComponent("xLine" + IntToStr(i));
		delete RChart->FindComponent("xLine" + IntToStr(i));
		delete CurrentChart->FindComponent("xLine" + IntToStr(i));
	  }

	  LineCount=0;

	  Form1->VoltageChart->BottomAxis ->Automatic=true;
	  Form1->VoltageChart->RightAxis  ->Automatic=true;
	  Form1->VoltageChart->LeftAxis   ->Automatic=true;

	  Form1->CurrentChart->BottomAxis ->Automatic=true;
	  Form1->CurrentChart->LeftAxis   ->Automatic=true;

	  Form1->RChart->BottomAxis 	   ->Automatic=true;
	  Form1->RChart->LeftAxis   	   ->Automatic=true;

	  Form1->RzNumericEdit6				->Enabled=true;

	  StartCurr=0;
	  StartVoltd=0;

	  StartCntBf=0;

	  if (3 == Form1->ToolButton13->ImageIndex)
	  {
		TSr=double(Now());
	  }

	  Form1->SeriesR->Pointer->Size=4;
	  Form1->SimensSeries->Pointer->Size=4;
	  Form1->Series5->Pointer->Size=4;

	  Form1->SeriesR->Pointer->Visible=true;
	  Form1->SimensSeries->Pointer->Visible=true;
	  Form1->Series5->Pointer->Visible=true;

	  RCount=0;
	}
}

void __fastcall TForm1::FormCreate(TObject *Sender)
{
  WorkDir=GetCurrentDir();

  if (RzRegIniFile1->ReadBool("All", "DecimalSeparator", true)) {
	MyFormat.DecimalSeparator=(Char)(44);
  }
  else
  {
    MyFormat.DecimalSeparator=(Char)(46);
  }

  PConf=new CConf;
  xSign.Init(CurrChart,Chart1,Series3,Series4,CheckListBox1);
  //Rec.Init(ChartI,ChartU,Series1,Series2,ScrollBar1,ScrollBarI,ScrollBarU,PanelT,Splitter0);
  B181.Config=PConf;

  MainCap=Form1->Caption;
  xExp.Name="";
  xExp.Dir="";

  ToolRun->Enabled=false;

  MenuResetClick(MenuReset);

  //MinX=Chart->BottomAxis->Minimum;//0;//
  //MaxX=Chart->BottomAxis->Maximum;//1000;

  //MinY1=Chart->LeftAxis->Minimum;//0;//
  //MaxY1=Chart->LeftAxis->Maximum;//15000;//
  //MinY2=Chart1->LeftAxis->Minimum;//0;//
  //MaxY2=Chart1->LeftAxis->Maximum;//15000;//
  //SetView();
  WCoef=0.5;
  CheckListBox1->Clear();
  Panel2Resize(Panel2);
  OpenDialog1->InitialDir=WorkDir;
  SaveDialog1->InitialDir=WorkDir;

  RzPropertyStore1->Load();
  RzCustomColors1->Load("CustomColors");


  UpDown1->Position=PConf->NPulse;
  Edit1->Text=FloatToStrF(PConf->A,ffFixed,6,1)+" "+PConf->DACValue[0];
  Edit2->Text=FloatToStrF(PConf->dA,ffFixed,6,1)+" "+PConf->DACValue[0];

  Crs=new Cursors(CurrChart,Chart1,&xSign,PConf,&I0/*,Edit4*/);
  //Edit4->Text=FloatToStrF(I0,ffFixed,6,4)+" "+PConf->ADCValue[0];

  ConfFile 	= new TStringList;
  LabelFile = new TStringList;
  AllLabelFile = new TStringList;

  RecFile  = new TStringStream;//TStringList;
  ESrFile  = new TStringStream;
  ISrFile  = new TStringStream;
  RSrFile  = new TStringStream;

  SeriesList  = new TStringList;

  SpeedThemeI = new TSpeedTheme(ChartI);
  SpeedThemeI->Apply();

  SpeedThemeU = new TSpeedTheme(ChartU);
  SpeedThemeU->Apply();

  /*SpeedThemeE = new TSpeedTheme(VoltageChart);
  SpeedThemeE->Apply();

  SpeedThemeCurr = new TSpeedTheme(CurrentChart);
  SpeedThemeCurr->Apply();

  SpeedThemeR = new TSpeedTheme(RChart);
  SpeedThemeR->Apply();

  SpeedThemeEx = new TSpeedTheme(Chart2);
  SpeedThemeEx->Apply();

  SpeedThemeCurrx = new TSpeedTheme(CurrentTChart);
  SpeedThemeCurrx->Apply();*/

  SeriesI->DrawAllPoints = false;
  SeriesU->DrawAllPoints = false;

  tmp=new float*[2];
  tmp[0]=new float[xn];
  tmp[1]=new float[xn];

  //RzSplitter1->Percent=70;
  //RzSplitter2->Percent=70;
  //RzSplitter3->Percent=50;

  CycleCount = RzSpinEdit3->Value;

  /*TMemoryStream* TmpStream;
  TmpStream = new TMemoryStream;

  TResourceStream* imageStream;
  imageStream = new TResourceStream((int)HInstance, PAnsiChar("media_pause"), RT_RCDATA);


  ChartTool10->Shape->Picture->Graphic->LoadFromStream();*/

  //TeeSetRussian;

  VoltageChart->	BufferedDisplay=true;
  CurrentChart->	BufferedDisplay=true;
  Chart2->			BufferedDisplay=true;
  CurrentTChart->	BufferedDisplay=true;
  RChart->			BufferedDisplay=true;
  ChartI->			BufferedDisplay=true;
  ChartU->			BufferedDisplay=true;

  VoltageChart->	ClipPoints=false;
  CurrentChart->	ClipPoints=false;

  VoltageChart->	BottomAxis->RoundFirstLabel=false;
  CurrentChart->	BottomAxis->RoundFirstLabel=false;

  VoltageChart->	Foot->Visible=false;
  CurrentChart->	Foot->Visible=false;
  Chart2->			Foot->Visible=false;
  CurrentTChart->	Foot->Visible=false;
  RChart->			Foot->Visible=false;
  ChartI->			Foot->Visible=false;
  ChartU->			Foot->Visible=false;

  HANDLE ProcessHandle, ThreadHandle;

  DWORD ProcessID = GetCurrentProcessId();
  ProcessHandle = OpenProcess(PROCESS_ALL_ACCESS,false,ProcessID);
  SetPriorityClass(ProcessHandle, HIGH_PRIORITY_CLASS);

  ThreadHandle = GetCurrentThread();
  SetThreadPriority(ThreadHandle, THREAD_PRIORITY_HIGHEST);

  ChartTool13->Value=0;
  Edit4->Text=FloatToStrF(0,ffFixed,6,4);

  if (FileExists("SvLabelt.txt")){
	RzEdit1->Items->LoadFromFile("SvLabelt.txt");
  }
}

//---------------------------------------------------------------------------
//  Выгрузка библиотеки при закрытии окна
//---------------------------------------------------------------------------
void __fastcall TForm1::FormClose(TObject *Sender, TCloseAction &Action)
{ void * a;
  xExp.Close();
  B181.CloseDevice();

  if (Record)
	{
	  //ConfFile->Add(xStr + (Char)(9) + "Series" + IntToStr(CountSeries-1) + ".str");

	  //TempFile->SaveToFile(MainDir + "\\Series" + IntToStr(CountSeries-1) + ".str");

	  //ConfFile->SaveToFile(MainDir + "\\Exp.exd");
	}

	if (RecRecorder)
	{
	  //RecFile->SaveToFile(MainDir + "\\Rec.str");
	}

  //B181.CloseDevice();

  RzPropertyStore1->Save();
  RzCustomColors1->Save("CustomColors");

  if (RecFile->Size > 0)
  {
	RecorderFile->Position=RecorderFile->Size;
	RecFile->SaveToStream(RecorderFile);

	RecFile->Clear();
  }

  if (ESrFile->Size > 0)
  {
	EFile->Position=EFile->Size;
	ESrFile->SaveToStream(EFile);

	ESrFile->Clear();
  }

  if (ISrFile->Size > 0)
  {
	IFile->Position=IFile->Size;
	ISrFile->SaveToStream(IFile);

	ISrFile->Clear();
  }

  ConfFile   ->Free();
  RecFile    ->Free();
  SeriesList ->Free();
  LabelFile  ->Free();
  AllLabelFile  ->Free();

  SpeedThemeI->Free();
  SpeedThemeU->Free();

  SpeedThemeE     ->Free();
  SpeedThemeCurr  ->Free();
  SpeedThemeR     ->Free();
  SpeedThemeEx    ->Free();
  SpeedThemeCurrx ->Free();

  delete[] tmp[0];
  delete[] tmp[1];
  delete[] tmp;
}

//---------------------------------------------------------------------------
//  Окно настроек
//---------------------------------------------------------------------------
void __fastcall TForm1::Menu_OptionsClick(TObject *Sender)
{
  FOptions->ShowModal();
}



//---------------------------------------------------------------------------
// Запуск измерений
//---------------------------------------------------------------------------
void __fastcall TForm1::ButtonRunClick(TObject *Sender)
{

    if (ValData) {
      AnsiString S="Неправильно введены данные:\n";
      if (ValData&2) S+="Амплитуда\n";
      if (ValData&4) S+="Изменение амплитуды\n";
      if (ValData&1) S+="Количество импульсов\n";
	  ShowMessage(S);
      return;
    }

    PConf->NPulse=StrToInt(Edit3->Text);

    float *tmp_in;
    float **tmp_out;
    float **tmp_data;

    float C;
    BOOL f=false;
    bool Tmr=Timer1->Enabled;
    Timer1->Enabled=false;

	if (xSign.Ni==0) f=true;

    //--------------------------------------------------------

    PConf->ADCLen=256;
    PConf->DACLen=PConf->ADCLen;    //длинна импульса

    tmp_out=new float*[2];
    tmp_out[0]=new float[PConf->ADCLen];
    tmp_out[1]=new float[PConf->ADCLen];

    for(int i=0;i<PConf->DACLen;i++)
      tmp_out[0][i]=0;

    B181.ConfigCmn();
    B181.ConfigADC();
    B181.ConfigDAC();

    B181.WriteToDAC(tmp_out[0]);
    B181.Reset();
    B181.Run();
    while(!(4&B181.ReadStatus()));
    B181.ReadFromADC(tmp_out);

    C=0;
    for(int i =0;i<PConf->ADCLen;i++)
      C+=tmp_out[1][i];
    C/=PConf->ADCLen;

    delete[] tmp_out[1];
	delete[] tmp_out[0];
	delete[] tmp_out;

	//--------------------------------------------------------

    int   N = PConf->NPulse;
    int  G0 = PConf->Gen0;
    int G0M = PConf->Gen0Mul;

    PConf->dt=double(G0)*20e-6*G0M;

    int  Nu = PConf->t/PConf->dt * PConf->Gen0Mul;
    int  No = (PConf->T-PConf->t)/PConf->dt * PConf->Gen0Mul;
    int NtM = (PConf->tp+PConf->tu+PConf->tf)/PConf->dt;
    int NpM = PConf->tp/PConf->dt;

    int N1=65536/(2*(Nu+No));
    if (N1==0) {
      ShowMessage("Слишком длинный сигнал");
      return;
    }

    float A=PConf->A;
    int *b;
    int n=(N1+N-1)/N1;
    b=new int[n];
    for(int i1=0;i1<n-1;i1++)
      b[i1]=N1;
    b[n-1]=N-(n-1)*N1;

//-------------------------------------------------------------------

    tmp_in=new float[b[0]*(Nu+No)];

    tmp_out=new float*[2];
    for(int i=0;i<2;i++) tmp_out[i]=new float[(Nu+No)*b[0]];

    tmp_data=new float*[N*2];
    for(int i=0;i<N*2;i++) tmp_data[i]=new float[NtM];

    for(int i1=0;i1<n;i1++) {


    PConf->DACLen=(Nu+No)*b[i1];
    PConf->ADCLen=PConf->DACLen;


    int i=0,L=No/2;
    do {
      for(;i<L;i++) tmp_in[i]=0;
      if (L==PConf->DACLen) break;
      L+=Nu;
      for(;i<L;i++) tmp_in[i]=(A-C)/PConf->DACCoeff[0];
      L+=No;
      if (L>PConf->DACLen) L=PConf->DACLen;
      A+=PConf->dA;
    } while (true);

    B181.ConfigCmn();
    B181.ConfigADC();
    B181.ConfigDAC();

    B181.WriteToDAC(tmp_in);

/*--------*/   Rec.AddLine(double(Now()));

    B181.Reset();
    B181.Run();
    while(!(4&B181.ReadStatus()));

    B181.ReadFromADC(tmp_out);


    int k;
    for(int i=0;i<b[i1]*2;i++) {
      k=(i/2)*(Nu+No)+(No/2-NpM*G0M);
      for(int j=0;j<NtM;j++) {
        tmp_data[i+2*b[0]*i1][j]=tmp_out[i%2][k];
        k+=G0M;
      };
    }
    }
    delete[] tmp_in;
    for(int i=0;i<2;i++) delete[] tmp_out[i];
    delete[] tmp_out;
    delete[] b;
    if (f) {
	  xSign.SetLen(NtM);
	  xSign.dt=PConf->dt;
      xSign.t0=-PConf->tp;
      SetMinMax();
      SetView();
    }

    AnsiString** Names;
    Names=new AnsiString*[N];

    A=PConf->A;
    for(int i=0;i<N;i++) {
      Names[i]=new AnsiString;
      *Names[i]=FloatToStr(A)+" "+PConf->ADCValue[1];
      A+=PConf->dA;
    }

    xSign.Add(N*2,tmp_data,Names);

	Edit1->Text=FloatToStr(PConf->A)+" "+PConf->DACValue[0];

	Timer1->Enabled=Tmr;

    Menu_Save_AsClick(Sender);
};

//---------------------------------------------------------------------------
//
//---------------------------------------------------------------------------
void __fastcall TForm1::ScrollBarXScroll(TObject *Sender,
      TScrollCode ScrollCode, int &ScrollPos)
{
  /*if ((Chart->BottomAxis->Maximum)<(MinX+Kx*ScrollPos)) {
    Chart1->BottomAxis->Maximum=MinX+Kx*ScrollPos+Lx;
    Chart1->BottomAxis->Minimum=MinX+Kx*ScrollPos;
    Chart->BottomAxis->Maximum=MinX+Kx*ScrollPos+Lx;
    Chart->BottomAxis->Minimum=MinX+Kx*ScrollPos;
  }
  else {
    Chart->BottomAxis->Minimum=MinX+Kx*ScrollPos;
    Chart->BottomAxis->Maximum=MinX+Kx*ScrollPos+Lx;
    Chart1->BottomAxis->Minimum=MinX+Kx*ScrollPos;
    Chart1->BottomAxis->Maximum=MinX+Kx*ScrollPos+Lx;
  } */
}

//---------------------------------------------------------------------------
//
//---------------------------------------------------------------------------
void __fastcall TForm1::ScrollBarY1Scroll(TObject *Sender,
      TScrollCode ScrollCode, int &ScrollPos)
{

   /*int p=ScrollBarY1->Max-ScrollPos;

  if ((Chart->LeftAxis->Maximum)<(MinY1+Ky1*p)) {
    Chart->LeftAxis->Maximum=MinY1+Ky1*p+Ly1;
    Chart->LeftAxis->Minimum=MinY1+Ky1*p;
  }
  else {
    Chart->LeftAxis->Minimum=MinY1+Ky1*p;
    Chart->LeftAxis->Maximum=MinY1+Ky1*p+Ly1;
  } */
}

//---------------------------------------------------------------------------
//
//---------------------------------------------------------------------------
void __fastcall TForm1::UpDownXClick(TObject *Sender, TUDBtnType Button)
{
//  btNext refers to the Up or Right arrow, and btPrev refers to the Down or Left
  /*if (Button==1) Lx*=1.5;
  else if (Button==0) Lx/=1.5;

//  if (Lx>MaxX-MinX) Lx=MaxX-MinX;
  ScrollBarX->SmallChange=(Lx/(MaxX-MinX))*ScrollBarX->Max/q;

  if (ScrollBarX->Max)
    Kx=(MaxX-MinX-Lx)/ScrollBarX->Max;
  else Kx=0;
  if ((Chart->BottomAxis->Maximum)<(MinX+Kx*ScrollBarX->Position)) {
    Chart->BottomAxis->Maximum=MinX+Kx*ScrollBarX->Position+Lx;
    Chart->BottomAxis->Minimum=MinX+Kx*ScrollBarX->Position;
    Chart1->BottomAxis->Maximum=MinX+Kx*ScrollBarX->Position+Lx;
    Chart1->BottomAxis->Minimum=MinX+Kx*ScrollBarX->Position;
  }
  else {
    Chart->BottomAxis->Minimum=MinX+Kx*ScrollBarX->Position;
    Chart->BottomAxis->Maximum=MinX+Kx*ScrollBarX->Position+Lx;
    Chart1->BottomAxis->Minimum=MinX+Kx*ScrollBarX->Position;
    Chart1->BottomAxis->Maximum=MinX+Kx*ScrollBarX->Position+Lx;
  }
  ScrollBarX->Repaint();*/

  if (Button==1)
   {
	 Chart1->Zoom->Direction=tzdHorizontal;
	 Chart1->ZoomPercent(95);
   }
   else
   {
	 Chart1->Zoom->Direction=tzdHorizontal;
	 Chart1->ZoomPercent(105);
   }

   Chart1->Zoom->Direction=tzdBoth;
}

//---------------------------------------------------------------------------
//
//---------------------------------------------------------------------------
void __fastcall TForm1::UpDownY1Click(TObject *Sender, TUDBtnType Button)
{

  /*if (Button==1) Ly1*=1.5;
  else if (Button==0) Ly1/=1.5;

 // if (Ly>MaxY-MinY) Ly=MaxY-MinY;

  ScrollBarY1->SmallChange=(Ly1/(MaxY1-MinY1))*ScrollBarY1->Max/q;
  int p=ScrollBarY1->Max-ScrollBarY1->Position;

  if (ScrollBarY1->Max)
    Ky1=(MaxY1-MinY1-Ly1)/ScrollBarY1->Max;
  else Ky1=0;
  if ((Chart->LeftAxis->Maximum)<(MinY1+Ky1*p)) {
    Chart->LeftAxis->Maximum=MinY1+Ky1*p+Ly1;
    Chart->LeftAxis->Minimum=MinY1+Ky1*p;
  }
  else {
    Chart->LeftAxis->Minimum=MinY1+Ky1*p;
    Chart->LeftAxis->Maximum=MinY1+Ky1*p+Ly1;
  } */

  if (Button==1)
   {
	 CurrChart->Zoom->Direction=tzdVertical;
	 CurrChart->ZoomPercent(95);
   }
   else
   {
	 CurrChart->Zoom->Direction=tzdVertical;
	 CurrChart->ZoomPercent(105);
   }

   CurrChart->Zoom->Direction=tzdBoth;
}


void __fastcall TForm1::UpDownY2Click(TObject *Sender, TUDBtnType Button)
{

  /*if (Button==1) Ly2*=1.5;
  else if (Button==0) Ly2/=1.5;

 // if (Ly>MaxY-MinY) Ly=MaxY-MinY;

  ScrollBarY2->SmallChange=(Ly2/(MaxY2-MinY2))*ScrollBarY2->Max/q;
  int p=ScrollBarY2->Max-ScrollBarY2->Position;

  if (ScrollBarY2->Max)
    Ky2=(MaxY2-MinY2-Ly2)/ScrollBarY2->Max;
  else Ky2=0;
  if ((Chart1->LeftAxis->Maximum)<(MinY2+Ky2*p)) {
    Chart1->LeftAxis->Maximum=MinY2+Ky2*p+Ly2;
    Chart1->LeftAxis->Minimum=MinY2+Ky2*p;
  }
  else {
    Chart1->LeftAxis->Minimum=MinY2+Ky2*p;
    Chart1->LeftAxis->Maximum=MinY2+Ky2*p+Ly2;
  } */

  if (Button==1)
   {
	 Chart1->Zoom->Direction=tzdVertical;
	 Chart1->ZoomPercent(95);
   }
   else
   {
	 Chart1->Zoom->Direction=tzdVertical;
	 Chart1->ZoomPercent(105);
   }

   Chart1->Zoom->Direction=tzdBoth;

}


//---------------------------------------------------------------------------
// Настройка системы
//---------------------------------------------------------------------------
void __fastcall TForm1::ButtonOptionClick(TObject *Sender)
{
 FOptions->ShowModal();
}


void __fastcall TForm1::OpenDialog1TypeChange(TObject *Sender)
{
  TypeBinO=!TypeBinO;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::SaveDialog1TypeChange(TObject *Sender)
{
  TypeBinS=!TypeBinS;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::CheckListBox1ClickCheck(TObject *Sender)
{
  for(int i=0;i<xSign.Ni/2;i++)
  {
	xSign.Series[i*2]->Active=CheckListBox1->Checked[i];
    xSign.Series[i*2+1]->Active=CheckListBox1->Checked[i];
  }
}
//---------------------------------------------------------------------------

/*
void __fastcall TForm1::Menu_ExitClick(TObject *Sender)
{
  int c=CheckListBox1->ItemIndex;
  if (c>=0) Sign.Delete(c);
  else ShowMessage("Выберите сигнал");

} */
//---------------------------------------------------------------------------

//---------------------------------------------------------------------------

void __fastcall TForm1::Menu_NewClick(TObject *Sender)
{
  NewExp->EditName->Text="Эксперимент от "+DateTimeToStr(Now());

  if (NewExp->ShowModal()==mrOk) {
	//AnsiString NM,DR;

    Menu_Options->Enabled=false;

    NM=NewExp->EditName->Text;
	DR=NM;
	FixFName(DR);
	DR=WorkDir+"\\"+DR;
	xExp.New(NM,DR);

	if (!DirectoryExists(DR)) CreateDir(DR);

	TIniFile *iniFile;

	//AnsiString DskF =

	iniFile = new TIniFile(DR + "\\desktop.ini");

	iniFile->WriteString(".ShellClassInfo", "ConfirmFileOp", "0");
	iniFile->WriteString(".ShellClassInfo", "InfoTip", "Папка данных эксперимента b381 2010");
	iniFile->WriteString(".ShellClassInfo", "IconFile", "icon.ico");
	iniFile->WriteString(".ShellClassInfo", "IconIndex", "0");

	iniFile->UpdateFile();

	iniFile->Free();

	AnsiString ixDR = DR + "\\";

	SetFileAttributes(ixDR.c_str(), FILE_ATTRIBUTE_SYSTEM);
	ixDR = DR + "\\desktop.ini";
	SetFileAttributes(ixDR.c_str(), FILE_ATTRIBUTE_SYSTEM | FILE_ATTRIBUTE_HIDDEN);                 //"RT_RCDATA"

	TResourceStream *ResStream = new TResourceStream((int)HInstance, UnicodeString("XICON"), (System::WideChar*)RT_RCDATA);
	ixDR = DR + "\\icon.ico";
	ResStream->SaveToFile(ixDR);
	ResStream->Free();

	SetFileAttributes(ixDR.c_str(), FILE_ATTRIBUTE_SYSTEM | FILE_ATTRIBUTE_HIDDEN);

	ChartI->BottomAxis->SetMinMax(0, 5);
	ChartU->BottomAxis->SetMinMax(0, 5);

	if (!DirectoryExists(DR + "\\Data\\")) CreateDir(DR + "\\Data\\");

	SeriesI->Clear();
	SeriesU->Clear();

	AllLabelFile->Clear();

	for (int i = 0; i < FullLineCount; i++)
	{
	  delete ChartI->FindComponent("xLine" + IntToStr(i));
	  delete ChartU->FindComponent("xLine" + IntToStr(i));
	}

	FullLineCount=0;

	Record=false;

	AdvToolBarButton4->Enabled=true;

	ToolButton13->ImageIndex = 4;
	RzComboBox2->Enabled=true;
	ToolButton16->Enabled=false;

	RzToolButton1->Enabled=false;

	if (RecFile->Size > 0)
	{
	  RecorderFile->Position=RecorderFile->Size;
	  RecFile->SaveToStream(RecorderFile);

      RecFile->Clear();
	}

    RecorderFile->Free();

	RecorderFile = new TFileStream(DR + "\\[Rec].txt", fmCreate);
    RecFile->Clear();

	//ShowMessage(DR + "\\");

	RecRecorder=true;

	TCrt=double(Now());

    xSign.Clear();
	CBSeries->Clear();//Text="Серия "+Time()+" "+FloatToStr(PConf->T)+" мс";

	RzPageControl1->TabIndex=0;

	Menu_NewSeriaClick(NULL);

	xNewSeries(Sender);

	AdvToolBarButton1 ->Enabled=true;
  }
}
//---------------------------------------------------------------------------


void __fastcall TForm1::CheckListBox1Click(TObject *Sender)
{
  int c=CheckListBox1->ItemIndex;
  if (c>=0) xSign.SetSelected(c);
  xSign.Refresh(c);
}
//---------------------------------------------------------------------------


void __fastcall TForm1::Panel1Resize(TObject *Sender)
{
  //CurrChart->Height=Panel1->Height*WCoef;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Splitter1Moved(TObject *Sender)
{
  //double c=CurrChart->Height;
  //WCoef=c/Panel1->Height;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Panel3Resize(TObject *Sender)
{
  //UpDownX->Height=16;
  //UpDownX->Width=16;
  //UpDownX->Top=Panel3->Height-UpDownX->Height-2;
  //UpDownX->Left=2;

  //ScrollBarX->Height=16;
  //ScrollBarX->Width=CurrChart->Width;
  //ScrollBarX->Top=Panel3->Height-ScrollBarX->Height-2;
  //ScrollBarX->Left=UpDownX->Width+4;

  //Panel1->Top=1;
  //Panel1->Left=20;
  //Panel1->Height=Panel3->Height-20;
  //Panel1->Width=Panel3->Width-Panel1->Left;
}
//---------------------------------------------------------------------------



void __fastcall TForm1::CurrChartResize(TObject *Sender)
{
  //ScrollBarY1->Top=CurrChart->Top+2;
  //ScrollBarY1->Height=CurrChart->Height-2;

  //ScrollBarY2->Top=CurrChart->Top+CurrChart->Height+5;
  //ScrollBarY2->Height=Chart1->Height-2;

  //ScrollBarX->Width=CurrChart->Width-2;
  //ScrollBarX->Left=Panel1->Left+1;

  UpDownY1->Top=CurrChart->Height/2-11;
  UpDownY1->Left=2;

  UpDownY2->Top=Chart1->Height/2-11;
  UpDownY2->Left=2;

  //Label4->Left=Chart->Width-109;
  //Label5->Left=Chart->Width-109;

}
//---------------------------------------------------------------------------



void __fastcall TForm1::ScrollBarY2Scroll(TObject *Sender,
      TScrollCode ScrollCode, int &ScrollPos)
{
   /*int p=ScrollBarY2->Max-ScrollPos;

  if ((Chart1->LeftAxis->Maximum)<(MinY2+Ky2*p)) {
    Chart1->LeftAxis->Maximum=MinY1+Ky2*p+Ly2;
    Chart1->LeftAxis->Minimum=MinY1+Ky2*p;
  }
  else {
    Chart1->LeftAxis->Minimum=MinY2+Ky2*p;
    Chart1->LeftAxis->Maximum=MinY2+Ky2*p+Ly2;
  }*/

}
//---------------------------------------------------------------------------

void __fastcall TForm1::Menu_PrintClick(TObject *Sender)
{
  CurrChart->PrintLandscape();
}
//---------------------------------------------------------------------------


void __fastcall TForm1::CurrChartAfterDraw(TObject *Sender)
{
	/*int k=6;

    double a1=Chart->Width*Chart->MarginLeft*0.01+Chart->LeftAxis->LabelsSize+k;

    double b1=Chart->Height*Chart->MarginTop*0.01;
    double b2=Chart->Height*Chart->MarginBottom*0.01+Chart->BottomAxis->LabelsSize+k;
    double ly=Chart->Height-b1-b2;

    int y=b1+ly*(Chart->LeftAxis->Maximum-I0)/
     (Chart->LeftAxis->Maximum-Chart->LeftAxis->Minimum);

    Chart->Canvas->Pen->Color=clBlack;
    Chart->Canvas->MoveTo(a1,y);
    Chart->Canvas->LineTo(Chart->Width,y);

  Crs->Show();*/
}

//---------------------------------------------------------------------------
//                   Коментарий к эксперементу
//---------------------------------------------------------------------------
void __fastcall TForm1::Menu_CommentClick(TObject *Sender)
{
  AnsiString FComment=xExp.Dir+"\\comment.txt";

  Comment->Memo->Text="";
  if (FileExists(FComment))
    Comment->Memo->Lines->LoadFromFile(FComment);

  if (Comment->ShowModal()==mrOk) {
	if (!DirectoryExists(xExp.Dir)) CreateDir(xExp.Dir);
    Comment->Memo->Lines->SaveToFile(FComment);
  }
}
//---------------------------------------------------------------------------




void __fastcall TForm1::Panel2Resize(TObject *Sender)
{
 int Width=Panel2->Width;
 CBSeries->Width=Width;
 CheckListBox1->Width=Width;
 CheckListBox1->Top=112;
 CheckListBox1->Height=Panel2->Height-CheckListBox1->Top;
}
//---------------------------------------------------------------------------


//---------------------------------------------------------------------------
//
//---------------------------------------------------------------------------

void __fastcall TForm1::ToolCursClick(TObject *Sender)
{
  if (ToolLine->Down) {
	ToolX->Down=false;
	ChartTool12->Active=ToolX->Down;
  }

  if (ToolX->Down) {
	ToolLine->Down=false;
	CursorLineTool->Active=ToolLine->Down;
  }

  CursorLineTool->Active=ToolLine->Down;
  ChartTool12->Active=ToolX->Down;

  //ChartTool12->Active=ToolX->Down;

  /*if (ToolLine->Down) {
    ToolLine->Down=false;
	CursorLineTool->Active=ToolLine->Down;
	//ToolX->Down=false;
	//ChartTool12->Active=ToolX->Down;
  }
  else
  {
    ToolLine->Down=true;
	CursorLineTool->Active=ToolLine->Down;
	ToolX->Down=false;
	ChartTool12->Active=ToolX->Down;
  }

  if (ToolX->Down) {
    ToolX->Down=false;
	ChartTool12->Active=ToolX->Down;

	Form1->PointsI->Clear();
	Form1->PointsU->Clear();
  }
  else
  {
    ToolX->Down=true;
	ChartTool12->Active=ToolX->Down;

	ToolLine->Down=false;
	CursorLineTool->Active=ToolLine->Down;
  }*/

  if (ToolLine->Down||ToolX->Down) {

						 CurrChart->AllowPanning=0;//{pmNone};
                         CurrChart->AllowZoom=false;
                         Chart1->AllowPanning=0;//pmNone;
						 Chart1->AllowZoom=false;

						 ToolButton9->Down=false;
						 ToolButton9->Enabled=false;
						 Edit4->Enabled=false;

	 //if(ToolCross->Down) Crs->SetType(1);
	 if(ToolLine->Down)
	 {
	   Crs->SetType(2);
	 }
     if(ToolX->Down)     Crs->SetType(3);

						 //ToolWin->Visible=true;
  }
  else {
						 ToolWin->Visible=false;
						 CurrChart->AllowPanning=pmBoth;
                         CurrChart->AllowZoom=true;
                         Chart1->AllowPanning=pmBoth;
						 Chart1->AllowZoom=true;

						 ToolButton9->Enabled=true;

                         Crs->SetType(0);
  };
}
//---------------------------------------------------------------------------





void __fastcall TForm1::Menu_DeleteClick(TObject *Sender)
{
  int c=CheckListBox1->ItemIndex;
  if (c>=0) xSign.Delete(c);
  else ShowMessage("Выберите сигнал");

}

//---------------------------------------------------------------------------


void __fastcall TForm1::MenuResetClick(TObject *Sender)
{

  B181.CloseDevice();
  int c=B181.PrepareDevice();
  Timer1->Enabled=false;
  ToolRun->Enabled=true;

  switch (c) {
    case -1: ShowMessage("Прибор не обнаружен"); break;
    case -2: ShowMessage("Не удалось загрузить функцию"); break;
    case -3: ShowMessage("Не удалось загрузить ""b181.dll"""); break;
    case  1: ShowMessage("Не удается прочитать информацию из прибора"); break;
    case  2: ShowMessage("Не удалось загрузить функцию ""ReadFromEPROM"""); break;
    case  3: ShowMessage("Не удалось загрузить ""unilptx.dll"""); break;
    case  0: {  ToolRun->Enabled=true;
                //MenuReset->Enabled=false;
                //ToolButton6->Visible=false;
				Timer1->Enabled=true;

				DevReady=true;
				Wait=false;

				CurrL->Active=true;
				VoltL->Active=true;

				//Wait=false;
			  };
  };
  if (c) {
	B181.CloseDevice();
	CurrL->Visible=false;
	VoltL->Visible=false;
	ToolRun->Enabled=false;
	Timer1->Enabled=false;

    DevReady=false;
  }
  Timer1->Enabled=true;

  Wait=false;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Menu_NewSeriaClick(TObject *Sender)
{
  if (RzPageControl1->TabIndex == 0)
  {
	int i=CBSeries->ItemIndex;

	NewSeries->EditName->Text=AnsiString("Серия " + Now());
	if (NewSeries->ShowModal()==mrOk) {
	  if (i>=0) {
		if (xSign.Ni>0) {
		  if (!DirectoryExists(xExp.Dir)) CreateDir(xExp.Dir);
		  xSign.SaveToBinFile();
		  xSign.Clear();
		}
		else {
		  CBSeries->Items->Delete(i);
		  xExp.Ns-=1;
		}
	  };
	  AnsiString NameSrs=NewSeries->EditName->Text;

	  xSign.Name=NameSrs;
	  FixFName(NameSrs);
	  xSign.FName=AnsiString(xExp.Dir+"\\"+NameSrs+".bn");

	  xExp.Ns+=1;
	  i=CBSeries->Items->Add(NewSeries->EditName->Text);
	  CBSeries->ItemIndex=i;
	  SeriaNumber++;
	}

	Menu_Save_AsClick(Sender);
  }
  else
  {
	xNewSeries(Sender);
  }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::MenuClearClick(TObject *Sender)
{
  xSign.Clear();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::CBSeriesChange(TObject *Sender)
{
  xSign.SaveToBinFile();
  AnsiString S=CBSeries->Text+".bn";
  FixFName(S);
  xSign.FName=xExp.Dir+"//"+S;
  xSign.LoadFromBinFile();

  //SetMinMax();
  //SetView();
  ChartI->Repaint();
  ChartU->Repaint();

  //Sr.Name=CBSeries->Text
  //
}
//---------------------------------------------------------------------------


void __fastcall TForm1::N9Click(TObject *Sender)
{
  /*OpenDialog1->InitialDir=WorkDir;
  OpenDialog1->Filter="Данные эксперемента|*.exp";
  if (OpenDialog1->Execute())
  {
	//Chart->ClearChart();
	//Chart1->ClearChart();

	xExp.Open(OpenDialog1->FileName);
	if (xSign.Ni) {
		//SetMinMax();
		//SetView();
	};
	}*/

  int i, k, p;
  String TmpStr;
  double TmpTime;

  FolderDialog1->SelectedPathName=WorkDir;
  if (FolderDialog1->Execute())
  {
    AdvToolBarButton4 ->Enabled=false;
	AdvToolBarButton1 ->Enabled=false;
	ToolRun           ->Enabled=false;
	ToolButton13      ->Enabled=false;
	ToolButton16      ->Enabled=false;
	ToolButton19      ->Enabled=false;

	bool xSt = Timer1->Enabled;
	Timer1->Enabled=false;

    Record = RecRecorder = false;

	if (RecFile->Size > 0)
	{
	  RecorderFile->Position=RecorderFile->Size;
	  RecFile->SaveToStream(RecorderFile);

	  RecFile->Clear();
	}

	if (ESrFile->Size > 0)
	{
	  EFile->Position=EFile->Size;
	  ESrFile->SaveToStream(EFile);

	  ESrFile->Clear();
	}

	if (ISrFile->Size > 0)
	{
	  IFile->Position=IFile->Size;
	  ISrFile->SaveToStream(IFile);

	  ISrFile->Clear();
	}

	ToolButton13->ImageIndex = 4;

	ConfFile->Clear();
	CheckListBox1->Clear();

	//CountSeries=0;

	MainDir=FolderDialog1->SelectedPathName;

	SeriesI->Clear();
    SeriesU->Clear();

	//RecFile->Clear();

	DR=MainDir;

	if (FileExists(FolderDialog1->SelectedPathName + "\\[Rec].txt") | FileExists(FolderDialog1->SelectedPathName + "\\Rec.smp"))
	{
	  SeriesI->Active=false;
	  SeriesU->Active=false;

	  TStringList *xRecFile = new TStringList;

	  if (FileExists(FolderDialog1->SelectedPathName + "\\[Rec].txt")) {
		xRecFile->LoadFromFile(FolderDialog1->SelectedPathName + "\\[Rec].txt");
	  }
	  else
	  {
		xRecFile->LoadFromFile(FolderDialog1->SelectedPathName + "\\Rec.smp");
      }

	  TFormatSettings FormatSettings;

	  if (xRecFile->Strings[0].Pos((Char)(46)) == 0) {
		FormatSettings.DecimalSeparator=(Char)(44);
	  }
	  else FormatSettings.DecimalSeparator=(Char)(46);

	  for (k = 0; k < xRecFile->Count; k++)
	  {
		TmpStr=xRecFile->Strings[k];

		p = TmpStr.Pos((Char)(9));
		TmpTime=StrToFloat(TmpStr.SubString(0, p - 1), FormatSettings) / 60;

		TmpStr=TmpStr.SubString(p + 1, TmpStr.Length());

		SeriesI->AddXY(TmpTime, StrToFloat(TmpStr.SubString(0, TmpStr.Pos((Char)(9)) - 1), FormatSettings));
		SeriesU->AddXY(TmpTime, StrToFloat(TmpStr.SubString(TmpStr.Pos((Char)(9)) + 1, TmpStr.Length()), FormatSettings));
	  }

	  xRecFile->Free();

	  SeriesI->Active=true;
	  SeriesU->Active=true;

	  //RzToolButton7->Enabled = false;

	  if (TmpTime > 5)
	  {
		ChartI->BottomAxis->SetMinMax(TmpTime - 5, TmpTime);
		ChartU->BottomAxis->SetMinMax(TmpTime - 5, TmpTime);
	  }
	}

	SeriesList->Clear();
	RzComboBox2->Clear();

	if (FileExists(FolderDialog1->SelectedPathName + "\\Data\\Series.srs"))
	{
	  SeriesList->LoadFromFile(FolderDialog1->SelectedPathName + "\\Data\\Series.srs");
	  RzComboBox2->Items->Assign(SeriesList);

	  RzComboBox2->ItemIndex=SeriesList->Count - 1;

	  RzComboBox2Change(Sender);
	}

	//ShowMessage(FolderDialog1->SelectedPathName + "\\inf.exp");

	//DecimalSeparator=(Char)(46);

	if (FileExists(FolderDialog1->SelectedPathName + "\\inf.exp"))
	{
	  xExp.Open(FolderDialog1->SelectedPathName + "\\inf.exp");
	}

	Timer1->Enabled=xSt;
  }
}
//---------------------------------------------------------------------------


void __fastcall TForm1::Menu_FileClick(TObject *Sender)
{
  if (xExp.Name=="") {
    N2->Enabled=false;
    Menu_Comment->Enabled=false;
  } else {
    N2->Enabled=true;
    Menu_Comment->Enabled=true;
  }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ToolButton6Click(TObject *Sender)
{

	/*Rec.AddLine(double(Time()));

    if (ValData) {
      AnsiString S="Неправильно введены данные:\n";
      if (ValData&2) S+="Амплитуда\n";
      if (ValData&4) S+="Изменение амплитуды\n";
      if (ValData&1) S+="Количество импульсов\n";
	  ShowMessage(S);
      return;
    }


    float **tmp;
    int T,t,t1,t2;
    BOOL k=false;

    if (xSign.Ni==0) k=true;
    B181.Config=PConf;


    T=PConf->T/PConf->dt;
    t=PConf->t/PConf->dt;

    int m=0;
    for(int i=0;i<4;i++)
      if(PConf->ADCChanel[i]) m++;


    float A=PConf->A;

    tmp=new float*[PConf->NPulse*m];
    for(int i=0;i<PConf->NPulse*m;i++) {
      tmp[i]=new float[T];
      int j=0;
      for(;j<(T-t)/2;j++) tmp[i][j]=0;
	  for(;j<(T+t)/2;j++) tmp[i][j]=A*(exp(-30*(double)(j-(T-t)/2)/t)+0.3);
      for(;j<T;j++) tmp[i][j]=0;

      if (i%2) A+=PConf->dA;
    }

	xSign.SetLen(T);
	xSign.dt=PConf->dt;
//    Sign.t0=-(PConf->T-PConf->t)/2;

    AnsiString** Names;
    Names=new AnsiString*[PConf->NPulse];
    A=PConf->A;
    for(int i=0;i<PConf->NPulse;i++) {
      Names[i]=new AnsiString;
      *Names[i]=FloatToStr(A)+" "+PConf->ADCValue[1];
      A+=PConf->dA;
    }
    xSign.Add(PConf->NPulse*m,tmp,Names);

    if (k) {
      SetMinMax();
      SetView();
    }  */

}
//---------------------------------------------------------------------------


void __fastcall TForm1::Edit1Exit(TObject *Sender)
{
  if(!(ValData&2)) Edit1->Text=FloatToStrF(PConf->A,ffFixed,6,1)+" "+PConf->DACValue[0];
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Edit3Exit(TObject *Sender)
{
  AnsiString S=((TEdit *)Sender)->Text;
  while(S.Pos(" ")) S.Delete(S.Pos(" "),1);
  int Number;
  BOOL k=false;
  try
  {
    Number=StrToInt(S);
  }
  catch(EConvertError&)
  {
    k=true;
  }
  if ((!k)&&(Number>0)&&(Number<=100)) {
    ((TEdit *)Sender)->Text=S;
    UpDown1->Position=Number;
    PConf->NPulse=Number;
    ValData=true;
    return;
  }
  ValData=false;
  ((TEdit *)Sender)->Text=OldTxt;

}
//---------------------------------------------------------------------------

void __fastcall TForm1::N10Click(TObject *Sender)
{
  xExp.Close();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::fft1Click(TObject *Sender)
{
  int c=CheckListBox1->ItemIndex;
  if (c<0) {
    ShowMessage("Выберите сигнал");
    return;
  }

  Form2->D=xSign[c*2];
  Form2->N=xSign.Nt;
  Form2->Show();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::UpDown1Click(TObject *Sender, TUDBtnType Button)
{
   PConf->NPulse=StrToInt(Edit3->Text);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Timer1Timer(TObject *Sender)
{
  if (Wait) return;

  Wait = true;

  int  G0 = PConf->Gen0;

  double I=0,U=0;
  int Srt=0, St=0;

  Srt=GetTickCount();

  if(DevReady) {
	PConf->Gen0=500;
	PConf->ADCLen=xn;

	B181.ConfigCmn();
	B181.ConfigADC();

	B181.Reset(1);
	B181.Run(1);

	try
	{
	  do
	  {
		nTimes++;
		Sleep(1);
	  }
	  while(!(4&B181.ReadStatus()) && (nTimes < 100));
	}
	__except (EXCEPTION_EXECUTE_HANDLER)
	{
      nTimes = 0;
	  return;
	}

	if (nTimes < 100) {
	  try
	  {
		B181.ReadFromADC(tmp);
		nTimes = 0;
	  }
	  __except (EXCEPTION_EXECUTE_HANDLER)
	  {
        nTimes = 0;
		return;
      }
	}
	else
	{
	  nTimes = 0;
	  return;
	}

	nTimes = 0;
	St=GetTickCount();

	for(int i=0;i<xn;i++)
	{
	  I+=tmp[0][i];
	  U+=tmp[1][i];
	}

	I/=xn;
	U/=xn;

	ChartTool10->Active=false;
  }
  else
  {
    ChartTool10->Active=VoltageL->Active;

	static c=0;

	if (RzNumericEdit6->Enabled) {
	  I=-Random(100) * 0.0001;
	  U=-Random(2) + (Random(6) /10) - 120;
	}
	else
	{
	  I=(-Random(100) * 0.0001) - (RzSpinEdit4->Value / 5000);
	  U=(-Random(2) + (Random(6) / 10) - 120) + (I * 400);
	}

    c++;
	c=c%200;
  }

  I=RoundTo(I, -4);
  U=RoundTo(U, -3);

  PConf->Gen0=G0;

  CurrL->Text    = "  "+FloatToStrF(I,ffFixed,6,4)+" "+PConf->ADCValue[0];
  VoltL->Text    = "  "+FloatToStrF(U,ffFixed,5,1)+" "+PConf->ADCValue[1];
  CurrentL->Text = "  "+FloatToStrF(I,ffFixed,6,4)+" "+PConf->ADCValue[0];
  VoltageL->Text = "  "+FloatToStrF(U,ffFixed,5,1)+" "+PConf->ADCValue[1] + " | Last R " + FloatToStrF(RtG,ffFixed,5,0) + " кОм";

  SeriesI->Active=True;
  SeriesU->Active=True;

  if (Record && !Paused) {
	double TmpTime;

	xSpan(TSr, double(Now()), TmpTime, xTime);

	TmpTime=RoundTo(TmpTime, -3);
	xTime  =RoundTo(xTime  , -3);

	if (RoundTo(xTime - CurrTime, -1) < 0) {
      CurrTime=xTime;
    }

	TabSheet3->Caption = "R, E [" + FloatToStrF(xTime, ffFixed, 6,0) + " сек. (" + FloatToStrF(TmpTime, ffFixed, 6,1) + " мин.)]";

	CurrentSeries->AddXY(TmpTime, I);

	if ((TmpTime > 15) && (((TmpTime - LastI) * 60) > 1)) {
        if (CurrentSeries->DrawAllPoints){
		  CurrentSeries->DrawAllPoints=false;
		  VoltageSeries->DrawAllPoints=false;
		}

		VoltageChart->BottomAxis->SetMinMax(VoltageChart->BottomAxis->Minimum + (TmpTime - LastI),
											VoltageChart->BottomAxis->Maximum + (TmpTime - LastI));

		CurrentChart->BottomAxis->SetMinMax(CurrentChart->BottomAxis->Minimum + (TmpTime - LastI),
											CurrentChart->BottomAxis->Maximum + (TmpTime - LastI));

		LastI=TmpTime;
	  }

	ISrFile->WriteString((FloatToStr(xTime, MyFormat) + (Char)(9) +
						  FloatToStr(I, MyFormat) + (Char)(13) + (Char)(10)));

	if (ISrFile->Size > 500) {
	  IFile->Position=IFile->Size;
	  ISrFile->SaveToStream(IFile);

	  ISrFile->Clear();
	}

	if ((RzNumericEdit6->Enabled  && RzSpinEdit5->Enabled) | !CheckBox4->Checked) {
	  VoltageSeries->AddXY(TmpTime, U);

	  ESrFile->WriteString((FloatToStr(xTime, MyFormat) + (Char)(9) +
						    FloatToStr(U, MyFormat) + (Char)(13) + (Char)(10)));

	  if (ESrFile->Size > 500) {
		EFile->Position=EFile->Size;
		ESrFile->SaveToStream(EFile);

		ESrFile->Clear();
	  }
	}

	if (((CycleCount != RzSpinEdit3->Value) && RzToolButton1->ImageIndex==14) |
		 (RzToolButton1->ImageIndex == 44))
	{
	  if (RoundTo(CurrTime + RzNumericEdit5->Value, -2) >= RoundTo(xTime, -2)) {
		RzStatusPane2->Caption=FloatToStrF(RoundTo(xTime - CurrTime, -1), ffFixed, 6,1) + "/" + IntToStr(RzNumericEdit5->IntValue);

		RzNumericEdit5->Enabled=false;


		if (OldTime != 0) {
		  if (RoundTo(CurrTime + RzSpinEdit5->Value, -2) >= RoundTo(xTime, -2)) {
			RzSpinEdit5->Enabled=false;
			OldTime=RzNumericEdit5->Value;
		  }
		  else
		  {
			RzSpinEdit5->Enabled=true;
		  }
		}

		if(DevReady) {
		  B181.WriteToDACDirect(0);
		}

		if ((RoundTo(CurrTime + RzNumericEdit5->Value, -2) - 0.5) <= RoundTo(xTime, -2)) {
		  StartCurr = StartCurr + I;
		  StartVoltd =  StartVoltd + U;

		  StartCntBf++;
		  RzNumericEdit6->Font->Color=clRed;
		}
	  }
	  else
	  {
		if (OldTime == 0) {
          OldTime=RzNumericEdit5->Value;
		}

		if (RzCheckBox2->Checked) {
		  if (ECDelta != 0) {
			if (!ChnE) {
			  ChnE=true;

			  if (ECDelta > (RzSpinEdit8->Value + RzSpinEdit9->Value)) {
				if (!RzCheckBox3->Checked) {
				  RzSpinEdit4->Value = (RzSpinEdit4->Value + (10000 * (RzSpinEdit6->Value / 100)));
				}
				else
				{
				  RzSpinEdit4->Value = (RzSpinEdit4->Value - (10000 * (RzSpinEdit6->Value / 100)));
                }
			  }
			  else
			  {
				if (ECDelta < (RzSpinEdit8->Value - RzSpinEdit9->Value)) {
                  if (!RzCheckBox3->Checked) {
					RzSpinEdit4->Value = (RzSpinEdit4->Value - (10000 * (RzSpinEdit7->Value / 100)));
				  }
				  else
				  {
					RzSpinEdit4->Value = (RzSpinEdit4->Value + (10000 * (RzSpinEdit7->Value / 100)));
                  }
				}
              }
			}
          }
		}

		if (RoundTo(CurrTime + OldTime + RzNumericEdit6->Value, -2) >= RoundTo(xTime, -2)) {
		  RzStatusPane3->Caption=FloatToStrF(RoundTo(xTime - CurrTime - OldTime, -1), ffFixed, 6,1) + "/" + IntToStr(RzNumericEdit6->IntValue);

		  if (RzNumericEdit6->Enabled) {
			if (StartCntBf != 0) {
			  StartCurr = StartCurr/StartCntBf;
			  StartVoltd =  StartVoltd/StartCntBf;
			}
			else
			{
			  StartCurr = I;
			  StartVoltd = U;
			}
			RzNumericEdit6->Enabled=false;
			RzNumericEdit5->Enabled=true;

			RzNumericEdit6->Font->Color=clBlack;

			VoltageLDelta->Active=true;
			CurrentLDelta->Active=true;

			VoltageLDelta->Shape->Font->Color=clRed;
			CurrentLDelta->Shape->Font->Color=clBlack;

			Series1->Clear();
			LineSeries1->Clear();

			CurrentTChart->BottomAxis->SetMinMax(xTime, xTime + RzNumericEdit6->Value);
			Chart2->BottomAxis->SetMinMax(xTime, xTime + RzNumericEdit6->Value);

			RzSpinEdit1Change(Sender);
		  }

		  VoltageLDelta->Text = "   Delta E " + FloatToStrF(U - StartVoltd,ffFixed,5,1)+" "+PConf->ADCValue[1];
		  CurrentLDelta->Text = "   Delta I " + FloatToStrF(I - StartCurr, ffFixed,6,4)+" "+PConf->ADCValue[0];

		  if (((CurrTime + OldTime + ((RzNumericEdit6->Value - RzSpinEdit1->Value) / 2)) < xTime) &&
			  ((CurrTime + OldTime + RzSpinEdit1->Value + ((RzNumericEdit6->Value - RzSpinEdit1->Value) / 2)) > xTime))
		  {
			if (!RzNumericEdit6->Enabled){
			  FE=FE + (U - StartVoltd);
			  FI=FI + (I - StartCurr);
			  CnAll++;
			}
		  }

		  Series1->AddXY(xTime, I);
		  LineSeries1->AddXY(xTime, U);

		  RzSpinEdit1->Enabled=false;

		  RzSpinEdit6->Enabled=false;
		  RzSpinEdit7->Enabled=false;
		  RzSpinEdit8->Enabled=false;
		  RzSpinEdit9->Enabled=false;
		  RzCheckBox2->Enabled=false;

		  GDACValue = true;
		  if(DevReady) {
			B181.WriteToDACDirect(RzSpinEdit4->Value/1000);
		  }
		}
		else
		{
		  RzSpinEdit5->Enabled=false;

		  VoltageLDelta->Shape->Font->Color=clBlue;
		  CurrentLDelta->Shape->Font->Color=clBlue;

		  RzNumericEdit6->Enabled=true;
		  RzSpinEdit1->Enabled=true;

		  RzSpinEdit6->Enabled=true;
		  RzSpinEdit7->Enabled=true;
		  RzSpinEdit8->Enabled=true;
		  RzSpinEdit9->Enabled=true;
		  RzCheckBox2->Enabled=true;

		  CurrTime=xTime;

		  if (CnAll > 0) {
		   try
		   {
			  FE=FE/CnAll;

			  FI=FI/CnAll;

			  RtG=(FE/FI);

			  if (RtG < 0) {
                RtG=0;
			  }
			  else
			  {
                RtG=RoundTo(RtG, -3);
              }

			  EOldDelta = ECDelta;
			  IOldDelta = ICDelta;

			  ECDelta = FE;
			  ICDelta = FI;
			}__except (EXCEPTION_EXECUTE_HANDLER)
			{
			}
		  }

		  SeriesR->AddXY(TmpTime, RtG);
		  Series5->AddXY(TmpTime, RtG);

		  RCount++;

		  if (RtG != 0) {
			try
			{
			  SimensSeries->AddXY(TmpTime, (1 / RtG) * 1000);
			}__except (EXCEPTION_EXECUTE_HANDLER)
			{
			}
		  }

		  RSrFile->WriteString((FloatToStr(xTime, MyFormat) + (Char)(9) +
								FloatToStr(RtG, MyFormat) + (Char)(13) + (Char)(10)));

		  RFile->Position=RFile->Size;
		  RSrFile->SaveToStream(RFile);

		  RSrFile->Clear();

		  VoltageLDelta->Text = "   Delta E "+FloatToStrF(FE, ffFixed,5,1)+" "+PConf->ADCValue[1];
		  CurrentLDelta->Text = "   Delta I "+FloatToStrF(FI, ffFixed,6,4)+" "+PConf->ADCValue[0];

		  FE=0;
		  CnAll=0;
		  FI=0;

		  StartCurr = 0;
		  StartVoltd = 0;

		  StartCntBf=0;

		  ChnE=false;

		  if (SeriesR->Pointer->Size > 1) {
			if ((RCount * SeriesR->Pointer->Size) >= (RChart->Width * 0,75)) {
			  SeriesR->Pointer->Size=SeriesR->Pointer->Size-1;
			  SimensSeries->Pointer->Size=SeriesR->Pointer->Size;
			}
		  }
		  else
		  {
			SeriesR->Pointer->Visible=false;
			SimensSeries->Pointer->Visible=false;
		  }

		  if (Series5->Pointer->Size > 1) {
			if ((RCount * Series5->Pointer->Size) >= (VoltageChart->Width * 0,75))
			{
			  Series5->Pointer->Size=Series5->Pointer->Size-1;
			}
		  }
		  else
		  {
			Series5->Pointer->Visible=false;
		  }

		  if (RadioButton3->Checked)
		  {
			CycleCount++;

			RzStatusPane1->Caption="(" + IntToStr(CycleCount) + " / " + IntToStr(RzSpinEdit3->IntValue) + ")";

			if (CycleCount == RzSpinEdit3->Value) {
			  RzToolButton1Click(Sender);
			}
		  }

		  if(DevReady)
		  {
			B181.WriteToDACDirect(0);
		  }
		}
	  }
	}
  }

  Redc=!Redc;

  if (RecRecorder && Redc) {
	double xrTime;

	xSpan(TCrt, double(Now()), xrTime, xrxTime);

	xrTime  =RoundTo(xrTime, -3);
	xrxTime =RoundTo(xrxTime, -3);

	RecFile->WriteString((FloatToStr(xrxTime, MyFormat) + (Char)(9) +
						  FloatToStr(I, MyFormat) + (Char)(9) +
						  FloatToStr(U, MyFormat) + (Char)(13) + (Char)(10)));

	SeriesI->AddXY(xrTime, I);
	SeriesU->AddXY(xrTime, U);

	if (RecFile->Size > 2500) {
	  RecorderFile->Position=RecorderFile->Size;
	  RecFile->SaveToStream(RecorderFile);

      RecFile->Clear();
	}

	RzStatusPane4->Caption=FloatToStrF(xrTime, ffFixed, 6,1) + " мин.";

	if ((xrTime > 5) && (((xrTime - Last) * 60) > 2.5)) {
	  ChartI->BottomAxis->SetMinMax(ChartI->BottomAxis->Minimum + (xrTime - Last),
									ChartI->BottomAxis->Maximum + (xrTime - Last));

	  ChartU->BottomAxis->SetMinMax(ChartU->BottomAxis->Minimum + (xrTime - Last),
									ChartU->BottomAxis->Maximum + (xrTime - Last));

	  Last=xrTime;
	}
  }

  Wait=false;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::SpeedButton1Click(TObject *Sender)
{
/*  SetMinMax();
  SetView();
*/}
//---------------------------------------------------------------------------

void __fastcall TForm1::Edit3Change(TObject *Sender)
{
 int c;
 try {
   c=StrToInt(Edit3->Text);
 }
 catch(EConvertError&){
   Edit3->Font->Color=clRed;
   ValData=ValData|1;
   return;
 };
 if ((c<1)||(c>100)) {
   Edit3->Font->Color=clRed;
   ValData=ValData|1;
 }
 else {
   Edit3->Font->Color=clWindowText;
   ValData=ValData&(0xFF-1);
   PConf->NPulse=c;
 }
 // ShowMessage("Изменения в окне Edit3:\n"+Edit3->Text);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::EditChange(TObject *Sender)
{
  AnsiString S=((TEdit *)Sender)->Text;
  AnsiString Val=PConf->DACValue[0];
  int c=S.AnsiPos(Val);
  if(c) S.Delete(c,Val.Length());
  while(S.Pos(" ")) S.Delete(S.Pos(" "),1);
  c=S.Pos(".");
  if (c) S[c]=DecimalSeparator;
  c=S.Pos(",");
  if (c) S[c]=DecimalSeparator;


  float Number;
  try
  {
    Number=StrToFloat(S);
  }
  catch(EConvertError&)
  {
    ((TEdit *)Sender)->Font->Color=clRed;
    if(Sender==Edit1) ValData=ValData|2;
    else ValData=ValData|4;
    return;
  }
  ((TEdit *)Sender)->Font->Color=clWindowText;
  if(Sender==Edit1) {
    ValData=ValData&(0xF-2);
    PConf->A=Number;
  }
  else {
    ValData=ValData&(0xF-4);
    PConf->dA=Number;
  }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Edit2Exit(TObject *Sender)
{
  if(!(ValData&4)) Edit2->Text=FloatToStrF(PConf->dA,ffFixed,6,1)+" "+PConf->DACValue[0];
}
//---------------------------------------------------------------------------

void __fastcall TForm1::N11Click(TObject *Sender)
{
  int c=CheckListBox1->ItemIndex;
  if (c>=0) {
    c*=2;
    float s[16];
    for(int k=0;k<2;k++) {
      for(int i=0;i<16;i++)
		s[i]=xSign[c+k][i];
	  for(int i=8;i<xSign.Nt-8;i++){
		xSign[c+k][i]=0;
        for(int j=0;j<16;j++)
		  xSign.Data[c+k][i]+=s[j];
		xSign[c+k][i]/=16;
      s[(i-8)%16]=xSign[c+k][i+8];
      };
    };
    xSign.RefreshN(c);
  }   //Sign.Delete(c);
  else ShowMessage("Выберите сигнал");

}
//---------------------------------------------------------------------------

void __fastcall TForm1::CurrChartMouseUp(TObject *Sender, TMouseButton Button,
      TShiftState Shift, int X, int Y)
{
   /*MDown=false;
   if (ToolButton9->Down) {
     int ky=6;
	 double Dy=CurrChart->Height;
	 double dy=Dy*CurrChart->MarginBottom*0.01+CurrChart->BottomAxis->LabelsSize+ky;

     Dy=Dy*(100.0-CurrChart->MarginTop-CurrChart->MarginBottom)*0.01
		-CurrChart->BottomAxis->LabelsSize-ky;

	 double Cy=CurrChart->LeftAxis->Maximum-CurrChart->LeftAxis->Minimum;
	 int TmpY=CurrChart->Height-Y-dy;

     double y=CurrChart->LeftAxis->Minimum+(Cy*TmpY)/Dy;
     I0=y;
	 Edit4->Text=FloatToStrF(y,ffFixed,6,4)+" "+PConf->ADCValue[0];
   }*/
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ToolButton9Click(TObject *Sender)
{
  ChartTool13->Active=ToolButton9->Down;

  //ChartTool14->Active=ToolButton9->Down;
  /*if (ToolButton9->Down) {
						 CurrChart->AllowPanning=0;//pmNone;
                         CurrChart->AllowZoom=false;
                         Chart1->AllowPanning=0;//pmNone;
                         Chart1->AllowZoom=false;
						 Edit4->Enabled=true;
                         Crs->Off();
						 return;
  }

  Crs->On();
  Edit4->Enabled=false; */

  /*if (!(ToolCross->Down||ToolLine->Down||ToolX->Down)){
						 CurrChart->AllowPanning=pmBoth;
                         CurrChart->AllowZoom=true;
                         Chart1->AllowPanning=pmBoth;
                         Chart1->AllowZoom=true; */
  //};

}
//---------------------------------------------------------------------------

void __fastcall TForm1::CurrChartMouseMove(TObject *Sender, TShiftState Shift,
      int X, int Y)
{
  /*if (!(ToolButton9->Down&&MDown)) return;
     int ky=6;
     double Dy=CurrChart->Height;
     double dy=Dy*CurrChart->MarginBottom*0.01+CurrChart->BottomAxis->LabelsSize+ky;

	 Dy=Dy*(100.0-CurrChart->MarginTop-CurrChart->MarginBottom)*0.01
        -CurrChart->BottomAxis->LabelsSize-ky;

	 double Cy=CurrChart->LeftAxis->Maximum-CurrChart->LeftAxis->Minimum;
	 int TmpY=CurrChart->Height-Y-dy;

     double y=CurrChart->LeftAxis->Minimum+(Cy*TmpY)/Dy;
     I0=y;
	 Edit4->Text=FloatToStrF(I0,ffFixed,6,4)+" "+PConf->ADCValue[0]; */
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Edit4Change(TObject *Sender)
{
  /*AnsiString S=((TEdit *)Sender)->Text;
  AnsiString Val=PConf->ADCValue[0];
  int c=S.AnsiPos(Val);
  if(c) S.Delete(c,Val.Length());
  while(S.Pos(" ")) S.Delete(S.Pos(" "),1);
  c=S.Pos(".");
  if (c) S[c]=DecimalSeparator;
  c=S.Pos(",");
  if (c) S[c]=DecimalSeparator;


  float Number;
  try
  {
    I0=StrToFloat(S);
  }
  catch(EConvertError&)
  {
    ((TEdit *)Sender)->Font->Color=clRed;
     I0=0;
     ValI0=false;
    return;
  }
  ((TEdit *)Sender)->Font->Color=clWindowText;
  ValI0=true;

  CurrChart->Repaint();*/
  if (Edit4->Text != "") {
    ChartTool13->Value=StrToFloat(Edit4->Text);
  }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Edit4Exit(TObject *Sender)
{
  //Edit4->Text=FloatToStrF(I0,ffFixed,6,4)+" "+PConf->ADCValue[0];
}
//---------------------------------------------------------------------------



void __fastcall TForm1::Splitter0Moved(TObject *Sender)
{
  ChartI->Height=(PanelT->Height-10)/2;
  ChartU->Height=(PanelT->Height-10)/2;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ScrollBar1Change(TObject *Sender)
{
  Rec.RScroll();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Splitter0CanResize(TObject *Sender, int &NewSize,
      bool &Accept)
{
  if (NewSize<10) NewSize=10;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Splitter2CanResize(TObject *Sender, int &NewSize,
      bool &Accept)
{
  if (NewSize<10) NewSize=10;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ChartIAfterDraw(TObject *Sender)
{
 Rec.ShowLines((TChart*)Sender);
}
//---------------------------------------------------------------------------


void __fastcall TForm1::N12Click(TObject *Sender)
{
   int T1,T2,Nt;
   bool From0,I,V;

 RecDial->ShowModal();

 try {
   T1=StrToInt(RecDial->Edit1->Text);
 }
 catch(EConvertError&){
   RecDial->Edit1->Text="";
   T1=-1;
 };

 try {
   T2=StrToInt(RecDial->Edit2->Text);
 }
 catch(EConvertError&){
   RecDial->Edit2->Text="";
   T2=-1;
 };

 try {
   Nt=StrToInt(RecDial->Edit3->Text);
 }
 catch(EConvertError&){
   RecDial->Edit3->Text="";
   Nt=-1;
 };
 From0=RecDial->CheckBox1->Checked;
 I=RecDial->CheckBox2->Checked;
 V=RecDial->CheckBox3->Checked;
 if(!Rec.SendToClipboard(T1,T2,Nt,From0,I,V)){
   Clipboard()->Clear();
   Clipboard()->SetTextBuf(PChar("Неправильно введены данные"));
 };

}
//---------------------------------------------------------------------------



void __fastcall TForm1::ScrollBarIChange(TObject *Sender)
{
  Rec.RScrollI();      
}
//---------------------------------------------------------------------------

void __fastcall TForm1::UpDownIClick(TObject *Sender, TUDBtnType Button)
{

  if (Button==1) Rec.ZoomInI();
  else Rec.ZoomOutI();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Chart1Scroll(TObject *Sender)
{
	CurrChart->BottomAxis->SetMinMax(Chart1->BottomAxis->Minimum,
								 Chart1->BottomAxis->Maximum);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::CurrChartScroll(TObject *Sender)
{
	Chart1->BottomAxis->SetMinMax(CurrChart->BottomAxis->Minimum,
								  CurrChart->BottomAxis->Maximum);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Chart1UndoZoom(TObject *Sender)
{
	//CurrChartUndoZoom(Sender);
	CurrChart->BottomAxis->SetMinMax(Chart1->BottomAxis->Minimum,
								     Chart1->BottomAxis->Maximum);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::CurrChartUndoZoom(TObject *Sender)
{
	//Chart1UndoZoom(Sender);
	Chart1->BottomAxis->SetMinMax(CurrChart->BottomAxis->Minimum,
								  CurrChart->BottomAxis->Maximum);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Chart1Zoom(TObject *Sender)
{
	CurrChart->BottomAxis->SetMinMax(Chart1->BottomAxis->Minimum,
									 Chart1->BottomAxis->Maximum);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::CurrChartZoom(TObject *Sender)
{
	Chart1->BottomAxis->SetMinMax(CurrChart->BottomAxis->Minimum,
								  CurrChart->BottomAxis->Maximum);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ToolButton2Click(TObject *Sender)
{
  VoltageL->Active = !VoltageL->Active;
  CurrL->Active    = VoltageL->Active;
  VoltL->Active    = CurrL->Active;

  CurrentL->Active = CurrL->Active;

}
//---------------------------------------------------------------------------

void __fastcall TForm1::CurrChartMouseDown(TObject *Sender, TMouseButton Button, TShiftState Shift,
		  int X, int Y)
{
  //if((Sender==CurrChart)&&(ToolButton9))MDown=true;
  //Crs->Activate(Button,Sender,X,Y);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::VoltageChartResize(TObject *Sender)
{
  UpDown8->Top = VoltageChart->Height / 2 - UpDown8->Height / 2;

  UpDown4->Top = VoltageChart->Height / 2 - UpDown4->Height / 2;
  UpDown4->Left = VoltageChart->Width - UpDown4->Width - 2;

  UpDown9->Top = VoltageChart->Height - UpDown9->Height - 2;

  ChartTool10->Top=VoltageChart->Height / 2 - ChartTool10->Height / 2;
  ChartTool10->Left=VoltageChart->Width / 2 - ChartTool10->Width / 2;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::RChartResize(TObject *Sender)
{
  UpDown10->Top = RChart->Height / 2 - UpDown10->Height / 2;

  UpDown11->Top = RChart->Height - UpDown11->Height - 2;

  //RzCheckBox1->Left = RChart->Width - RzCheckBox1->Width - 5;

  RzRadioGroup1->Left = RChart->Width - RzRadioGroup1->Width - 5;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::CurrentChartResize(TObject *Sender)
{
  UpDown14->Top = CurrentChart->Height / 2 - UpDown14->Height / 2;

  UpDown15->Top = CurrentChart->Height - UpDown15->Height - 2;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::CurrentTChartResize(TObject *Sender)
{
  UpDown12->Top = CurrentTChart->Height / 2 - UpDown12->Height / 2;

  UpDown13->Top = CurrentTChart->Height - UpDown13->Height - 2;

  RzSpinEdit1->Left = CurrentTChart->Width - RzSpinEdit1->Width - 5;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::RzCheckBox1Click(TObject *Sender)
{
  //Series2->DataSource->=SeriesR->DataSource;

  //Series2->Smoothed = false;
  //Series2->Smoothed = true;
  //Series2->Active=RzCheckBox1->Checked;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ChartUResize(TObject *Sender)
{
  UpDown16->Top=ChartU->Height - UpDown16->Height - 2;

  UpDown18->Top=ChartU->Height / 2 - UpDown16->Height / 2 - 2;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ChartIResize(TObject *Sender)
{
  UpDown17->Top=ChartI->Height / 2 - UpDown17->Height / 2 - 2;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::RzPageControl1Change(TObject *Sender)
{
  if (RzPageControl1->TabIndex == 0) {
	//ToolBar1->Visible = true;
	if (DevReady) {
	  ToolRun->Enabled=true;
	}
	Menu_Edit->Enabled=true;
  }
  else
  {
	//ToolBar1->Visible = false;
	ToolRun->Enabled=false;
	Menu_Edit->Enabled=false;
  }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::UpDown17Click(TObject *Sender, TUDBtnType Button)
{
  ChartI->Zoom->Direction=tzdVertical;

  if (Button==1)
  {
	ChartI->ZoomPercent(95);
  }
  else
  {
    ChartI->ZoomPercent(105);
  }

  ChartI->Zoom->Direction=tzdBoth;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::UpDown18Click(TObject *Sender, TUDBtnType Button)
{
  ChartU->Zoom->Direction=tzdVertical;

  if (Button==1)
  {
	ChartU->ZoomPercent(95);
  }
  else
  {
	ChartU->ZoomPercent(105);
  }

  ChartU->Zoom->Direction=tzdBoth;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ChartIScroll(TObject *Sender)
{
  ChartU->BottomAxis->SetMinMax(ChartI->BottomAxis->Minimum,
								ChartI->BottomAxis->Maximum);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ChartUScroll(TObject *Sender)
{
  ChartI->BottomAxis->SetMinMax(ChartU->BottomAxis->Minimum,
								ChartU->BottomAxis->Maximum);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ChartIZoom(TObject *Sender)
{
  ChartU->BottomAxis->SetMinMax(ChartI->BottomAxis->Minimum,
								ChartI->BottomAxis->Maximum);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ChartUZoom(TObject *Sender)
{
  ChartI->BottomAxis->SetMinMax(ChartU->BottomAxis->Minimum,
								ChartU->BottomAxis->Maximum);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ChartIUndoZoom(TObject *Sender)
{
  ChartU->BottomAxis->SetMinMax(ChartI->BottomAxis->Minimum,
								ChartI->BottomAxis->Maximum);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ChartUUndoZoom(TObject *Sender)
{
  ChartI->BottomAxis->SetMinMax(ChartU->BottomAxis->Minimum,
								ChartU->BottomAxis->Maximum);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::UpDown16Click(TObject *Sender, TUDBtnType Button)
{
  ChartU->Zoom->Direction=tzdHorizontal;

  if (Button==1)
  {
	ChartU->ZoomPercent(95);
  }
  else
  {
	ChartU->ZoomPercent(105);
  }

  ChartU->Zoom->Direction=tzdBoth;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::UpDown9Click(TObject *Sender, TUDBtnType Button)
{
  VoltageChart->Zoom->Direction=tzdHorizontal;

  if (Button==1)
  {
	VoltageChart->ZoomPercent(95);
  }
  else
  {
	VoltageChart->ZoomPercent(105);
  }

  VoltageChart->Zoom->Direction=tzdBoth;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::UpDown11Click(TObject *Sender, TUDBtnType Button)
{
  RChart->Zoom->Direction=tzdHorizontal;

  if (Button==1)
  {
	RChart->ZoomPercent(95);
  }
  else
  {
	RChart->ZoomPercent(105);
  }

  RChart->Zoom->Direction=tzdBoth;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::UpDown15Click(TObject *Sender, TUDBtnType Button)
{
  CurrentChart->Zoom->Direction=tzdHorizontal;

  if (Button==1)
  {
	CurrentChart->ZoomPercent(95);
  }
  else
  {
	CurrentChart->ZoomPercent(105);
  }

  CurrentChart->Zoom->Direction=tzdBoth;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::UpDown13Click(TObject *Sender, TUDBtnType Button)
{
  CurrentTChart->Zoom->Direction=tzdHorizontal;

  if (Button==1)
  {
	CurrentTChart->ZoomPercent(95);
  }
  else
  {
	CurrentTChart->ZoomPercent(105);
  }

  CurrentTChart->Zoom->Direction=tzdBoth;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::UpDown8Click(TObject *Sender, TUDBtnType Button)
{
 //double xRange = (VoltageSeries->YValues->MaxValue - VoltageSeries->YValues->MinValue) * 0.05;

 double xRange = (double)(VoltageChart->LeftAxis->Maximum - VoltageChart->LeftAxis->Minimum) * 0.1;

  //VoltageChart->Zoom->Direction=tzdVertical;

  if (Button==1)
  {
	//VoltageChart->ZoomPercent(95);

	VoltageChart->LeftAxis->SetMinMax(VoltageChart->LeftAxis->Minimum - xRange,
									  VoltageChart->LeftAxis->Maximum + xRange);
  }
  else
  {
	//VoltageChart->ZoomPercent(105);

	VoltageChart->LeftAxis->SetMinMax(VoltageChart->LeftAxis->Minimum + xRange,
									  VoltageChart->LeftAxis->Maximum - xRange);
  }

  //VoltageChart->Zoom->Direction=tzdBoth;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::UpDown10Click(TObject *Sender, TUDBtnType Button)
{
  RChart->Zoom->Direction=tzdVertical;

  if (Button==1)
  {
	RChart->ZoomPercent(95);
  }
  else
  {
	RChart->ZoomPercent(105);
  }

  RChart->Zoom->Direction=tzdBoth;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::UpDown14Click(TObject *Sender, TUDBtnType Button)
{
  CurrentChart->Zoom->Direction=tzdVertical;

  if (Button==1)
  {
	CurrentChart->ZoomPercent(95);
  }
  else
  {
	CurrentChart->ZoomPercent(105);
  }

  CurrentChart->Zoom->Direction=tzdBoth;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::UpDown12Click(TObject *Sender, TUDBtnType Button)
{
  CurrentTChart->Zoom->Direction=tzdVertical;

  if (Button==1)
  {
	CurrentTChart->ZoomPercent(95);
  }
  else
  {
	CurrentTChart->ZoomPercent(105);
  }

  CurrentTChart->Zoom->Direction=tzdBoth;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ToolButton13Click(TObject *Sender)
{
  if (Record)
	if (MessageBox(Form1->Handle, PAnsiChar("Вы действительно хотите завершить запись серии?"),
		PAnsiChar("Подтверждение"), MB_YESNO | MB_ICONWARNING)==IDNO) return;

  Record=!Record;

  if (Record)
  {
	TSr=double(Now());

	ToolButton13->ImageIndex = 3 ;
	RzComboBox2->Enabled=false;
	//RzSpinEdit3->Enabled=false;
	ToolButton16->Enabled=true;
	//RadioButton3->Enabled=false;
	//RadioButton4->Enabled=false;

	RzToolButton1->Enabled=true;

	//if (RadioButton3->Checked)
	//{
	  //CycleCount=0;
	//}

	TabSheet3->ImageIndex = 12;

	RzPageControl1->TabIndex=1;
  }
  else
  {
	ToolButton13->ImageIndex = 4;
	RzComboBox2->Enabled=true;
	//RzSpinEdit3->Enabled=true;
	ToolButton16->Enabled=false;
	//RadioButton3->Enabled=true;
	//RadioButton4->Enabled=true;

	RzToolButton1->Enabled=false;

	TabSheet3->ImageIndex = -1;

	Paused=false;
	ToolButton16->ImageIndex = 2;

	ToolButton13->Enabled=false;
  }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::RzNumericEdit6Change(TObject *Sender)
{
  RzSpinEdit1->Max=RzNumericEdit6->Value;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::RzSpinEdit1Change(TObject *Sender)
{
  double TmpRn;

  RzNumericEdit6->Min=RzSpinEdit1->Value;

  RzSpinEdit1->Max=RzNumericEdit6->Value;

  CurrentTChart->BottomAxis->SetMinMax(xTime, xTime + RzNumericEdit6->Value);
  Chart2->BottomAxis->SetMinMax(xTime, xTime + RzNumericEdit6->Value);

  TmpRn=(RzNumericEdit6->Value - RzSpinEdit1->Value) / 2;

  ChartTool3->StartValue = CurrentTChart->BottomAxis->Minimum + TmpRn;
  ChartTool3->EndValue = CurrentTChart->BottomAxis->Maximum - TmpRn;

  ColorBandTool1->StartValue = CurrentTChart->BottomAxis->Minimum + TmpRn;
  ColorBandTool1->EndValue = CurrentTChart->BottomAxis->Maximum - TmpRn;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::CurrChartDblClick(TObject *Sender)
{
  ChartEditor1->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Chart1DblClick(TObject *Sender)
{
  ChartEditor2->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::UpDown2Click(TObject *Sender, TUDBtnType Button)
{
  Chart2->Zoom->Direction=tzdVertical;

  if (Button==1)
  {
	Chart2->ZoomPercent(95);
  }
  else
  {
	Chart2->ZoomPercent(105);
  }

  Chart2->Zoom->Direction=tzdBoth;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::UpDown3Click(TObject *Sender, TUDBtnType Button)
{
  Chart2->Zoom->Direction=tzdHorizontal;

  if (Button==1)
  {
	Chart2->ZoomPercent(95);
  }
  else
  {
	Chart2->ZoomPercent(105);
  }

  Chart2->Zoom->Direction=tzdBoth;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Chart2Resize(TObject *Sender)
{
  UpDown2->Top = Chart2->Height / 2 - UpDown2->Height / 2;

  UpDown3->Top = Chart2->Height - UpDown3->Height - 2;

  //RzSpinEdit1->Left = CurrentTChart->Width - RzSpinEdit1->Width - 5;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::RadioButton3Click(TObject *Sender)
{
  RzSpinEdit3->Enabled=RadioButton3->Checked;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::RadioButton4Click(TObject *Sender)
{
  RzSpinEdit3->Enabled=RadioButton3->Checked;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ToolButton16Click(TObject *Sender)
{
  Paused=!Paused;

  if (Paused)
  {
	ToolButton16->ImageIndex = 1;
	TabSheet3->ImageIndex = 44;
  }
  else
  {
	ToolButton16->ImageIndex = 2;
	TabSheet3->ImageIndex = 12;
  }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::RzToolButton1Click(TObject *Sender)
{
  if (RadioButton4->Checked)
  {
	if (RzToolButton1->ImageIndex==42)
	  {
		//CycleCount=0;
		RzToolButton1->ImageIndex=44;
		//RzSpinEdit3->Enabled=false;
		RadioButton3->Enabled=false;
		RadioButton4->Enabled=false;

		OldTime=0;

		CurrTime=xTime;
		ChnE=true;
	  }
	  else
	  {
		//CycleCount=RzSpinEdit3->Value;
		RzToolButton1->ImageIndex=42;
		//RzSpinEdit3->Enabled=true;
		RadioButton3->Enabled=true;
		RadioButton4->Enabled=true;

		RzNumericEdit5->Enabled=true;
		RzNumericEdit6->Enabled=true;

		//VoltageLDelta->Active=false;
		//CurrentLDelta->Active=false;
		RzSpinEdit5->Enabled=true;

		if(DevReady)
		  {
			B181.WriteToDACDirect(0);
		  }
	  }
  }
  else
  {
	 if (RzToolButton1->ImageIndex==42)
	  {
		CycleCount=0;
		RzToolButton1->ImageIndex=14;
		RzSpinEdit3->Enabled=false;
		RadioButton3->Enabled=false;
		RadioButton4->Enabled=false;

		RzStatusPane1->Caption="(" + IntToStr(CycleCount) + " / " + IntToStr(RzSpinEdit3->IntValue) + ")";

        OldTime=0;

		CurrTime=xTime;
		ChnE=true;
	  }
	  else
	  {
		CycleCount=RzSpinEdit3->Value;
		RzToolButton1->ImageIndex=42;
		RzSpinEdit3->Enabled=true;
		RadioButton3->Enabled=true;
		RadioButton4->Enabled=true;

		RzNumericEdit5->Enabled=true;
		RzNumericEdit6->Enabled=true;

		RzStatusPane1->Caption="(0 / " + IntToStr(RzSpinEdit3->IntValue) + ")";

		//VoltageLDelta->Active=false;
		//CurrentLDelta->Active=false;
		RzSpinEdit5->Enabled=true;

		if(DevReady)
		  {
			B181.WriteToDACDirect(0);
		  }
	  }
  }
}
//---------------------------------------------------------------------------


void __fastcall TForm1::RzRadioGroup1Changing(TObject *Sender, int NewIndex, bool &AllowChange)

{
  if (NewIndex == 0)
  {
    SeriesR->Active=false;
	SimensSeries->Active=true;
  }
  else
  {
	SimensSeries->Active=false;
	SeriesR->Active=true;
  }

  RChart->LeftAxis->Automatic=true;
}
//---------------------------------------------------------------------------

void __fastcall AddLineXEx(AnsiString Name, double TimeV, TColor Color, TChart *xChart, Integer xWidth, bool Act)
{
  TColorLineTool *TmpLine;

  TmpLine = new TColorLineTool(xChart);

  TmpLine->Active=Act;

  TmpLine->Name=Name;

  //TmpLine->Draw3D->False;

  TmpLine->Pen->Width=xWidth;

  xChart->Tools->Add(TmpLine);
  TmpLine->Axis=xChart->BottomAxis;

  TmpLine->AllowDrag=false;
  TmpLine->DrawBehind=false;

  TmpLine->Value=TimeV;
  TmpLine->Pen->Color=Color;
};

void __fastcall TForm1::ToolButton19Click(TObject *Sender)
{
  if (Record) {
    AddLineXEx("xLine" + IntToStr(LineCount), xTime / 60, RzColorEdit1->SelectedColor, VoltageChart, 2, true);
	AddLineXEx("xLine" + IntToStr(LineCount), xTime / 60, RzColorEdit1->SelectedColor, RChart, 2, true);
	AddLineXEx("xLine" + IntToStr(LineCount), xTime / 60, RzColorEdit1->SelectedColor, CurrentChart, 2, true);

	LineCount++;

	LabelFile->Add(FloatToStr(xTime, MyFormat) + (Char)(9) + ColorToString(RzColorEdit1->SelectedColor) + (Char)(9) + RzEdit1->Text);
    LabelFile->SaveToFile(DR + "\\Data\\" + xDR + "\\" + "[Labels].txt");
  }

  if (RzEdit1->Text != "") {
	if (!RzEdit1->FindItem(RzEdit1->Text)) {
	  RzEdit1->Add(RzEdit1->Text);
	  RzEdit1->Items->SaveToFile("SvLabelt.txt");
	}
  }

  AddLineXEx("xLine" + IntToStr(FullLineCount), xrxTime / 60, RzColorEdit1->SelectedColor, ChartI, 2, true);
  AddLineXEx("xLine" + IntToStr(FullLineCount), xrxTime / 60, RzColorEdit1->SelectedColor, ChartU, 2, true);

  FullLineCount++;

  AllLabelFile->Add(FloatToStr(xrxTime, MyFormat) + (Char)(9) + ColorToString(RzColorEdit1->SelectedColor) + (Char)(9) + RzEdit1->Text);
  AllLabelFile->SaveToFile(DR + "\\[AllLabels].txt");
}
//---------------------------------------------------------------------------



void __fastcall TForm1::TimerClockTimer(TObject *Sender)
{

  double BetwenTime;
  Word Hour, Min, Sec, MSec;
  String SHour, SMin, SSec, SMSec;

  BetwenTime=Now() - StTimerClock;

  DecodeTime(BetwenTime, Hour, Min, Sec, MSec);

  if (Min < 10)
  {
	SMin = "0" + IntToStr(Min);
  }
  else
  {
	SMin = IntToStr(Min);
  }

  if (Sec < 10)
  {
	SSec = "0" + IntToStr(Sec);
  }
  else
  {
	SSec = IntToStr(Sec);
  }

  RzStatusPane5->Caption = IntToStr(int(HourSpan(BetwenTime, 0))) + ":" +
						 SMin + ":" +
						 SSec;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::AdvToolBarButton7Click(TObject *Sender)
{
 if (AdvToolBarButton7->ImageIndex == 1)
 {
   AdvToolBarButton7->ImageIndex=3;
   StTimerClock=Now();
   TimerClock->Enabled=True;
 }
 else
 {
   AdvToolBarButton7->ImageIndex=1;
   TimerClock->Enabled=False;
 }
}
//---------------------------------------------------------------------------


void __fastcall TForm1::UpDown4Click(TObject *Sender, TUDBtnType Button)
{
  //double xRange = (Series5->YValues->MaxValue - Series5->YValues->MinValue) * 0.1;

  //VoltageChart->Zoom->Direction=tzdVertical;

  //if (Button==1)
  //{
	//VoltageChart->ZoomPercent(95);

	//VoltageChart->RightAxis->SetMinMax(VoltageChart->RightAxis->Minimum - xRange,
									   //VoltageChart->RightAxis->Maximum + xRange);
  //}
  //else
  //{
	//VoltageChart->ZoomPercent(105);

	//VoltageChart->RightAxis->SetMinMax(VoltageChart->RightAxis->Minimum + xRange,
									   //VoltageChart->RightAxis->Maximum - xRange);
  //}

  double xRange = (double)(VoltageChart->RightAxis->Maximum - VoltageChart->RightAxis->Minimum) * 0.1;

  //VoltageChart->Zoom->Direction=tzdVertical;

  if (Button==1)
  {
	//VoltageChart->ZoomPercent(95);

	VoltageChart->RightAxis->SetMinMax(VoltageChart->RightAxis->Minimum - xRange,
									   VoltageChart->RightAxis->Maximum + xRange);
  }
  else
  {
	//VoltageChart->ZoomPercent(105);

	VoltageChart->RightAxis->SetMinMax(VoltageChart->RightAxis->Minimum + xRange,
									   VoltageChart->RightAxis->Maximum - xRange);
  }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::VoltageChartUndoZoom(TObject *Sender)
{
  /*VoltageChart->RightAxis->SetMinMax(Series5->YValues->MinValue,
									 Series5->YValues->MaxValue);

  VoltageChart->LeftAxis->SetMinMax(VoltageSeries->YValues->MinValue,
									VoltageSeries->YValues->MaxValue);*/

  VoltageChart->BottomAxis ->Automatic=true;
  VoltageChart->RightAxis  ->Automatic=true;
  VoltageChart->LeftAxis   ->Automatic=true;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::N15Click(TObject *Sender)
{
  AboutForm->ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::RzStatusPane4Click(TObject *Sender)
{
  //ShowMessage(DateTimeToStr(double(Now())));

  //TeeExport(Self, VoltageChart);

  //UnicodeString drgdrg ="sdfgsdgdfgdrgdf";

  //ShowMessage(IntToStr(drgdrg.Pos((Char)(46))));
}
//---------------------------------------------------------------------------

void __fastcall TForm1::LoadSeria(AnsiString SerPath)
{
  String TmpStr;
  int i, k, p;
  double TmpTime;
  String Str;

  TFormatSettings FormatSettings;

  SPath = SerPath;

  TStringList *TmpList = new TStringList;

  VoltageSeries->Clear();

  if (FileExists(UnicodeString(SerPath + "\\[E].txt")))
  {
	VoltageSeries->Active=false;

	TmpList->LoadFromFile(AnsiString(SerPath + "\\[E].txt"));

	if (TmpList->Strings[0].Pos((Char)(46)) == 0) {
		FormatSettings.DecimalSeparator=(Char)(44);
	  }
	  else FormatSettings.DecimalSeparator=(Char)(46);

	for (k = 0; k < TmpList->Count; k++)
	{
	  TmpStr=TmpList->Strings[k];

	  p = TmpStr.Pos((Char)(9));
	  TmpTime=StrToFloat(TmpStr.SubString(0, p - 1), FormatSettings) / 60;

	  TmpStr=TmpStr.SubString(p + 1, TmpStr.Length());

	  VoltageSeries->AddXY(TmpTime, StrToFloat(TmpStr, FormatSettings));
	}

	VoltageSeries->Active=true;
  }

  CurrentSeries->Clear();

  if (FileExists(UnicodeString(SerPath + "\\[I].txt")))
  {
	CurrentSeries->Active=false;

	TmpList->LoadFromFile(AnsiString(SerPath + "\\[I].txt"));

	if (TmpList->Strings[0].Pos((Char)(46)) == 0) {
		FormatSettings.DecimalSeparator=(Char)(44);
	  }
	  else FormatSettings.DecimalSeparator=(Char)(46);

	for (k = 0; k < TmpList->Count; k++)
	{
	  TmpStr=TmpList->Strings[k];

	  p = TmpStr.Pos((Char)(9));
	  TmpTime=StrToFloat(TmpStr.SubString(0, p - 1), FormatSettings) / 60;

	  TmpStr=TmpStr.SubString(p + 1, TmpStr.Length());

	  CurrentSeries->AddXY(TmpTime, StrToFloat(TmpStr, FormatSettings));
	}

	CurrentSeries->Active=true;
  }

  Series5->Clear();
  SeriesR->Clear();
  SimensSeries->Clear();

  if (FileExists(UnicodeString(SerPath + "\\[R].txt")))
  {
	Series5->Active=false;
	SeriesR->Active=false;
	SimensSeries->Active=false;

	SeriesR->Pointer->Visible=true;
	SimensSeries->Pointer->Visible=true;
	Series5->Pointer->Visible=true;

	SeriesR->Pointer->Size=4;
	SimensSeries->Pointer->Size=4;
	Series5->Pointer->Size=4;

    RCount=0;

	TmpList->LoadFromFile(AnsiString(SerPath + "\\[R].txt"));

    if (TmpList->Strings[0].Pos((Char)(46)) == 0) {
		FormatSettings.DecimalSeparator=(Char)(44);
	  }
	  else FormatSettings.DecimalSeparator=(Char)(46);

	for (k = 0; k < TmpList->Count; k++)
	{
	  TmpStr=TmpList->Strings[k];

	  p = TmpStr.Pos((Char)(9));
	  TmpTime=StrToFloat(TmpStr.SubString(0, p - 1), FormatSettings) / 60;

	  TmpStr=TmpStr.SubString(p + 1, TmpStr.Length());

	  double Tch = StrToFloat(TmpStr, FormatSettings);

	  if (Tch > 0) {
		SeriesR->AddXY(TmpTime, Tch);
		Series5->AddXY(TmpTime, Tch);
		SimensSeries->AddXY(TmpTime, 1 / Tch);
	  }
	  else
	  {
		SeriesR->AddXY(TmpTime, 0);
		Series5->AddXY(TmpTime, 0);
	  }

	  RCount++;

	  if (SeriesR->Pointer->Size > 1)
	  {
		if ((RCount * SeriesR->Pointer->Size) >= (RChart->Width * 0,75))
		{
		  //ShowMessage(FloatToStr(RChart->Width * 0,8));
		  SeriesR->Pointer->Size=SeriesR->Pointer->Size-1;
		  SimensSeries->Pointer->Size=SeriesR->Pointer->Size;
		}
	  }
	  else
	  {
		SeriesR->Pointer->Visible=false;
		SimensSeries->Pointer->Visible=false;
	  }

	  if (Series5->Pointer->Size > 1)
	  {
		if ((RCount * Series5->Pointer->Size) >= (VoltageChart->Width * 0,75))
		{
		  Series5->Pointer->Size=Series5->Pointer->Size-1;
		}
	  }
	  else
	  {
		Series5->Pointer->Visible=false;
	  }
	}

	Series5->Active=true;
	SeriesR->Active=false;
	SimensSeries->Active=true;

	RzRadioGroup1->ItemIndex=0;
  }

  for (int i = 0; i < LineCount; i++)
  {
  	//ShowMessage(IntToStr(i));

	//VoltageChart->RemoveControl((TColorLineTool *) VoltageChart->FindComponent("xLine" + IntToStr(i)));

	delete VoltageChart->FindComponent("xLine" + IntToStr(i));
	delete RChart->FindComponent("xLine" + IntToStr(i));
	delete CurrentChart->FindComponent("xLine" + IntToStr(i));

	//TColorLineTool(Form1->VoltageChart->FindComponent("xLine" + IntToStr(i))).Free();
	//TColorLineTool(Form1->RChart->FindComponent("xLine" + IntToStr(i))).Free();
	//TColorLineTool(Form1->CurrentChart->FindComponent("xLine" + IntToStr(i))).Free();
  }

  LineCount=0;

  if (FileExists(UnicodeString(SerPath + "\\[Labels].txt")))
  {
	TmpList->LoadFromFile(AnsiString(SerPath + "\\[Labels].txt"));

	if (TmpList->Strings[0].Pos((Char)(46)) == 0) {
		FormatSettings.DecimalSeparator=(Char)(44);
	  }
	  else FormatSettings.DecimalSeparator=(Char)(46);

	for (k = 0; k < TmpList->Count; k++)
	{
	  TmpStr=TmpList->Strings[k];

	  p = TmpStr.Pos((Char)(9));
	  TmpTime=StrToFloat(TmpStr.SubString(0, p - 1), FormatSettings) / 60;

	  TmpStr=TmpStr.SubString(p + 1, TmpStr.Length());

	  p = TmpStr.Pos((Char)(9));
	  TmpStr=TmpStr.SubString(0, p - 1);

	  AddLineXEx("xLine" + IntToStr(LineCount), TmpTime, StringToColor(TmpStr), VoltageChart, 2, true);
	  AddLineXEx("xLine" + IntToStr(LineCount), TmpTime, StringToColor(TmpStr), RChart, 2, true);
	  AddLineXEx("xLine" + IntToStr(LineCount), TmpTime, StringToColor(TmpStr), CurrentChart, 2, true);

      LineCount++;
	}
  }
}

//---------------------------------------------------------------------------

void __fastcall TForm1::RzComboBox2Change(TObject *Sender)
{
  LoadSeria(DR + "\\Data\\" + SeriesList->Strings[RzComboBox2->ItemIndex]);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ChartIDblClick(TObject *Sender)
{
  ChartEditor3->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ChartUDblClick(TObject *Sender)
{
  ChartEditor4->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::VoltageChartDblClick(TObject *Sender)
{
  ChartEditor5->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::CurrentChartDblClick(TObject *Sender)
{
  ChartEditor6->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::RChartDblClick(TObject *Sender)
{
  ChartEditor7->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::RzSpinEdit4Change(TObject *Sender)
{
  if (abs(RzSpinEdit4->Value) < 1000) {
	RzSpinEdit4->Font->Color=xGetColor(clBlack, clBlue, abs(RzSpinEdit4->Value), 1000);
  }
  else {
	if (abs(RzSpinEdit4->Value) < 3000) {
	  RzSpinEdit4->Font->Color=xGetColor(clBlue, clAqua, abs(RzSpinEdit4->Value) - 1000, 2000);
	}
	else {
	  if (abs(RzSpinEdit4->Value) < 5000) {
		RzSpinEdit4->Font->Color=xGetColor(clAqua, clGreen, abs(RzSpinEdit4->Value) - 3000, 2000);
	  }
	  else
		if (abs(RzSpinEdit4->Value) < 7000) {
		  RzSpinEdit4->Font->Color=xGetColor(clGreen, clYellow, abs(RzSpinEdit4->Value) - 5000, 2000);
		}
		else RzSpinEdit4->Font->Color=xGetColor(clYellow, clRed, abs(RzSpinEdit4->Value) - 7000, 3000);
	}
  }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::VoltageChartClickAxis(TCustomChart *Sender, TChartAxis *Axis,
		  TMouseButton Button, TShiftState Shift, int X, int Y)
{
  TPoint Pt;
  Pt=TPoint(X, Y);

  Pt=ClientToScreen(Pt);

  if (mbRight == Button){
	if (Axis==VoltageChart->RightAxis) {
	  VoltageChart->PopupMenu=AdvPopupMenu1;
	}
	if (Axis==VoltageChart->LeftAxis) {
	  VoltageChart->PopupMenu=AdvPopupMenu3;
	}
  }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::AdvPopupMenu1Popup(TObject *Sender)
{
  //AdvPopupMenu1->
}
//---------------------------------------------------------------------------


void __fastcall TForm1::VoltageChartMouseUp(TObject *Sender, TMouseButton Button,
          TShiftState Shift, int X, int Y)
{
  VoltageChart->PopupMenu=AdvPopupMenu2;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::N16Click(TObject *Sender)
{
  VoltageChart->RightAxis  ->Automatic=true;
  VoltageChart->RightAxis->Logarithmic=N16->Checked;
  //VoltageChart->RightAxis->LogarithmicBase=10;
}
//---------------------------------------------------------------------------

double InttLineSer(TChartSeries* xSeries, int FirstIndex, int LastIndex, Double XValue)
{
 int Index;
 Double dx,dy;

  for(Index = FirstIndex; Index <= LastIndex; Index++)
	if((xSeries->XValues->Value[Index]) > XValue) break;

  if (Index < 1)
  {
	Index= 1;
  }
  else
  {
	if (xSeries->Count() <= Index)
	{
	  Index = xSeries->Count() - 1;
	}
  }

  dx= xSeries->XValues->Value[Index] - xSeries->XValues->Value[Index-1];
  dy= xSeries->YValues->Value[Index] - xSeries->YValues->Value[Index-1];

  if (dx != 0)
  {
	return dy * (XValue - xSeries->XValues->Value[Index-1]) / dx + xSeries->YValues->Value[Index-1];
  }
    else return 0;
 }

void __fastcall TForm1::CurrChartClick(TObject *Sender)
{
  int Fr, Ls;
  double TmpX;
  double ValX, ValY;

   if ((ChartTool12->Active) || (ToolX->Down))
  {
      if (CheckListBox1->ItemIndex == -1) return;
	  if (xSign.Series[CheckListBox1->ItemIndex*2+1]->Active == false) return;

	  Clipboard()->Clear();

	  PointsI->AddXY(ChartTool12->XValue, ChartTool12->YValue);

	  if ((CheckListBox1->ItemIndex == -1) || (CheckListBox1->Count == 0))
	  {
		CheckListBox1->Selected[0]=true;
		CheckListBox1->ItemIndex=0;
		CheckListBox1Click(Sender);
      }

	  Fr=xSign.Series[CheckListBox1->ItemIndex*2+1]->FirstDisplayedIndex();
	  Ls=xSign.Series[CheckListBox1->ItemIndex*2+1]->LastValueIndex;

	  TmpX=InttLineSer(xSign.Series[CheckListBox1->ItemIndex*2+1],
					   Fr,
					   Ls,
					   double(ChartTool12->XValue));

	  PointsU->AddXY(ChartTool12->XValue, TmpX);

	  if (ToolWin->Visible)
	  {
		DCText=DCText + (Char)(13) + (Char)(10) +
			 FloatToStrF(TmpX, ffFixed,6,1) +
						(Char)(9) +
			 FloatToStrF(ChartTool12->YValue - ChartTool13->Value, ffFixed,6,4);
	  }
	  else
	  {
        DCText=FloatToStrF(TmpX, ffFixed,6,1) +
						  (Char)(9) +
			   FloatToStrF(ChartTool12->YValue - ChartTool13->Value, ffFixed,6,4);

        ToolWin->Memo1->Lines->Clear();
		ToolWin->Show();
	  }

	  Clipboard()->AsText=DCText.c_str();

	  ToolWin->Memo1->Lines->Add(FloatToStrF(ChartTool12->XValue, ffFixed,6,3) + "сек. " +
								 FloatToStrF(TmpX, ffFixed,6,1) + "мВ. " +
								 FloatToStrF(ChartTool12->YValue - ChartTool13->Value, ffFixed,6,4) + " мкА");

	  ToolWin->Height=34+(abs(ToolWin->Memo1->Font->Height)+2)*(ToolWin->Memo1->Lines->Count + 3);
  }


  if (ToolLine->Down) {
	DCText  = "";
	ToolWin->Memo1->Lines->Clear();

	for(int i=0;i<xSign.Ni/2;i++)
	{
	  if (xSign.Series[i*2]->Active==true) {

		double TmpU=InttLineSer(xSign.Series[i*2+1],
								xSign.Series[i*2+1]->FirstDisplayedIndex(),
								xSign.Series[i*2+1]->LastValueIndex,
								double(CursorLineTool->XValue));

		double TmpI=InttLineSer(xSign.Series[i*2],
								xSign.Series[i*2]->FirstDisplayedIndex(),
								xSign.Series[i*2]->LastValueIndex,
								double(CursorLineTool->XValue));


		DCText=DCText +  FloatToStrF(TmpU, ffFixed,6,1) +
						(Char)(9) +
						 FloatToStrF(TmpI - ChartTool13->Value, ffFixed,6,4) +
						(Char)(13) + (Char)(10);

		ToolWin->Memo1->Lines->Add(FloatToStrF(CursorLineTool->XValue, ffFixed,6,3) + "сек. " +
								 FloatToStrF(TmpU, ffFixed,6,1) + "мВ. " +
								 FloatToStrF(TmpI - ChartTool13->Value, ffFixed,6,4) + " мкА");

	    ToolWin->Height=34+(abs(ToolWin->Memo1->Font->Height)+2)*(ToolWin->Memo1->Lines->Count + 3);
	  }
	}
	Clipboard()->Clear();
	Clipboard()->AsText=DCText.c_str();

	ToolWin->Show();

  }

  }
//---------------------------------------------------------------------------


void __fastcall TForm1::ChartTool13SnapChange(TCursorTool *Sender, int x, int y, const double XValue,
          const double YValue, TChartSeries *Series, int ValueIndex)
{
  Edit4->Text=FloatToStrF(YValue,ffFixed,6,4);
}
//---------------------------------------------------------------------------



void __fastcall TForm1::ChartTool13DragLine(TColorLineTool *Sender)
{
  Edit4->Text=FloatToStrF(ChartTool13->Value,ffFixed,6,4);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ChartTool13BeginDragLine(TColorLineTool *Sender)
{
  Edit4->Text=FloatToStrF(ChartTool13->Value,ffFixed,6,4);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ChartTool13EndDragLine(TColorLineTool *Sender)
{
  Edit4->Text=FloatToStrF(ChartTool13->Value,ffFixed,6,4);
}
//---------------------------------------------------------------------------


void __fastcall TForm1::RzEdit1KeyPress(TObject *Sender, wchar_t &Key)
{
  //ShowMessage(IntToStr((byte)(Key)));
  if ((byte)(Key) == 13) {
	ToolButton19Click(Sender);
  }
}
//---------------------------------------------------------------------------



void __fastcall TForm1::MenuItem1Click(TObject *Sender)
{
  VoltageChart->LeftAxis->Inverted=MenuItem1->Checked;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::RzSpinEdit8Change(TObject *Sender)
{
  RzSpinEdit8->Font->Color=xGetColor(clBlack, clRed, abs(RzSpinEdit8->Value), 100);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Chart1Resize(TObject *Sender)
{
  UpDownX->Top=Chart1->Height - UpDownX->Height - 2;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::VoltageChartBeforeDrawChart(TObject *Sender)
{
  TObject *TmpLine;

  for (int i=0; i < LineCount; i++) {
	TmpLine=((TChart*)Sender)->FindComponent("xLine" + IntToStr(i));

	if ((((TColorLineTool*)TmpLine)->Value > ((TChart*)Sender)->BottomAxis->Minimum) &
		(((TColorLineTool*)TmpLine)->Value < ((TChart*)Sender)->BottomAxis->Maximum)) {
		 ((TColorLineTool*)TmpLine)->Active=true;
	}
	else
	{
      ((TColorLineTool*)TmpLine)->Active=false;
	}
  }
}
//---------------------------------------------------------------------------




