package com.tencent.mm.ui.c;

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
    if ((k.a(this.hsn)) && (this.hsn.hsm != null))
    {
      h.a(this.hsn.hsm).onCancel();
      this.hsn.hsm.dismiss();
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.c.l
 * JD-Core Version:    0.6.2
 */