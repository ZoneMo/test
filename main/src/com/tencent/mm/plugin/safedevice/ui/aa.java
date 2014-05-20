package com.tencent.mm.plugin.safedevice.ui;

import android.text.Editable;
import android.text.TextWatcher;
import com.tencent.mm.sdk.platformtools.cj;

final class aa
  implements TextWatcher
{
  aa(SecurityAccountVerifyUI paramSecurityAccountVerifyUI)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
    if ((paramEditable != null) && (!cj.hX(paramEditable.toString())));
    for (boolean bool = true; ; bool = false)
    {
      this.eaJ.dg(bool);
      return;
    }
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.safedevice.ui.aa
 * JD-Core Version:    0.6.2
 */