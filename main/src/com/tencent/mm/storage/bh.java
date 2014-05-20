package com.tencent.mm.storage;

import com.tencent.mm.am.a;
import com.tencent.mm.protocal.a.lu;
import com.tencent.mm.sdk.platformtools.cj;

@Deprecated
public final class bh extends bz
{
  private lu giH = new lu();

  public bh(String paramString, int paramInt)
  {
    super(arrayOfObject);
    this.giH.eBo = cj.hW(paramString);
    this.giH.fNb = paramInt;
  }

  public final a aDb()
  {
    return this.giH;
  }

  public final int getCmdId()
  {
    return 22;
  }

  public final int zO()
  {
    return 125;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.storage.bh
 * JD-Core Version:    0.6.2
 */