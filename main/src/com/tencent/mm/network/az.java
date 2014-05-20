package com.tencent.mm.network;

import com.tencent.mm.jni.platformcomm.WakerLock;
import com.tencent.mm.protocal.f;
import com.tencent.mm.sdk.platformtools.ce;

final class az extends z
  implements ac
{
  private ao bZl;
  private WakerLock cFa;

  public az(ao paramao, WakerLock paramWakerLock)
  {
    this.bZl = paramao;
    this.cFa = paramWakerLock;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, ak paramak, byte[] paramArrayOfByte)
  {
    if ((paramak.xk().xm() != 0) || (paramInt2 != 0))
    {
      if (-102 == paramInt3)
      {
        ao.a(this.bZl, paramInt1);
        paramak.b(ao.b(this.bZl), ao.c(this.bZl), 0, 0);
        return;
      }
      if (-301 == paramInt3)
        paramak.a(ao.b(this.bZl), paramInt2, paramInt3);
      while (true)
      {
        ao.a(this.bZl, paramInt2, paramInt3, paramString);
        return;
        if (-105 == paramInt3)
          paramak.a(ao.b(this.bZl), paramInt2, paramInt3);
      }
    }
    paramak.a(ao.b(this.bZl), paramInt2, paramInt3);
  }

  public final void a(ak paramak, int paramInt1, int paramInt2, String paramString)
  {
    this.cFa.lock(1000L);
    new ba(this, paramak, paramInt1, paramInt2, paramString).b(ao.a(this.bZl));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.network.az
 * JD-Core Version:    0.6.2
 */