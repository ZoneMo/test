package com.tencent.mm.plugin.wallet.ui;

import android.app.Activity;
import android.view.inputmethod.InputMethodManager;
import com.tenpay.android.wechat.MyKeyboardWindow;

final class z
  implements Runnable
{
  z(x paramx)
  {
  }

  public final void run()
  {
    if (WalletBaseUI.h(this.fem.feg).isShown())
      WalletBaseUI.h(this.fem.feg).setVisibility(8);
    ((InputMethodManager)this.fem.feg.aal().getSystemService("input_method")).showSoftInput(this.fem.fel, 0);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.ui.z
 * JD-Core Version:    0.6.2
 */