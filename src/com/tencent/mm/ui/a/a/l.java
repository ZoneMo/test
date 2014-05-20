package com.tencent.mm.ui.a.a;

import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;

final class l
  implements DialogInterface.OnDismissListener
{
  l(k paramk)
  {
  }

  public final void onDismiss(DialogInterface paramDialogInterface)
  {
    if ((k.a(this.haH)) && (this.haH.haF != null))
    {
      i.a(this.haH.haF).onCancel();
      this.haH.haF.dismiss();
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.a.a.l
 * JD-Core Version:    0.6.2
 */