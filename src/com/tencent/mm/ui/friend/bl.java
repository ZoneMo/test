package com.tencent.mm.ui.friend;

import com.tencent.mm.ui.base.bx;
import com.tencent.mm.ui.base.cc;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

final class bl
  implements cc
{
  bl(bi parambi, HashMap paramHashMap)
  {
  }

  public final void a(bx parambx)
  {
    Iterator localIterator = this.hbG.keySet().iterator();
    while (localIterator.hasNext())
      parambx.add((String)localIterator.next());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.friend.bl
 * JD-Core Version:    0.6.2
 */