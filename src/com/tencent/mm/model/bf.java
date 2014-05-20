package com.tencent.mm.model;

import com.tencent.mm.network.ag;
import com.tencent.mm.network.ah;
import java.util.HashSet;
import java.util.Iterator;

final class bf extends ah
{
  bf(be parambe)
  {
  }

  public final void ct(int paramInt)
  {
    Iterator localIterator = be.a(this.ciN).iterator();
    while (localIterator.hasNext())
      ((ag)localIterator.next()).ct(paramInt);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.model.bf
 * JD-Core Version:    0.6.2
 */