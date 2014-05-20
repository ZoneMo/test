package com.tencent.mm.w;

import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import java.util.LinkedList;

final class p
  implements ad
{
  p(o paramo)
  {
  }

  public final void AS()
  {
    if (o.a(this.ctK).size() > 0)
    {
      y localy = (y)o.a(this.ctK).poll();
      be.uA().d(localy);
      o.a(this.ctK, true);
      return;
    }
    o.a(this.ctK, false);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.w.p
 * JD-Core Version:    0.6.2
 */