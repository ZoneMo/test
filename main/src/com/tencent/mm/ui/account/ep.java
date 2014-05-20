package com.tencent.mm.ui.account;

import android.app.Activity;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.model.be;
import com.tencent.mm.modelfriend.ag;
import com.tencent.mm.plugin.a.b;

final class ep
  implements View.OnClickListener
{
  ep(MobileVerifyUIOld paramMobileVerifyUIOld, com.tencent.mm.n.x paramx)
  {
  }

  public final void onClick(View paramView)
  {
    if (MobileVerifyUIOld.q(this.gsa) != null)
    {
      MobileVerifyUIOld.q(this.gsa).dismiss();
      MobileVerifyUIOld.r(this.gsa);
    }
    Intent localIntent = new Intent();
    b.ie("R200_900_phone");
    localIntent.putExtra("regsetinfo_ticket", ((ag)this.cmw).zC());
    localIntent.putExtra("regsetinfo_user", MobileVerifyUIOld.m(this.gsa));
    localIntent.putExtra("regsetinfo_ismobile", 1);
    localIntent.putExtra("regsetinfo_isForce", true);
    localIntent.putExtra("regsetinfo_NextControl", ((ag)this.cmw).zE());
    localIntent.setClass(this.gsa, RegSetInfoUI.class);
    this.gsa.aal().startActivity(localIntent);
    if (MobileVerifyUIOld.o(this.gsa) == 0)
      b.jdMethod_if(be.uv() + "," + this.gsa.getClass().getName() + ",R200_600," + be.ds("R200_600") + ",2");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.ep
 * JD-Core Version:    0.6.2
 */