package com.tencent.mm.n;

import com.tencent.mm.model.be;
import com.tencent.mm.sdk.platformtools.aa;

public final class f
{
  private static aw cin;
  private static e clL;

  public static void a(e parame, aw paramaw)
  {
    clL = parame;
    cin = paramaw;
  }

  public static Object c(int paramInt, Object paramObject)
  {
    if (clL == null);
    Object localObject;
    do
    {
      return paramObject;
      localObject = clL.cl(paramInt);
    }
    while (localObject == null);
    return localObject;
  }

  public static e wA()
  {
    if (clL == null)
    {
      aa.e("MicroMsg.IAccountStorage.Factory", "account storage not initialized");
      clL = be.uz();
    }
    return clL;
  }

  public static aw wB()
  {
    return cin;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.n.f
 * JD-Core Version:    0.6.2
 */