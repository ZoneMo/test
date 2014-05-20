package com.tencent.mm.ui.base.preference;

import android.text.Editable;
import android.text.TextWatcher;

final class a
  implements TextWatcher
{
  a(AutoHintSizeEditText paramAutoHintSizeEditText)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
    AutoHintSizeEditText.a(this.gFI, paramEditable, this.gFI.getHint(), this.gFI.getWidth() - this.gFI.getPaddingLeft() - this.gFI.getPaddingRight());
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.preference.a
 * JD-Core Version:    0.6.2
 */