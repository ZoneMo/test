package com.tencent.mm.booter;

import com.tencent.mm.sdk.platformtools.aa;

public final class j
{
  public static Object b(int paramInt, String paramString)
  {
    switch (paramInt)
    {
    default:
    case 1:
    case 2:
    case 4:
    case 5:
    case 6:
      try
      {
        aa.e("MicroMsg.Debugger.Resolver", "unknown type");
        break label78;
        return Integer.valueOf(paramString);
        return Long.valueOf(paramString);
        return Boolean.valueOf(paramString);
        return Float.valueOf(paramString);
        Double localDouble = Double.valueOf(paramString);
        return localDouble;
      }
      catch (Exception localException)
      {
        label78: paramString = null;
      }
    case 3:
    }
    return paramString;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.booter.j
 * JD-Core Version:    0.6.2
 */