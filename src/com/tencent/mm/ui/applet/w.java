package com.tencent.mm.ui.applet;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;

final class w
  implements DialogInterface.OnCancelListener
{
  w(v paramv)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    be.uA().c(u.b(this.gxN.gxM));
    u.a(this.gxN.gxM, null);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.applet.w
 * JD-Core Version:    0.6.2
 */