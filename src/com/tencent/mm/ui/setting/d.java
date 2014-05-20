package com.tencent.mm.ui.setting;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.TextView;

final class d
  implements TextWatcher
{
  private int gTQ = 30;

  private d(EditSignatureUI paramEditSignatureUI)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
    this.gTQ = EditSignatureUI.v(paramEditable);
    if (this.gTQ < 0)
      this.gTQ = 0;
    if (EditSignatureUI.a(this.hdM) != null)
      EditSignatureUI.a(this.hdM).setText(this.gTQ);
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    this.hdM.dg(true);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.d
 * JD-Core Version:    0.6.2
 */