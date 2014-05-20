package com.tencent.mm.ui.account;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.model.be;
import com.tencent.mm.modelfriend.ag;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.plugin.a.b;
import com.tencent.mm.ui.base.h;

final class hj
  implements DialogInterface.OnClickListener
{
  hj(RegByMobileRegUI paramRegByMobileRegUI, int paramInt)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    RegByMobileRegUI localRegByMobileRegUI1 = this.gsP;
    RegByMobileRegUI localRegByMobileRegUI2 = this.gsP;
    this.gsP.getString(n.ber);
    RegByMobileRegUI.a(localRegByMobileRegUI1, h.a(localRegByMobileRegUI2, this.gsP.getString(n.bvv), true, new hk(this)));
    String str = RegByMobileRegUI.f(this.gsP) + RegByMobileRegUI.g(this.gsP);
    int i;
    if (this.cmz == -3)
    {
      i = 8;
      ag localag = new ag(str, i, "", 0, "");
      be.uA().d(localag);
      if (RegByMobileRegUI.m(this.gsP) != 0)
        break label197;
      b.b(true, be.uv() + "," + this.gsP.getClass().getName() + ",R200_200," + be.ds("R200_200") + ",2");
    }
    label197: 
    while (RegByMobileRegUI.m(this.gsP) != 2)
    {
      return;
      i = 14;
      break;
    }
    b.b(true, be.uv() + "," + this.gsP.getClass().getName() + ",F200_200," + be.ds("F200_200") + ",2");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.hj
 * JD-Core Version:    0.6.2
 */