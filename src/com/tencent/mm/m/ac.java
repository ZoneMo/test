package com.tencent.mm.m;

import com.tencent.mm.model.be;
import java.util.List;

public final class ac
{
  private static List clq = null;
  private static int clr = 0;
  private static ad cls = new ad(new ae());

  public static void b(Runnable paramRunnable)
  {
    if (!be.se());
    List localList;
    do
    {
      return;
      localList = af.wm().wb();
      clq = localList;
    }
    while ((localList == null) || (clq.size() <= 0));
    cls.c(paramRunnable);
    cls.bO(10L);
  }

  public static void wg()
  {
    clr = 0;
    cls.azn();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.m.ac
 * JD-Core Version:    0.6.2
 */