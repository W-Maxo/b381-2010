//---------------------------------------------------------------------------

#ifndef UNewExpH
#define UNewExpH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "RzButton.hpp"
//---------------------------------------------------------------------------
class TNewExp : public TForm
{
__published:	// IDE-managed Components
        TEdit *EditName;
	TRzBitBtn *RzBitBtn1;
	TRzBitBtn *RzBitBtn2;
	void __fastcall FormKeyPress(TObject *Sender, wchar_t &Key);
	void __fastcall FormShortCut(TWMKey &Msg, bool &Handled);
private:	// User declarations
public:		// User declarations
        __fastcall TNewExp(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TNewExp *NewExp;
//---------------------------------------------------------------------------
#endif
