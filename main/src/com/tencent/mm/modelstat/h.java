package com.tencent.mm.modelstat;

import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.platformtools.aq;
import com.tencent.mm.sdk.platformtools.cj;

final class h
  implements Runnable
{
  h(g paramg, int paramInt, String paramString)
  {
  }

  public final void run()
  {
    if ((this.czl > 0) && (!cj.hX(this.czm)))
    {
      if (this.czl != 1)
        break label59;
      aq.Q(be.uz().sX() + this.czm, v.th());
    }
    label59: 
    do
    {
      return;
      if (this.czl == 2)
      {
        aq.Q(be.uz().sW() + this.czm, v.th());
        return;
      }
    }
    while (this.czl != 3);
    aq.Q(this.czm, v.th());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelstat.h
 * JD-Core Version:    0.6.2
 */