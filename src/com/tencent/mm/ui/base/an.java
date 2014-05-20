package com.tencent.mm.ui.base;

import android.text.Editable;
import android.text.TextWatcher;

final class an
  implements TextWatcher
{
  an(MMClearEditText paramMMClearEditText)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    MMClearEditText.b(this.gzk);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.an
 * JD-Core Version:    0.6.2
 */