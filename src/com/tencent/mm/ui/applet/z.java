package com.tencent.mm.ui.applet;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;

final class z
  implements DialogInterface.OnCancelListener
{
  z(y paramy)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    be.uA().c(x.b(this.gxQ.gxP));
    x.a(this.gxQ.gxP, null);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.applet.z
 * JD-Core Version:    0.6.2
 */