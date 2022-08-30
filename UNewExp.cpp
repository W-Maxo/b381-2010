//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "UNewExp.h"
#include "Main.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "RzButton"
#pragma resource "*.dfm"
TNewExp *NewExp;
//---------------------------------------------------------------------------
__fastcall TNewExp::TNewExp(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------


void __fastcall TNewExp::FormKeyPress(TObject *Sender, wchar_t &Key)
{
  ShowMessage(IntToStr((int)(Key)));
}
//---------------------------------------------------------------------------

void __fastcall TNewExp::FormShortCut(TWMKey &Msg, bool &Handled)
{
  if (Msg.CharCode == 27) {
	RzBitBtn2->Click();
  }

  if (Msg.CharCode == 13) {
	RzBitBtn1->Click();
  }
}
//---------------------------------------------------------------------------

