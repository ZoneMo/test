package com.tencent.mm.ui.account.mobile;

import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;

final class bf
  implements DialogInterface.OnDismissListener
{
  bf(MobileLoginOrForceReg paramMobileLoginOrForceReg)
  {
  }

  public final void onDismiss(DialogInterface paramDialogInterface)
  {
    MobileLoginOrForceReg.n(this.gwx);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.mobile.bf
 * JD-Core Version:    0.6.2
 */