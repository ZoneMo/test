package com.tencent.mm.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;

final class w
  implements DialogInterface.OnCancelListener
{
  w(ExposeUI paramExposeUI)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    be.uA().c(ExposeUI.d(this.gln));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.w
 * JD-Core Version:    0.6.2
 */