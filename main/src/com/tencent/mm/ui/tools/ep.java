package com.tencent.mm.ui.tools;

import com.tencent.mm.sdk.platformtools.aa;

final class ep
  implements f
{
  ep(eo parameo)
  {
  }

  public final void aMK()
  {
    if (!eo.a(this.hlX))
    {
      aa.v(eo.b(this.hlX), "onVoiceSearchRequired, but not in searching");
      return;
    }
    this.hlX.auU();
  }

  public final void xw(String paramString)
  {
    if (!eo.a(this.hlX))
      aa.f(eo.b(this.hlX), "onSearchTextChange %s, but not in searching", new Object[] { paramString });
    while (eo.c(this.hlX) == null)
      return;
    eo.c(this.hlX).ig(paramString);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.ep
 * JD-Core Version:    0.6.2
 */