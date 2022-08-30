//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit7.h"
#include "ap.cpp"
#include "alglibinternal.cpp"
#include "alglibmisc.cpp"
#include "integration.cpp"
#include "interpolation.cpp"
#include "linalg.cpp"
#include "optimization.cpp"
#include "solvers.cpp"
#include "specialfunctions.cpp"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "Chart"
#pragma link "Series"
#pragma link "TeEngine"
#pragma link "TeeProcs"
#pragma resource "*.dfm"
#pragma "ap"

TForm7 *Form7;
//---------------------------------------------------------------------------

//using namespace alglib;

__fastcall TForm7::TForm7(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm7::Button1Click(TObject *Sender)
{
  alglib::real_1d_array x;
  alglib::real_1d_array y;
  int n;
  int i;
  alglib::spline1dinterpolant c;
  double err;
  double maxerr;

  Series1->Clear();
  Series2->Clear();

  n = 20;

  x.setlength(n);
  y.setlength(n);


  for(i = 0; i <= n-1; i++)
  {
	x(i) = alglib::pi()*i/(n-1);
	y(i) = Random(10);//sin(x(i));

	Series1->AddXY(x(i), y(i));
  }


  alglib::spline1dbuildakima(x, y, n, c);

  double Tmp;

  while (Tmp < 3.2)
  {
	Tmp=Tmp + 0.001;

	Series2->AddXY(Tmp, alglib::spline1dcalc(c, Tmp));
  }

}
//---------------------------------------------------------------------------

void __fastcall TForm7::Button2Click(TObject *Sender)
{
  double test = 0;

  while (test >= 0)
  {

	test=test+500000000;
  }

  Label1->Caption= FloatToStr(test);
}
//---------------------------------------------------------------------------

