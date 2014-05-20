package com.tencent.mm.ui.account;

import android.text.Editable;
import android.text.TextWatcher;

final class jc
  implements TextWatcher
{
  jc(RegByQQUI paramRegByQQUI)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
    RegByQQUI.a(this.gty);
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.jc
 * JD-Core Version:    0.6.2
 */