package com.tencent.mm.ui.account.mobile;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.model.be;
import com.tencent.mm.modelsimple.ad;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.x;
import com.tencent.mm.ui.applet.SecurityImage;
import com.tencent.mm.ui.base.h;

final class bu
  implements DialogInterface.OnClickListener
{
  bu(MobileLoginOrForceReg paramMobileLoginOrForceReg, String paramString1, String paramString2, x paramx, Boolean paramBoolean)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ad localad = new ad("", this.gwy, this.gwz, 0, "", MobileLoginOrForceReg.e(this.gwx), MobileLoginOrForceReg.h(this.gwx), MobileLoginOrForceReg.l(this.gwx), "", ((ad)this.cmw).zS(), MobileLoginOrForceReg.m(this.gwx).aGu(), true, this.gwA.booleanValue());
    be.uA().d(localad);
    MobileLoginOrForceReg localMobileLoginOrForceReg = this.gwx;
    Activity localActivity = this.gwx.aal();
    this.gwx.getString(n.ber);
    localMobileLoginOrForceReg.cIr = h.a(localActivity, this.gwx.getString(n.bvS), true, new bv(this, localad));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.mobile.bu
 * JD-Core Version:    0.6.2
 */