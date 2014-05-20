package com.tencent.mm.ui.setting;

import android.text.Editable;
import android.text.TextWatcher;

final class da
  implements TextWatcher
{
  da(SettingsModifyNameUI paramSettingsModifyNameUI)
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
    this.hfB.dg(true);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.da
 * JD-Core Version:    0.6.2
 */