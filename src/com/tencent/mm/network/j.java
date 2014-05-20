package com.tencent.mm.network;

import com.tencent.mm.network.a.a;
import com.tencent.mm.network.a.b;
import com.tencent.mm.network.a.f;
import com.tencent.mm.sdk.platformtools.aa;
import java.net.InetAddress;
import java.net.UnknownHostException;

final class j
  implements Runnable
{
  j(long paramLong1, long paramLong2, long paramLong3, long paramLong4, String paramString1, int paramInt1, int paramInt2, boolean paramBoolean, int paramInt3, long paramLong5, long paramLong6, int paramInt4, int paramInt5, int paramInt6, long paramLong7, long paramLong8, String paramString2, long paramLong9, a parama)
  {
  }

  public final void run()
  {
    try
    {
      int i = C2Java.access$000(this.cEc);
      if (i == 0)
      {
        aa.e("C2Java", "ActionId Can not convert");
        return;
      }
      b localb = new b();
      localb.cFJ = this.cEd;
      localb.cyD = this.cEe;
      localb.endTime = this.cEf;
      localb.cFK = new f(InetAddress.getByName(this.cEg), this.cEh, this.cEi);
      localb.cFL = this.cEj;
      localb.cFM = this.cEk;
      localb.cFN = this.cEl;
      localb.cFO = this.cEm;
      localb.bLI = bi.P(this.cmy, this.cEn);
      localb.bLJ = this.cEn;
      localb.cFR = this.cEo;
      localb.cFW = this.cEp;
      localb.cyG = (this.cEf - this.cEe);
      localb.cFX = this.cEq;
      localb.cFY = this.cEr;
      localb.cFZ = this.cEs;
      this.cDY.a(i, "", localb);
      return;
    }
    catch (UnknownHostException localUnknownHostException)
    {
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.network.j
 * JD-Core Version:    0.6.2
 */