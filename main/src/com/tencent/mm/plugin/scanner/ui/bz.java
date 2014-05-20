package com.tencent.mm.plugin.scanner.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;

final class bz
  implements DialogInterface.OnCancelListener
{
  bz(by paramby)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    be.uA().c(bx.b(this.efI.efH));
    bx.a(this.efI.efH, null);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.ui.bz
 * JD-Core Version:    0.6.2
 */