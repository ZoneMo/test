package com.tencent.mm.ui.base;

import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnKeyListener;
import android.widget.EditText;

public final class af
  implements TextWatcher, View.OnKeyListener
{
  private int K = 0;
  private String eBS;
  private ah gyV;
  private ag gyW;
  private ai gyX;
  private EditText gyY;
  private int gyZ = 4;

  public af(EditText paramEditText)
  {
    this.gyY = paramEditText;
  }

  public final void a(ag paramag)
  {
    this.gyW = paramag;
  }

  public final void a(ah paramah)
  {
    this.gyV = paramah;
  }

  public final void afterTextChanged(Editable paramEditable)
  {
    int i = 0;
    this.eBS = paramEditable.toString();
    String str = "";
    if (this.gyX != null)
      this.gyX.aGL();
    int j = 0;
    while (i < this.eBS.length())
    {
      j++;
      if (j > this.gyZ)
        break;
      str = str + this.eBS.charAt(i);
      i++;
    }
    if (j > this.gyZ)
    {
      this.gyY.setText(str);
      this.gyY.setSelection(str.length());
    }
    if ((j >= this.gyZ) && (this.gyV != null))
      this.gyV.mV(this.K);
  }

  public final void b(ai paramai)
  {
    this.gyX = paramai;
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void mT(int paramInt)
  {
    this.gyZ = paramInt;
  }

  public final boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 67) && (this.gyY.getText().toString().trim().length() == 0) && (this.gyW != null))
      this.gyW.mU(this.K);
    return false;
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void setIndex(int paramInt)
  {
    this.K = paramInt;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.af
 * JD-Core Version:    0.6.2
 */