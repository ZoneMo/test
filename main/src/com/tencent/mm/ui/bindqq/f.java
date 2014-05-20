package com.tencent.mm.ui.bindqq;

import com.tencent.mm.c.a.dl;
import com.tencent.mm.c.a.dm;
import com.tencent.mm.sdk.b.e;

public final class f extends com.tencent.mm.sdk.b.g
  implements o
{
  private dl gJs;

  public final boolean a(e parame)
  {
    if (!(parame instanceof dl))
      return false;
    this.gJs = ((dl)parame);
    new g(this.gJs.bOr.bOt, this).aIC();
    return false;
  }

  public final void aIB()
  {
    if (this.gJs.bOr.bOu != null)
    {
      this.gJs.bOs.bMh = false;
      this.gJs.bOr.bOu.run();
    }
  }

  public final boolean j(int paramInt1, int paramInt2, String paramString)
  {
    if (this.gJs.bOr.bOu == null)
      return false;
    if ((paramInt1 == 0) && (paramInt2 == 0))
    {
      this.gJs.bOs.bMh = true;
      this.gJs.bOr.bOu.run();
      return true;
    }
    this.gJs.bOs.bMh = false;
    this.gJs.bOr.bOu.run();
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindqq.f
 * JD-Core Version:    0.6.2
 */