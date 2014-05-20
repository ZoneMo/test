package com.tencent.mm.ui.account;

import android.content.Context;
import com.tencent.mm.n;
import com.tencent.mm.ui.base.bx;
import com.tencent.mm.ui.base.cc;

final class aw
  implements cc
{
  aw(int paramInt, Context paramContext)
  {
  }

  public final void a(bx parambx)
  {
    if ((0x1 & this.gqd) != 0)
      parambx.a(1, this.cGV.getString(n.buS));
    if ((0x2 & this.gqd) != 0)
      parambx.a(2, this.cGV.getString(n.buT));
    if ((0x4 & this.gqd) != 0)
      parambx.a(4, this.cGV.getString(n.buR));
    if ((0x8 & this.gqd) > 0)
      parambx.a(8, this.cGV.getString(n.byK));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.aw
 * JD-Core Version:    0.6.2
 */