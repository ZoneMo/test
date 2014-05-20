package com.tencent.mm.n;

import junit.framework.Assert;

public final class i
{
  private static h clM;

  public static void a(h paramh)
  {
    clM = paramh;
  }

  public static h wC()
  {
    Assert.assertNotNull("IMMCore.Factory not initialized", clM);
    return clM;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.n.i
 * JD-Core Version:    0.6.2
 */