package com.tencent.mm.ui.account;

import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;

final class bx
  implements DialogInterface.OnDismissListener
{
  bx(LoginHistoryUI paramLoginHistoryUI)
  {
  }

  public final void onDismiss(DialogInterface paramDialogInterface)
  {
    LoginHistoryUI.h(this.grc);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.bx
 * JD-Core Version:    0.6.2
 */