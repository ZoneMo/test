package com.tencent.mm.model;

import com.tencent.mm.sdk.platformtools.cj;

abstract class dq
{
  private dq(ct paramct)
  {
  }

  public void a(cr paramcr, Object[] paramArrayOfObject)
  {
    int i = 1;
    if ((paramArrayOfObject != null) && (paramArrayOfObject.length > 0))
      i = cj.h(paramArrayOfObject[0], i);
    paramcr.cjM = (i + cj.getInt(paramcr.cjM, 0));
  }

  public abstract boolean a(cr paramcr);

  public cr b(int paramInt, Object[] paramArrayOfObject)
  {
    int i = 1;
    if ((paramArrayOfObject != null) && (paramArrayOfObject.length > 0))
      i = cj.h(paramArrayOfObject[0], i);
    cr localcr = new cr();
    localcr.key = paramInt;
    localcr.cjM = String.valueOf(i);
    localcr.cjN = 0L;
    return localcr;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.model.dq
 * JD-Core Version:    0.6.2
 */