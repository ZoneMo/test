package com.tencent.mm.plugin.search.model;

import com.tencent.mm.model.dw;
import com.tencent.mm.sdk.platformtools.aa;

final class ay
  implements dw
{
  ay(at paramat)
  {
  }

  public final boolean vH()
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = at.c(this.eiw);
    aa.c("MicroMsg.SubCoreSearch", "HERE UninitForUEH is called! stg:%s ", arrayOfObject);
    if (at.c(this.eiw) != null)
    {
      at.c(this.eiw).rollback();
      at.c(this.eiw).close();
    }
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.search.model.ay
 * JD-Core Version:    0.6.2
 */