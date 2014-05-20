package com.tencent.mm.plugin.scanner;

import com.tencent.mm.model.be;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;

final class d
  implements Runnable
{
  d(b paramb)
  {
  }

  public final void run()
  {
    if (!be.se())
      return;
    if (cj.hX(b.a(this.eaS)))
    {
      aa.e("MicroMsg.scanner.SubCoreScanner", "accPath == null in onAccountPostReset");
      return;
    }
    cj.e(b.a(this.eaS) + "image/scan/img", "scanbook", 604800000L);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.d
 * JD-Core Version:    0.6.2
 */