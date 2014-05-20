package com.tencent.mm.ui.account;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class ij
  implements DialogInterface.OnClickListener
{
  ij(RegByMobileWaitingSMSUI paramRegByMobileWaitingSMSUI)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.gtp.finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.ij
 * JD-Core Version:    0.6.2
 */