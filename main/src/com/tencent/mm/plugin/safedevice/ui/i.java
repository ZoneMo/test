package com.tencent.mm.plugin.safedevice.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.tencent.mm.model.be;
import com.tencent.mm.modelsimple.aa;
import com.tencent.mm.n.ac;

final class i
  implements DialogInterface.OnCancelListener
{
  i(MySafeDeviceListUI paramMySafeDeviceListUI, aa paramaa)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    be.uA().c(this.eao);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.safedevice.ui.i
 * JD-Core Version:    0.6.2
 */