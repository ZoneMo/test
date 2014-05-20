package com.tencent.mm.compatible.a;

import com.tencent.mm.compatible.g.i;
import com.tencent.mm.sdk.platformtools.aa;

public final class a
{
  public static boolean a(int paramInt, b paramb)
  {
    if (paramb == null)
      aa.d("MicroMsg.ApiTask", "empty task");
    while (!i.bG(paramInt))
      return false;
    paramb.run();
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.compatible.a.a
 * JD-Core Version:    0.6.2
 */