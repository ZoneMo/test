package com.tencent.mm.ui.account;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import com.tencent.mm.sdk.platformtools.cj;

final class ez
  implements TextWatcher
{
  ez(MobileVerifyUIOld paramMobileVerifyUIOld)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
    if (cj.hX(MobileVerifyUIOld.j(this.gsa).getText().toString()))
    {
      MobileVerifyUIOld.j(this.gsa).setTextSize(15.0F);
      MobileVerifyUIOld.j(this.gsa).setGravity(16);
    }
    while ((MobileVerifyUIOld.j(this.gsa).getText() != null) && (MobileVerifyUIOld.j(this.gsa).getText().toString().length() > 0))
    {
      this.gsa.dg(true);
      return;
      MobileVerifyUIOld.j(this.gsa).setTextSize(24.0F);
      MobileVerifyUIOld.j(this.gsa).setGravity(16);
    }
    this.gsa.dg(false);
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.ez
 * JD-Core Version:    0.6.2
 */