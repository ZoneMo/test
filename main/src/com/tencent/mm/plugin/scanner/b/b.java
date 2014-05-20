package com.tencent.mm.plugin.scanner.b;

import android.graphics.Point;
import android.graphics.Rect;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.an;

final class b
  implements Runnable
{
  b(a parama, Point paramPoint, Rect paramRect, byte[] paramArrayOfByte, long paramLong)
  {
  }

  public final void run()
  {
    Object[] arrayOfObject1 = new Object[2];
    arrayOfObject1[0] = this.efQ.toString();
    arrayOfObject1[1] = this.efR.toString();
    aa.e("MicroMsg.scanner.BaseDecoder", "asyncDecode() resolution:%s, coverage:%s", arrayOfObject1);
    if ((this.cDS != null) && (this.efT.b(this.cDS, this.efQ, this.efR, this.efS)))
      an.i(new c(this));
    while (this.efT.efJ == null)
      return;
    Object[] arrayOfObject2 = new Object[2];
    arrayOfObject2[0] = this.efQ.toString();
    arrayOfObject2[1] = this.efR.toString();
    aa.e("MicroMsg.scanner.BaseDecoder", "failed in asyncDecode() resolution:%s, coverage:%s", arrayOfObject2);
    this.efT.efJ.aaC();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.b.b
 * JD-Core Version:    0.6.2
 */