package com.tencent.mm.plugin.webwx.ui;

import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;

final class c
  implements DialogInterface.OnCancelListener
{
  c(b paramb, com.tencent.mm.plugin.webwx.a.c paramc)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    be.uA().c(this.ffc);
    if (WebWXLogoutUI.a(this.ffd.ffb) != null)
      WebWXLogoutUI.a(this.ffd.ffb).cancel();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.webwx.ui.c
 * JD-Core Version:    0.6.2
 */