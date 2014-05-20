package com.tencent.mm.ui.chatting;

import com.tencent.mm.ui.base.bx;
import com.tencent.mm.ui.base.cc;
import java.util.Iterator;
import java.util.List;

final class lc
  implements cc
{
  lc(List paramList)
  {
  }

  public final void a(bx parambx)
  {
    Iterator localIterator = this.gRh.iterator();
    while (localIterator.hasNext())
      parambx.add((String)localIterator.next());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.lc
 * JD-Core Version:    0.6.2
 */