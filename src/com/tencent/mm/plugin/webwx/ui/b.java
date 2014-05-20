package com.tencent.mm.plugin.webwx.ui;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.plugin.webwx.a.a;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.base.h;

final class b
  implements DialogInterface.OnClickListener
{
  b(WebWXLogoutUI paramWebWXLogoutUI)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    com.tencent.mm.plugin.webwx.a.c localc = new com.tencent.mm.plugin.webwx.a.c(1);
    be.uA().d(localc);
    WebWXLogoutUI localWebWXLogoutUI = this.ffb;
    Activity localActivity = this.ffb.aal();
    this.ffb.getString(2131167675);
    if (cj.hX(a.feX));
    for (String str = this.ffb.getString(2131167114); ; str = a.feX)
    {
      WebWXLogoutUI.a(localWebWXLogoutUI, h.a(localActivity, str, true, new c(this, localc)));
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.webwx.ui.b
 * JD-Core Version:    0.6.2
 */