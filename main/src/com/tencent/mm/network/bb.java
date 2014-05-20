package com.tencent.mm.network;

import com.tencent.mm.jni.platformcomm.WakerLock;
import com.tencent.mm.sdk.platformtools.ce;

final class bb extends z
  implements ac
{
  private ao bZl;
  private WakerLock cFa;

  public bb(ao paramao, WakerLock paramWakerLock)
  {
    this.bZl = paramao;
    this.cFa = paramWakerLock;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, ak paramak, byte[] paramArrayOfByte)
  {
  }

  public final void a(ak paramak, int paramInt1, int paramInt2, String paramString)
  {
    this.cFa.lock(1000L);
    new bc(this, paramak, paramInt1, paramInt2).b(ao.a(this.bZl));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.network.bb
 * JD-Core Version:    0.6.2
 */