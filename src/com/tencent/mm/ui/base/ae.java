package com.tencent.mm.ui.base;

import android.text.Editable;
import android.text.TextWatcher;

final class ae
  implements TextWatcher
{
  private String gyR;

  public ae(MMAutoCompleteTextView paramMMAutoCompleteTextView, String paramString)
  {
    this.gyR = paramString;
  }

  public final void afterTextChanged(Editable paramEditable)
  {
    if (paramEditable.toString().endsWith(this.gyR))
      this.gyQ.showDropDown();
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.ae
 * JD-Core Version:    0.6.2
 */