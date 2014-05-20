package com.tencent.mm.storage;

import com.tencent.mm.am.a;
import com.tencent.mm.protocal.a.ed;
import com.tencent.mm.protocal.a.ee;
import com.tencent.mm.protocal.a.od;

@Deprecated
public final class bo extends bz
{
  private od giO = new od();

  public bo()
  {
    this(false, 22, 8);
  }

  public bo(boolean paramBoolean, int paramInt1, int paramInt2)
  {
    super(arrayOfObject);
    ed localed = new ed();
    if (paramBoolean);
    for (int j = i; ; j = 0)
    {
      localed.fES = j;
      if (paramBoolean)
        i = 0;
      localed.fEU = i;
      ee localee = new ee();
      localee.fEW = paramInt1;
      localee.fDR = paramInt2;
      localed.fET = localee;
      localee.fEW = 0;
      localee.fDR = 0;
      localed.fEV = localee;
      this.giO.fPq = localed;
      return;
    }
  }

  public final a aDb()
  {
    return this.giO;
  }

  public final int getCmdId()
  {
    return 31;
  }

  public final int zO()
  {
    return 119;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.storage.bo
 * JD-Core Version:    0.6.2
 */