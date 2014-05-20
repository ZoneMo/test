package com.tencent.mm.ui.account.mobile;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.Button;
import android.widget.EditText;
import com.tencent.mm.sdk.platformtools.cj;

final class dh
  implements TextWatcher
{
  dh(MobileVerifyUI paramMobileVerifyUI)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
    if (cj.hX(this.gwT.grF.getText().toString()))
    {
      this.gwT.grF.setTextSize(15.0F);
      this.gwT.grF.setGravity(16);
    }
    while ((this.gwT.grF.getText() != null) && (this.gwT.grF.getText().toString().length() > 0))
    {
      this.gwT.dLL.setEnabled(true);
      return;
      this.gwT.grF.setTextSize(24.0F);
      this.gwT.grF.setGravity(16);
    }
    this.gwT.dLL.setEnabled(false);
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.mobile.dh
 * JD-Core Version:    0.6.2
 */