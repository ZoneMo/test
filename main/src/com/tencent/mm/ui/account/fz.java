package com.tencent.mm.ui.account;

import android.text.Editable;
import android.text.TextWatcher;

final class fz
  implements TextWatcher
{
  fz(RegByEmailUI paramRegByEmailUI)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
    RegByEmailUI.b(this.gsr);
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.fz
 * JD-Core Version:    0.6.2
 */