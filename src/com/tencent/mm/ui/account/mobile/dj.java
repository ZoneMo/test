package com.tencent.mm.ui.account.mobile;

import com.tencent.mm.n;
import com.tencent.mm.ui.base.bx;
import com.tencent.mm.ui.base.cc;
import com.tencent.mm.x.b;

final class dj
  implements cc
{
  dj(di paramdi)
  {
  }

  public final void a(bx parambx)
  {
    parambx.a(0, this.gxa.gwT.getString(n.brN));
    boolean bool = b.fZ(this.gxa.gwT.bTR);
    if (bool)
      parambx.a(1, this.gxa.gwT.getString(n.bfE));
    if (MobileVerifyUI.f(this.gxa.gwT) == 2)
    {
      if (this.gxa.gwT.grV)
        parambx.a(2, this.gxa.gwT.getString(n.bvC));
      if (bool)
      {
        if (this.gxa.gwT.grU)
          parambx.a(3, this.gxa.gwT.getString(n.bry));
        parambx.a(4, this.gxa.gwT.getString(n.bvj));
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.mobile.dj
 * JD-Core Version:    0.6.2
 */