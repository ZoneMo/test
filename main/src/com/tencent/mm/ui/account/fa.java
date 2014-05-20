package com.tencent.mm.ui.account;

import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.n;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.x.b;

final class fa
  implements View.OnClickListener
{
  fa(MobileVerifyUIOld paramMobileVerifyUIOld)
  {
  }

  public final void onClick(View paramView)
  {
    if (MobileVerifyUIOld.g(this.gsa))
    {
      MobileVerifyUIOld.k(this.gsa);
      MobileVerifyUIOld.l(this.gsa);
      return;
    }
    if (b.fZ(MobileVerifyUIOld.m(this.gsa)))
    {
      boolean bool;
      Object localObject;
      if ((cj.tc("2013-11-30 00:00:00") < 0L) && (cj.azW() % 2 == 0))
      {
        bool = true;
        if (!MobileVerifyUIOld.n(this.gsa))
          break label225;
        if (!bool)
          break label170;
        String[] arrayOfString4 = new String[4];
        arrayOfString4[0] = this.gsa.getString(n.brN);
        arrayOfString4[1] = this.gsa.getString(n.bfE);
        arrayOfString4[2] = this.gsa.getString(n.bry);
        arrayOfString4[3] = this.gsa.getString(n.bvj);
        localObject = arrayOfString4;
      }
      while (true)
      {
        h.b(this.gsa, null, (String[])localObject, null, new fb(this, bool));
        return;
        bool = false;
        break;
        label170: String[] arrayOfString3 = new String[3];
        arrayOfString3[0] = this.gsa.getString(n.brN);
        arrayOfString3[1] = this.gsa.getString(n.bfE);
        arrayOfString3[2] = this.gsa.getString(n.bry);
        localObject = arrayOfString3;
        continue;
        label225: String[] arrayOfString2 = new String[2];
        arrayOfString2[0] = this.gsa.getString(n.brN);
        arrayOfString2[1] = this.gsa.getString(n.bfE);
        localObject = arrayOfString2;
      }
    }
    String[] arrayOfString1 = new String[1];
    arrayOfString1[0] = this.gsa.getResources().getString(n.brN);
    h.b(this.gsa, null, arrayOfString1, null, new fc(this));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.fa
 * JD-Core Version:    0.6.2
 */