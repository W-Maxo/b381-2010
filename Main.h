//---------------------------------------------------------------------------

#ifndef MainH
#define MainH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <Menus.hpp>
#include <ExtCtrls.hpp>
#include <ComCtrls.hpp>
#include <ToolWin.hpp>
#include <Dialogs.hpp>
#include <ImgList.hpp>

//#include "b181.h"
#include <CheckLst.hpp>
#include <Buttons.hpp>
#include <TeeProcs.hpp>
#include <Chart.hpp>
#include <Series.hpp>
#include <TeEngine.hpp>
#include <XPMan.hpp>
#include "TeeTools.hpp"
#include "RzTabs.hpp"
#include "RzCommon.hpp"
#include "RzForms.hpp"
#include "RzCmboBx.hpp"
#include "RzEdit.hpp"
#include "RzLabel.hpp"
#include "RzLine.hpp"
#include "RzPanel.hpp"
#include "RzSpnEdt.hpp"
#include "RzStatus.hpp"
#include <Mask.hpp>
#include "RzSplit.hpp"
#include "RzButton.hpp"
#include "RzRadChk.hpp"
#include "TeeEdit.hpp"
#include "TeeAntiAlias.hpp"
#include "RzRadGrp.hpp"
#include "AdvToolBar.hpp"
#include "AdvToolBarStylers.hpp"
#include "AdvGlowButton.hpp"
#include "AdvOfficeSelectors.hpp"
#include "RzShellDialogs.hpp"
#include "AdvMenus.hpp"
#include "AdvMenuStylers.hpp"
#include "JvComponentBase.hpp"
#include "JvScreenSaveSuppress.hpp"
//---------------------------------------------------------------------------

