package com.tencent.mm.ui.base.preference;

import android.widget.RadioButton;

final class c
{
  int id;
  CharSequence text;

  public c(CharSequence paramCharSequence, int paramInt)
  {
    this.text = paramCharSequence;
    this.id = paramInt;
  }

  public final void a(RadioButton paramRadioButton)
  {
    paramRadioButton.setText(this.text);
    paramRadioButton.setId(this.id);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.preference.c
 * JD-Core Version:    0.6.2
 */