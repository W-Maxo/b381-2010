//---------------------------------------------------------------------------

#ifndef AboutH
#define AboutH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ExtCtrls.hpp>
#include <pngimage.hpp>
#include "RzStatus.hpp"
#include "RzButton.hpp"
#include "AdvReflectionLabel.hpp"
//---------------------------------------------------------------------------
class TAboutForm : public TForm
{
__published:	// IDE-managed Components
	TImage *Image1;
	TRzStatusPane *RzStatusPane2;
	TRzVersionInfo *RzVersionInfo1;
	TRzBitBtn *RzBitBtn1;
	TAdvReflectionLabel *AdvReflectionLabel1;
	TRzStatusPane *RzStatusPane1;
	TRzStatusPane *RzStatusPane3;
	TRzStatusPane *RzStatusPane4;
	TRzStatusPane *RzStatusPane5;
	TRzStatusPane *RzStatusPane6;
	void __fastcall FormCreate(TObject *Sender);
	void __fastcall FormShortCut(TWMKey &Msg, bool &Handled);
private:	// User declarations
public:		// User declarations
	__fastcall TAboutForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TAboutForm *AboutForm;
//---------------------------------------------------------------------------
#endif
