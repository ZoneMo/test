package com.tencent.mm.ui.account;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.Button;
import android.widget.EditText;

final class cd
  implements TextWatcher
{
  cd(LoginHistoryUI paramLoginHistoryUI)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
    if (LoginHistoryUI.c(this.grc).getText().toString().length() > 0)
    {
      LoginHistoryUI.d(this.grc).setEnabled(true);
      return;
    }
    LoginHistoryUI.d(this.grc).setEnabled(false);
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.cd
 * JD-Core Version:    0.6.2
 */