package com.tencent.mm.plugin.search.model;

import com.tencent.mm.sdk.e.ao;
import com.tencent.mm.sdk.e.ar;

final class c
  implements ar
{
  c(b paramb)
  {
  }

  public final void a(int paramInt, ao paramao, Object paramObject)
  {
    String str = (String)paramObject;
    if ((str == null) || (str.endsWith("@stranger")))
      return;
    switch (paramInt)
    {
    default:
      return;
    case 2:
      b.d(this.egV).a(65546, new p(this.egV, str));
      return;
    case 3:
    case 4:
      b.d(this.egV).a(65546, new r(this.egV, str));
      return;
    case 5:
    }
    b.d(this.egV).a(65546, new n(this.egV, str));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.search.model.c
 * JD-Core Version:    0.6.2
 */