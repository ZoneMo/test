package com.tencent.mm.ui.base;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;

final class q
  implements DialogInterface.OnCancelListener
{
  q(DialogInterface.OnCancelListener paramOnCancelListener, Context paramContext)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    if (this.gbN != null)
      this.gbN.onCancel(paramDialogInterface);
    ej.a(this.cGV, false, null);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.q
 * JD-Core Version:    0.6.2
 */