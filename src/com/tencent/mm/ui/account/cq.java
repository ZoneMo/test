package com.tencent.mm.ui.account;

import android.text.Editable;
import android.text.TextWatcher;

final class cq
  implements TextWatcher
{
  cq(LoginIndepPass paramLoginIndepPass)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
    LoginIndepPass.b(this.grj);
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.cq
 * JD-Core Version:    0.6.2
 */