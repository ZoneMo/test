package com.tencent.mm.model;

import com.tencent.mm.sdk.platformtools.cj;

final class df extends dq
{
  df(ct paramct)
  {
    super(paramct, (byte)0);
  }

  public final boolean a(cr paramcr)
  {
    boolean bool1 = System.currentTimeMillis() - paramcr.cjN < 3600000L;
    boolean bool2 = false;
    if (bool1)
    {
      int i = cj.getInt(paramcr.cjM, 0);
      bool2 = false;
      if (i > 0)
      {
        ct.e(23, paramcr.cjM + "_43");
        paramcr.cjM = "0";
        paramcr.cjN = System.currentTimeMillis();
        bool2 = true;
      }
    }
    return bool2;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.model.df
 * JD-Core Version:    0.6.2
 */