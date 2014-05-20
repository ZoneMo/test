package com.tencent.mm.ui.setting;

import android.text.Editable;
import android.text.TextWatcher;
import com.tencent.mm.ui.account.fq;

final class bp
  implements TextWatcher
{
  bp(SettingsAliasUI paramSettingsAliasUI)
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
    if (SettingsAliasUI.a(this.hfi).p(paramCharSequence))
    {
      this.hfi.dg(true);
      return;
    }
    this.hfi.dg(false);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.bp
 * JD-Core Version:    0.6.2
 */