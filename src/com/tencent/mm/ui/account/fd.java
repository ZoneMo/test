package com.tencent.mm.ui.account;

import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.n;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.x.b;

final class fd
  implements View.OnClickListener
{
  fd(MobileVerifyUIOld paramMobileVerifyUIOld)
  {
  }

  public final void onClick(View paramView)
  {
    if (MobileVerifyUIOld.a(this.gsa) == 3)
    {
      if (MobileVerifyUIOld.g(this.gsa))
      {
        MobileVerifyUIOld.k(this.gsa);
        MobileVerifyUIOld.l(this.gsa);
      }
    }
    else
      return;
    if (b.fZ(MobileVerifyUIOld.m(this.gsa)))
    {
      String[] arrayOfString2;
      if (MobileVerifyUIOld.n(this.gsa))
      {
        arrayOfString2 = new String[3];
        arrayOfString2[0] = this.gsa.getString(n.brN);
        arrayOfString2[1] = this.gsa.getString(n.bfE);
        arrayOfString2[2] = this.gsa.getString(n.bry);
      }
      while (true)
      {
        h.b(this.gsa, null, arrayOfString2, null, new fe(this));
        return;
        arrayOfString2 = new String[2];
        arrayOfString2[0] = this.gsa.getString(n.brN);
        arrayOfString2[1] = this.gsa.getString(n.bfE);
      }
    }
    String[] arrayOfString1 = new String[1];
    arrayOfString1[0] = this.gsa.getResources().getString(n.brN);
    h.b(this.gsa, null, arrayOfString1, null, new ff(this));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.fd
 * JD-Core Version:    0.6.2
 */