package com.tencent.mm.storage;

import com.tencent.mm.am.a;
import com.tencent.mm.protocal.a.ol;
import com.tencent.mm.protocal.a.rw;
import com.tencent.mm.sdk.platformtools.cj;

@Deprecated
public final class bp extends bz
{
  private ol giP = new ol();

  public bp(int paramInt1, int paramInt2, String paramString1, String paramString2)
  {
    super(arrayOfObject);
    this.giP.fzo = paramInt1;
    this.giP.fzr = paramInt2;
    this.giP.fzs = new rw().sn(cj.hW(paramString1));
    this.giP.fzt = new rw().sn(cj.hW(paramString2));
  }

  public final a aDb()
  {
    return this.giP;
  }

  public final int getCmdId()
  {
    return 6;
  }

  public final int zO()
  {
    return 103;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.storage.bp
 * JD-Core Version:    0.6.2
 */