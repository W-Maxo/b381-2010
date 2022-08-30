//---------------------------------------------------------------------------

#ifndef NewSerH
#define NewSerH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "RzButton.hpp"
//---------------------------------------------------------------------------
class TNewSerForm : public TForm
{
__published:	// IDE-managed Components
	TEdit *EditName;
	TLabel *LNameSeries;
	TRzBitBtn *RzBitBtn2;
	TRzBitBtn *RzBitBtn1;
	void __fastcall FormShortCut(TWMKey &Msg, bool &Handled);
private:	// User declarations
public:		// User declarations
	__fastcall TNewSerForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TNewSerForm *NewSerForm;
//---------------------------------------------------------------------------
#endif
