package com.tencent.mm.n;

import com.tencent.mm.network.ab;
import com.tencent.mm.sdk.platformtools.aa;

final class ap
  implements Runnable
{
  ap(an paraman, int paramInt1, int paramInt2, int paramInt3, String paramString, byte[] paramArrayOfByte)
  {
  }

  public final void run()
  {
    if (an.c(this.cmK));
    do
    {
      return;
      an.b(this.cmK).a(this.cmL, this.cmy, this.cmz, this.cmA, an.a(this.cmK), this.cmM);
    }
    while ((!an.d(this.cmK).wN()) || (an.d(this.cmK).wO()));
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(an.d(this.cmK).getType());
    aa.b("MicroMsg.RemoteOnGYNetEnd", "the netscene hasn't call callback to onSceneEnd, type:%d", arrayOfObject);
    aa.appenderFlush();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.n.ap
 * JD-Core Version:    0.6.2
 */