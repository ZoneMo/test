package com.tencent.mm.ui.base;

import java.util.Iterator;
import java.util.Set;

final class cu
  implements cz
{
  public final void a(MMSlideDelView paramMMSlideDelView, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      eFm.add(paramMMSlideDelView);
      return;
    }
    eFm.remove(paramMMSlideDelView);
  }

  public final boolean aii()
  {
    return eFm.size() > 0;
  }

  public final void aij()
  {
    Iterator localIterator = eFm.iterator();
    while (localIterator.hasNext())
    {
      MMSlideDelView localMMSlideDelView = (MMSlideDelView)localIterator.next();
      if (localMMSlideDelView != null)
        localMMSlideDelView.aHv();
    }
    eFm.clear();
  }

  public final void aik()
  {
    Iterator localIterator = eFm.iterator();
    while (localIterator.hasNext())
    {
      MMSlideDelView localMMSlideDelView = (MMSlideDelView)localIterator.next();
      if (localMMSlideDelView != null)
        localMMSlideDelView.aHu();
    }
    eFm.clear();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.cu
 * JD-Core Version:    0.6.2
 */