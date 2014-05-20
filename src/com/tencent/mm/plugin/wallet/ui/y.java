package com.tencent.mm.plugin.wallet.ui;

import android.app.Activity;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import com.tenpay.android.wechat.MyKeyboardWindow;

final class y
  implements Runnable
{
  y(x paramx, View paramView)
  {
  }

  public final void run()
  {
    if (!WalletBaseUI.h(this.fem.feg).isShown())
      WalletBaseUI.h(this.fem.feg).setVisibility(0);
    if (1 == this.fem.fek)
      WalletBaseUI.h(this.fem.feg).setXMode(1);
    while (true)
    {
      WalletBaseUI.h(this.fem.feg).setInputEditText((EditText)this.dXr);
      ((InputMethodManager)this.fem.feg.aal().getSystemService("input_method")).hideSoftInputFromWindow(this.dXr.getWindowToken(), 0);
      return;
      WalletBaseUI.h(this.fem.feg).setXMode(0);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.ui.y
 * JD-Core Version:    0.6.2
 */