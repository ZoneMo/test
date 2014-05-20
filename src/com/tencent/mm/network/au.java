package com.tencent.mm.network;

import com.tencent.mm.sdk.platformtools.ce;

final class au extends ce
{
  au(ao paramao, Object paramObject, String[] paramArrayOfString1, int[] paramArrayOfInt1, int paramInt1, String[] paramArrayOfString2, int[] paramArrayOfInt2, int paramInt2, boolean paramBoolean, String paramString1, String paramString2)
  {
    super(3000L, paramObject);
  }

  public final Object run()
  {
    Java2C.saveAuthIPs(this.cEM, this.cEN, this.cEO, this.cEP, this.cEQ, this.cER);
    Java2C.onIDCChange(this.cES, this.cET, this.cEU);
    return null;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.network.au
 * JD-Core Version:    0.6.2
 */