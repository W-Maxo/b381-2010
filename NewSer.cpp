//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "NewSer.h"
#include "Main.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "RzButton"
#pragma resource "*.dfm"
TNewSerForm *NewSerForm;
//---------------------------------------------------------------------------
__fastcall TNewSerForm::TNewSerForm(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TNewSerForm::FormShortCut(TWMKey &Msg, bool &Handled)
{
  if (Msg.CharCode == 27) {
	RzBitBtn2->Click();
  }

  if (Msg.CharCode == 13) {
	RzBitBtn1->Click();
  }
}
//---------------------------------------------------------------------------

