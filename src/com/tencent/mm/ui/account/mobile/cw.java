package com.tencent.mm.ui.account.mobile;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.model.be;
import com.tencent.mm.modelsimple.ad;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.x;
import com.tencent.mm.ui.applet.SecurityImage;
import com.tencent.mm.ui.base.h;

final class cw
  implements DialogInterface.OnClickListener
{
  cw(cn paramcn, String paramString1, String paramString2, x paramx, Boolean paramBoolean)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    be.uA().a(126, this.gwJ);
    ad localad = new ad("", this.gwy, this.gwz, 0, "", cn.a(this.gwJ).bTR, cn.b(this.gwJ), cn.a(this.gwJ).cxC, "", ((ad)this.cmw).zS(), cn.a(this.gwJ).gof.aGu(), true, this.gwA.booleanValue());
    be.uA().d(localad);
    MobileVerifyUI localMobileVerifyUI1 = cn.a(this.gwJ);
    MobileVerifyUI localMobileVerifyUI2 = cn.a(this.gwJ);
    cn.a(this.gwJ).getString(n.ber);
    localMobileVerifyUI1.cIr = h.a(localMobileVerifyUI2, cn.a(this.gwJ).getString(n.bvS), true, new cx(this, localad));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.mobile.cw
 * JD-Core Version:    0.6.2
 */