class TForm1 : public TForm
{
__published:	// IDE-managed Components
        TMainMenu *MainMenu1;
        TMenuItem *Menu_File;
        TMenuItem *Menu_Edit;
        TMenuItem *Menu_Options;
        TMenuItem *Menu__1;
        TMenuItem *Menu_Exit;
        TOpenDialog *OpenDialog1;
        TSaveDialog *SaveDialog1;
        TMenuItem *Menu_Delete;
        TMenuItem *Menu_Print;
        TMenuItem *Menu_Separator1;
        TMenuItem *Menu_Comment;
        TMenuItem *N1;
        TMenuItem *MenuReset;
        TMenuItem *N2;
        TMenuItem *N3;
        TMenuItem *N4;
        TMenuItem *N5;
        TMenuItem *N6;
        TMenuItem *N7;
        TMenuItem *N8;
        TMenuItem *N9;
        TMenuItem *N10;
        TMenuItem *fft1;
        TTimer *Timer1;
        TMenuItem *N11;
        TPanel *PanelT;
        TSplitter *Splitter0;
        TMenuItem *N12;
		TMenuItem *N13;
	TXPManifest *XPManifest1;
	TRzPageControl *RzPageControl1;
	TRzTabSheet *TabSheet1;
	TPanel *PanelB;
	TSplitter *Splitter1;
	TPanel *Panel2;
	TLabel *Label1;
	TLabel *Label2;
	TLabel *Label3;
	TEdit *Edit1;
	TEdit *Edit2;
	TEdit *Edit3;
	TComboBox *CBSeries;
	TCheckListBox *CheckListBox1;
	TUpDown *UpDown1;
	TPanel *Panel3;
	TRzRegIniFile *RzRegIniFile1;
	TRzFormState *RzFormState1;
	TRzTabSheet *TabSheet3;
	TPanel *Panel8;
	TPanel *Panel9;
	TCheckListBox *CheckListBox3;
	TRzPanel *RzPanel2;
	TRzGlyphStatus *RzGlyphStatus2;
	TRzComboBox *RzComboBox2;
	TCheckBox *CheckBox1;
	TRzSplitter *RzSplitter4;
	TChart *ChartI;
	TFastLineSeries *SeriesI;
	TChart *ChartU;
	TFastLineSeries *SeriesU;
	TAxisScrollTool *ChartTool8;
	TAxisScrollTool *ChartTool9;
	TUpDown *UpDown16;
	TUpDown *UpDown17;
	TUpDown *UpDown18;
	TRzGroupBox *RzGroupBox1;
	TRzLabel *RzLabel9;
	TRzLabel *RzLabel16;
	TRzLabel *RzLabel12;
	TRzLabel *RzLabel15;
	TImageList *ToolBarImageList;
	TRzGroupBox *RzGroupBox2;
	TRzGlyphStatus *RzGlyphStatus3;
	TRadioButton *RadioButton4;
	TRadioButton *RadioButton3;
	TRzSpinEdit *RzSpinEdit3;
	TChartEditor *ChartEditor1;
	TChartEditor *ChartEditor2;
	TMenuItem *N14;
	TMenuItem *N15;
	TRzToolButton *RzToolButton1;
	TRzStatusPane *RzStatusPane1;
	TRzStatusPane *RzStatusPane2;
	TRzStatusPane *RzStatusPane3;
	TRzSpinEdit *RzNumericEdit5;
	TRzSpinEdit *RzNumericEdit6;
	TRzPropertyStore *RzPropertyStore1;
	TRzGroupBox *RzGroupBox3;
	TRzSpinEdit *RzSpinEdit5;
	TRzLabel *RzLabel1;
	TRzGroupBox *RzGroupBox4;
	TRzCheckBox *CheckBox4;
	TRzLabel *RzLabel11;
	TRzSpinEdit *RzSpinEdit4;
	TRzLabel *RzLabel14;
	TRzGlyphStatus *RzGlyphStatus1;
	TRzCheckBox *RzCheckBox2;
	TRzSpinEdit *RzSpinEdit6;
	TRzLabel *RzLabel2;
	TRzLabel *RzLabel3;
	TRzSpinEdit *RzSpinEdit7;
	TRzLabel *RzLabel4;
	TRzLabel *RzLabel5;
	TRzSpinEdit *RzSpinEdit8;
	TRzSpinEdit *RzSpinEdit9;
	TRzLabel *RzLabel6;
	TRzCustomColors *RzCustomColors1;
	TAdvDockPanel *AdvDockPanel1;
	TAdvToolBar *AdvToolBar1;
	TAdvToolBarOfficeStyler *AdvToolBarOfficeStyler1;
	TAdvToolBarButton *ToolButton13;
	TAdvToolBarButton *ToolButton16;
	TAdvToolBar *AdvToolBar2;
	TImageList *ImageList2;
	TImageList *ImageList3;
	TAdvToolBarButton *ToolButton19;
	TRzColorEdit *RzColorEdit1;
	TAdvToolBarSeparator *AdvToolBarSeparator1;
	TAdvToolBar *AdvToolBar3;
	TRzStatusPane *RzStatusPane4;
	TAdvToolBar *AdvToolBar4;
	TAdvToolBarButton *AdvToolBarButton1;
	TAdvToolBarButton *AdvToolBarButton2;
	TAdvToolBarSeparator *AdvToolBarSeparator2;
	TAdvToolBarButton *AdvToolBarButton3;
	TAdvToolBar *AdvToolBar5;
	TAdvToolBarButton *AdvToolBarButton4;
	TAdvToolBar *AdvToolBar6;
	TAdvToolBarButton *ToolRun;
	TAdvToolBarButton *ToolLine;
	TAdvToolBarButton *ToolX;
	TAdvToolBarButton *ToolButton9;
	TEdit *Edit4;
	TAdvToolBarButton *AdvToolBarButton5;
	TAdvToolBarSeparator *AdvToolBarSeparator4;
	TAdvToolBar *AdvToolBar7;
	TAdvToolBarButton *AdvToolBarButton7;
	TRzStatusPane *RzStatusPane5;
	TTimer *TimerClock;
	TRzCheckBox *RzCheckBox3;
	TRzSplitter *RzSplitter1;
	TChart *VoltageChart;
	TUpDown *UpDown8;
	TUpDown *UpDown9;
	TUpDown *UpDown4;
	TPointSeries *PointSeries2;
	TFastLineSeries *VoltageSeries;
	TLineSeries *Series5;
	TColorLineTool *ColorLineTool3;
	TCursorTool *CursorTool4;
	TAnnotationTool *VoltageL;
	TAnnotationTool *VoltageLDelta;
	TCursorTool *CursorTool5;
	TAnnotationTool *AnnotationTool4;
	TAxisScrollTool *ChartTool6;
	TRectangleTool *ChartTool10;
	TChart *CurrentChart;
	TUpDown *UpDown14;
	TUpDown *UpDown15;
	TPointSeries *PointSeries5;
	TFastLineSeries *CurrentSeries;
	TColorLineTool *ColorLineTool6;
	TCursorTool *CursorTool10;
	TAnnotationTool *CurrentL;
	TAnnotationTool *CurrentLDelta;
	TCursorTool *CursorTool11;
	TAnnotationTool *AnnotationTool9;
	TAxisScrollTool *AxisScrollTool2;
	TRzSizePanel *RzSizePanel1;
	TRzSplitter *RzSplitter6;
	TChart *RChart;
	TUpDown *UpDown10;
	TUpDown *UpDown11;
	TRzRadioGroup *RzRadioGroup1;
	TLineSeries *SeriesR;
	TLineSeries *SimensSeries;
	TColorLineTool *ColorLineTool4;
	TCursorTool *CursorTool6;
	TAnnotationTool *AnnotationTool5;
	TCursorTool *CursorTool7;
	TAnnotationTool *AnnotationTool6;
	TAxisScrollTool *ChartTool7;
	TColorLineTool *ChartTool11;
	TRzSplitter *RzSplitter2;
	TChart *Chart2;
	TUpDown *UpDown2;
	TUpDown *UpDown3;
	TPointSeries *PointSeries1;
	TLineSeries *LineSeries1;
	TColorLineTool *ColorLineTool1;
	TCursorTool *CursorTool1;
	TAnnotationTool *AnnotationTool1;
	TCursorTool *CursorTool2;
	TAnnotationTool *AnnotationTool2;
	TAxisScrollTool *AxisScrollTool3;
	TColorBandTool *ColorBandTool1;
	TChart *CurrentTChart;
	TUpDown *UpDown12;
	TUpDown *UpDown13;
	TRzSpinEdit *RzSpinEdit1;
	TPointSeries *PointSeries4;
	TLineSeries *Series1;
	TColorLineTool *ColorLineTool5;
	TCursorTool *CursorTool8;
	TAnnotationTool *AnnotationTool3;
	TCursorTool *CursorTool9;
	TAnnotationTool *AnnotationTool7;
	TAxisScrollTool *AxisScrollTool1;
	TColorBandTool *ChartTool3;
	TRzSelectFolderDialog *FolderDialog1;
	TChartEditor *ChartEditor3;
	TChartEditor *ChartEditor4;
	TChartEditor *ChartEditor5;
	TChartEditor *ChartEditor6;
	TChartEditor *ChartEditor7;
	TAdvPopupMenu *AdvPopupMenu1;
	TAdvMenuOfficeStyler *AdvMenuOfficeStyler1;
	TMenuItem *N16;
	TAdvPopupMenu *AdvPopupMenu2;
	TRzComboBox *RzEdit1;
	TAdvPopupMenu *AdvPopupMenu3;
	TMenuItem *MenuItem1;
	TAdvToolBarButton *AdvToolBarButton6;
	TJvScreenSaveSuppressor *JvScreenSaveSuppressor1;
	TRzSplitter *RzSplitter3;
	TChart *CurrChart;
	TUpDown *UpDownY1;
	TFastLineSeries *Series3;
	TPointSeries *PointsI;
	TAxisScrollTool *ChartTool1;
	TCursorTool *CursorLineTool;
	TAnnotationTool *CurrL;
	TAntiAliasTool *ChartTool4;
	TCursorTool *ChartTool12;
	TColorLineTool *ChartTool13;
	TChart *Chart1;
	TUpDown *UpDownY2;
	TFastLineSeries *Series4;
	TPointSeries *PointsU;
	TAxisScrollTool *ChartTool2;
	TAnnotationTool *VoltL;
	TAntiAliasTool *ChartTool5;
	TUpDown *UpDownX;
        void __fastcall Menu_OpenClick(TObject *Sender);
		void __fastcall Menu_Save_AsClick(TObject *Sender);
//        void __fastcall ButtonClick(TObject *Sender);
        void __fastcall FormCreate(TObject *Sender);
        void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
//        void __fastcall ButtonInitClick(TObject *Sender);
        void __fastcall Menu_OptionsClick(TObject *Sender);
        void __fastcall ButtonRunClick(TObject *Sender);
        void __fastcall ScrollBarXScroll(TObject *Sender,
          TScrollCode ScrollCode, int &ScrollPos);
        void __fastcall ScrollBarY1Scroll(TObject *Sender,
          TScrollCode ScrollCode, int &ScrollPos);
        void __fastcall UpDownXClick(TObject *Sender, TUDBtnType Button);
        void __fastcall UpDownY1Click(TObject *Sender, TUDBtnType Button);
        void __fastcall ButtonOptionClick(TObject *Sender);
        void __fastcall OpenDialog1TypeChange(TObject *Sender);
        void __fastcall SaveDialog1TypeChange(TObject *Sender);
        void __fastcall CheckListBox1ClickCheck(TObject *Sender);
//        void __fastcall Button4Click(TObject *Sender);
        void __fastcall Menu_ExitClick(TObject *Sender);
        void __fastcall Menu_NewClick(TObject *Sender);
        void __fastcall CheckListBox1Click(TObject *Sender);
        void __fastcall Panel1Resize(TObject *Sender);
        void __fastcall Splitter1Moved(TObject *Sender);
        void __fastcall Panel3Resize(TObject *Sender);
        void __fastcall CurrChartResize(TObject *Sender);
        void __fastcall UpDownY2Click(TObject *Sender, TUDBtnType Button);
        void __fastcall ScrollBarY2Scroll(TObject *Sender,
          TScrollCode ScrollCode, int &ScrollPos);
        void __fastcall Menu_PrintClick(TObject *Sender);
        void __fastcall CurrChartAfterDraw(TObject *Sender);
        void __fastcall Menu_CommentClick(TObject *Sender);
        void __fastcall Panel2Resize(TObject *Sender);
        void __fastcall ToolCursClick(TObject *Sender);
        void __fastcall Menu_DeleteClick(TObject *Sender);
        void __fastcall MenuResetClick(TObject *Sender);
        void __fastcall Menu_NewSeriaClick(TObject *Sender);
        void __fastcall MenuClearClick(TObject *Sender);
        void __fastcall CBSeriesChange(TObject *Sender);
        void __fastcall N9Click(TObject *Sender);
        void __fastcall Menu_FileClick(TObject *Sender);
        void __fastcall ToolButton6Click(TObject *Sender);
        void __fastcall Edit1Exit(TObject *Sender);
        void __fastcall Edit3Exit(TObject *Sender);
        void __fastcall N10Click(TObject *Sender);
        void __fastcall fft1Click(TObject *Sender);
        void __fastcall UpDown1Click(TObject *Sender, TUDBtnType Button);
        void __fastcall Timer1Timer(TObject *Sender);
        void __fastcall SpeedButton1Click(TObject *Sender);
        void __fastcall Edit3Change(TObject *Sender);
        void __fastcall EditChange(TObject *Sender);
        void __fastcall Edit2Exit(TObject *Sender);
        void __fastcall N11Click(TObject *Sender);
        void __fastcall CurrChartMouseUp(TObject *Sender, TMouseButton Button,
          TShiftState Shift, int X, int Y);
        void __fastcall ToolButton9Click(TObject *Sender);
        void __fastcall CurrChartMouseMove(TObject *Sender, TShiftState Shift,
          int X, int Y);
        void __fastcall Edit4Change(TObject *Sender);
        void __fastcall Edit4Exit(TObject *Sender);
        void __fastcall Splitter0Moved(TObject *Sender);
        void __fastcall ScrollBar1Change(TObject *Sender);
        void __fastcall Splitter0CanResize(TObject *Sender, int &NewSize,
          bool &Accept);
        void __fastcall Splitter2CanResize(TObject *Sender, int &NewSize,
          bool &Accept);
        void __fastcall ChartIAfterDraw(TObject *Sender);
        void __fastcall N12Click(TObject *Sender);
        void __fastcall ScrollBarIChange(TObject *Sender);
        void __fastcall UpDownIClick(TObject *Sender, TUDBtnType Button);
	void __fastcall Chart1Scroll(TObject *Sender);
	void __fastcall CurrChartScroll(TObject *Sender);
	void __fastcall Chart1UndoZoom(TObject *Sender);
	void __fastcall CurrChartUndoZoom(TObject *Sender);
	void __fastcall Chart1Zoom(TObject *Sender);
	void __fastcall CurrChartZoom(TObject *Sender);
	void __fastcall ToolButton2Click(TObject *Sender);
	void __fastcall CurrChartMouseDown(TObject *Sender, TMouseButton Button, TShiftState Shift,
          int X, int Y);
	void __fastcall VoltageChartResize(TObject *Sender);
	void __fastcall RChartResize(TObject *Sender);
	void __fastcall CurrentChartResize(TObject *Sender);
	void __fastcall CurrentTChartResize(TObject *Sender);
	void __fastcall RzCheckBox1Click(TObject *Sender);
	void __fastcall ChartUResize(TObject *Sender);
	void __fastcall ChartIResize(TObject *Sender);
	void __fastcall RzPageControl1Change(TObject *Sender);
	void __fastcall UpDown17Click(TObject *Sender, TUDBtnType Button);
	void __fastcall UpDown18Click(TObject *Sender, TUDBtnType Button);
	void __fastcall ChartIScroll(TObject *Sender);
	void __fastcall ChartUScroll(TObject *Sender);
	void __fastcall ChartIZoom(TObject *Sender);
	void __fastcall ChartUZoom(TObject *Sender);
	void __fastcall ChartIUndoZoom(TObject *Sender);
	void __fastcall ChartUUndoZoom(TObject *Sender);
	void __fastcall UpDown16Click(TObject *Sender, TUDBtnType Button);
	void __fastcall UpDown9Click(TObject *Sender, TUDBtnType Button);
	void __fastcall UpDown11Click(TObject *Sender, TUDBtnType Button);
	void __fastcall UpDown15Click(TObject *Sender, TUDBtnType Button);
	void __fastcall UpDown13Click(TObject *Sender, TUDBtnType Button);
	void __fastcall UpDown8Click(TObject *Sender, TUDBtnType Button);
	void __fastcall UpDown10Click(TObject *Sender, TUDBtnType Button);
	void __fastcall UpDown14Click(TObject *Sender, TUDBtnType Button);
	void __fastcall UpDown12Click(TObject *Sender, TUDBtnType Button);
	void __fastcall ToolButton13Click(TObject *Sender);
	void __fastcall RzNumericEdit6Change(TObject *Sender);
	void __fastcall RzSpinEdit1Change(TObject *Sender);
	void __fastcall CurrChartDblClick(TObject *Sender);
	void __fastcall Chart1DblClick(TObject *Sender);
	void __fastcall UpDown2Click(TObject *Sender, TUDBtnType Button);
	void __fastcall UpDown3Click(TObject *Sender, TUDBtnType Button);
	void __fastcall Chart2Resize(TObject *Sender);
	void __fastcall RadioButton3Click(TObject *Sender);
	void __fastcall RadioButton4Click(TObject *Sender);
	void __fastcall ToolButton16Click(TObject *Sender);
	void __fastcall RzToolButton1Click(TObject *Sender);
	void __fastcall RzRadioGroup1Changing(TObject *Sender, int NewIndex, bool &AllowChange);
	void __fastcall ToolButton19Click(TObject *Sender);
	void __fastcall TimerClockTimer(TObject *Sender);
	void __fastcall AdvToolBarButton7Click(TObject *Sender);
	void __fastcall UpDown4Click(TObject *Sender, TUDBtnType Button);
	void __fastcall VoltageChartUndoZoom(TObject *Sender);
	void __fastcall N15Click(TObject *Sender);
	void __fastcall RzStatusPane4Click(TObject *Sender);
	void __fastcall LoadSeria(AnsiString SerPath);
	void __fastcall RzComboBox2Change(TObject *Sender);
	void __fastcall xNewSeries(TObject *Sender);
	void __fastcall ChartIDblClick(TObject *Sender);
	void __fastcall ChartUDblClick(TObject *Sender);
	void __fastcall VoltageChartDblClick(TObject *Sender);
	void __fastcall CurrentChartDblClick(TObject *Sender);
	void __fastcall RChartDblClick(TObject *Sender);
	void __fastcall RzSpinEdit4Change(TObject *Sender);
	void __fastcall VoltageChartClickAxis(TCustomChart *Sender, TChartAxis *Axis, TMouseButton Button,
          TShiftState Shift, int X, int Y);
	void __fastcall AdvPopupMenu1Popup(TObject *Sender);
	void __fastcall VoltageChartMouseUp(TObject *Sender, TMouseButton Button, TShiftState Shift,
          int X, int Y);
	void __fastcall N16Click(TObject *Sender);
	void __fastcall CurrChartClick(TObject *Sender);
	void __fastcall ChartTool13SnapChange(TCursorTool *Sender, int x, int y, const double XValue,
          const double YValue, TChartSeries *Series, int ValueIndex);
	void __fastcall ChartTool13DragLine(TColorLineTool *Sender);
	void __fastcall ChartTool13BeginDragLine(TColorLineTool *Sender);
	void __fastcall ChartTool13EndDragLine(TColorLineTool *Sender);
	void __fastcall RzEdit1KeyPress(TObject *Sender, wchar_t &Key);
	void __fastcall MenuItem1Click(TObject *Sender);
	void __fastcall RzSpinEdit8Change(TObject *Sender);
	void __fastcall Chart1Resize(TObject *Sender);
	void __fastcall VoltageChartBeforeDrawChart(TObject *Sender);


//        void __fastcall ScrollBar1Change(TObject *Sender);
private:	// User declarations

        void __fastcall OnClose(TWMClose& Message);

public:		// User declarations
		__fastcall TForm1(TComponent* Owner);

		TFormatSettings    MyFormat;

        TLineSeries *PSeries[40];
  BEGIN_MESSAGE_MAP
     MESSAGE_HANDLER(WM_CLOSE,TWMClose,OnClose)
  END_MESSAGE_MAP(TComponent)
};


//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
