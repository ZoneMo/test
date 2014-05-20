package com.tencent.mm.plugin.search.model;

import com.tencent.mm.sdk.b.a;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.sdk.platformtools.az;

final class ai
  implements az
{
  ai(ag paramag)
  {
  }

  public final boolean ok()
  {
    if (!ag.c(this.ehV))
    {
      ag.d(this.ehV);
      ag.e(this.ehV).a(131102, new aj(this.ehV, (byte)0));
    }
    a.ayH().b("Activate", this.ehV.ehT);
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.search.model.ai
 * JD-Core Version:    0.6.2
 */