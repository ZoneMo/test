package com.tencent.mm.plugin.search.model;

import com.tencent.mm.sdk.b.e;
import com.tencent.mm.sdk.b.g;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ay;

final class f extends g
{
  f(b paramb)
  {
  }

  public final boolean a(e parame)
  {
    if (b.f(this.egV).azG())
    {
      b.f(this.egV).bO(600L);
      aa.i("MicroMsg.SearchContactLogic", "* Update contact at once triggered.");
    }
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.search.model.f
 * JD-Core Version:    0.6.2
 */