package com.tencent.mm.model;

final class dk extends dq
{
  dk(ct paramct)
  {
    super(paramct, (byte)0);
  }

  public final void a(cr paramcr, Object[] paramArrayOfObject)
  {
    paramcr.cjM = paramArrayOfObject[0];
  }

  public final boolean a(cr paramcr)
  {
    if ((System.currentTimeMillis() - paramcr.cjN > 3600000L) && (paramcr.cjM.length() > 0))
    {
      ct.e(paramcr.key, paramcr.cjM);
      paramcr.cjM = "";
      paramcr.cjN = System.currentTimeMillis();
      return true;
    }
    return false;
  }

  public final cr b(int paramInt, Object[] paramArrayOfObject)
  {
    cr localcr = new cr();
    localcr.key = paramInt;
    localcr.cjM = paramArrayOfObject[0];
    localcr.cjN = 0L;
    return localcr;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.model.dk
 * JD-Core Version:    0.6.2
 */