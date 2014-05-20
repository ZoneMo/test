package com.tencent.mm.model;

import com.tencent.mm.sdk.platformtools.aa;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public final class dv
{
  private boolean ckb = false;
  private Set ckc = new HashSet();

  public final boolean a(dw paramdw)
  {
    if (this.ckb)
    {
      aa.e("MicroMsg.UninitForUEH", "add , is running , forbid add");
      return false;
    }
    return this.ckc.add(paramdw);
  }

  public final boolean b(dw paramdw)
  {
    if (this.ckb)
    {
      aa.e("MicroMsg.UninitForUEH", "remove , is running , forbid remove");
      return false;
    }
    return this.ckc.remove(paramdw);
  }

  final void run()
  {
    this.ckb = true;
    Iterator localIterator = this.ckc.iterator();
    while (localIterator.hasNext())
    {
      dw localdw = (dw)localIterator.next();
      if (localdw != null)
        localdw.vH();
    }
    this.ckb = false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.model.dv
 * JD-Core Version:    0.6.2
 */