package com.tencent.mm.plugin.safedevice.ui;

import android.app.Activity;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;
import com.tencent.mm.model.be;
import com.tencent.mm.modelfriend.ag;
import com.tencent.mm.n;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.ui.base.h;

final class ac
  implements View.OnClickListener
{
  ac(SecurityAccountVerifyUI paramSecurityAccountVerifyUI)
  {
  }

  public final void onClick(View paramView)
  {
    aa.v("MicroMsg.SecurityAccountVerifyUI", "on resend verify code button click");
    SecurityAccountVerifyUI.b(this.eaJ).setVisibility(8);
    SecurityAccountVerifyUI.a(this.eaJ).setTag(Integer.valueOf(60));
    SecurityAccountVerifyUI.c(this.eaJ).azn();
    SecurityAccountVerifyUI.c(this.eaJ).bO(1000L);
    ag localag = new ag(SecurityAccountVerifyUI.d(this.eaJ), 10, "", "", SecurityAccountVerifyUI.e(this.eaJ));
    be.uA().d(localag);
    SecurityAccountVerifyUI localSecurityAccountVerifyUI = this.eaJ;
    Activity localActivity = this.eaJ.aal();
    this.eaJ.getString(n.ber);
    SecurityAccountVerifyUI.a(localSecurityAccountVerifyUI, h.a(localActivity, this.eaJ.getString(n.bwS), true, new ad(this, localag)));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.safedevice.ui.ac
 * JD-Core Version:    0.6.2
 */