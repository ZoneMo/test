package com.tencent.mm.ui.base;

import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;

final class r
  implements DialogInterface.OnDismissListener
{
  public final void onDismiss(DialogInterface paramDialogInterface)
  {
    if (this.gyw != null)
      this.gyw.onDismiss(paramDialogInterface);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.r
 * JD-Core Version:    0.6.2
 */