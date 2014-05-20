package com.tencent.mm.plugin.wallet.pay.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import com.tencent.mm.plugin.wallet.b.h;

final class aw
  implements DialogInterface.OnClickListener
{
  aw(av paramav)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Bundle localBundle = this.fcS.fcR.aoJ();
    localBundle.putInt("key_err_code", 408);
    h.e(this.fcS.fcR, localBundle);
    this.fcS.fcR.finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.pay.ui.aw
 * JD-Core Version:    0.6.2
 */