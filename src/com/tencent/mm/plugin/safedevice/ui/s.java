package com.tencent.mm.plugin.safedevice.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.plugin.safedevice.a.a;

final class s
  implements DialogInterface.OnCancelListener
{
  s(r paramr, a parama)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    be.uA().c(this.eav);
    SafeDeviceListPreference.c(this.eaw.eau);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.safedevice.ui.s
 * JD-Core Version:    0.6.2
 */