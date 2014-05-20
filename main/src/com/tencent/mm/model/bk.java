package com.tencent.mm.model;

import com.tencent.mm.protocal.bd;
import com.tencent.mm.protocal.bg;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.e;

final class bk extends bg
{
  private byte[] ciQ;

  public final int o(byte[] paramArrayOfByte)
  {
    com.tencent.mm.protocal.be localbe = new com.tencent.mm.protocal.be();
    try
    {
      localbe.s(paramArrayOfByte);
      long l = localbe.awT();
      return (int)l;
    }
    catch (Exception localException)
    {
    }
    return 0;
  }

  public final byte[] uL()
  {
    if (be.uz() == null)
      return null;
    if (!be.se())
      return null;
    bd localbd = new bd();
    localbd.bQ(be.uz().sd());
    localbd.az(cj.ib((String)be.uz().sr().get(8195)));
    try
    {
      byte[] arrayOfByte = localbd.wz();
      this.ciQ = localbd.awS();
      return arrayOfByte;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public final byte[] uM()
  {
    return this.ciQ;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.model.bk
 * JD-Core Version:    0.6.2
 */