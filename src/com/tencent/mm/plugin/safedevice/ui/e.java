package com.tencent.mm.plugin.safedevice.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.plugin.safedevice.a.b;

final class e
  implements DialogInterface.OnCancelListener
{
  e(d paramd, b paramb)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    be.uA().c(this.eaf);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.safedevice.ui.e
 * JD-Core Version:    0.6.2
 */