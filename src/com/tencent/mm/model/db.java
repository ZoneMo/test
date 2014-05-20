package com.tencent.mm.model;

import com.tencent.mm.sdk.platformtools.cj;

final class db extends dq
{
  db(ct paramct)
  {
    super(paramct, (byte)0);
  }

  public final boolean a(cr paramcr)
  {
    boolean bool1 = System.currentTimeMillis() - paramcr.cjN < 1800000L;
    boolean bool2 = false;
    if (bool1)
    {
      int i = cj.getInt(paramcr.cjM, 0);
      bool2 = false;
      if (i > 0)
      {
        ct.e(paramcr.key, paramcr.cjM);
        paramcr.cjM = "0";
        paramcr.cjN = System.currentTimeMillis();
        bool2 = true;
      }
    }
    return bool2;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.model.db
 * JD-Core Version:    0.6.2
 */