package com.tencent.mm.plugin.wallet.ui;

import android.app.Activity;
import android.os.Handler;
import android.view.View;
import android.view.View.OnFocusChangeListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;

final class x
  implements View.OnFocusChangeListener
{
  x(WalletBaseUI paramWalletBaseUI, boolean paramBoolean, int paramInt, EditText paramEditText)
  {
  }

  public final void onFocusChange(View paramView, boolean paramBoolean)
  {
    if ((paramView.isFocused()) && (!this.fej))
    {
      ((InputMethodManager)this.feg.aal().getSystemService("input_method")).hideSoftInputFromWindow(paramView.getWindowToken(), 0);
      new Handler().postDelayed(new y(this, paramView), 500L);
      return;
    }
    new Handler().postDelayed(new z(this), 200L);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.ui.x
 * JD-Core Version:    0.6.2
 */