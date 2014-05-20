package com.tencent.mm.n;

import java.util.HashMap;

public final class l
{
  private static HashMap clO = new HashMap();

  public static void S(Object paramObject)
  {
    clO.remove(paramObject);
  }

  public static j T(Object paramObject)
  {
    return (j)clO.get(paramObject);
  }

  public static void a(Object paramObject, j paramj)
  {
    clO.put(paramObject, paramj);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.n.l
 * JD-Core Version:    0.6.2
 */