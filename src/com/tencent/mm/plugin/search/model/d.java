package com.tencent.mm.plugin.search.model;

import com.tencent.mm.sdk.e.ao;
import com.tencent.mm.sdk.e.ar;

final class d
  implements ar
{
  d(b paramb)
  {
  }

  public final void a(int paramInt, ao paramao, Object paramObject)
  {
    String str;
    if (b.e(this.egV))
    {
      if ((paramObject == null) || (!(paramObject instanceof String)))
        break label61;
      str = (String)paramObject;
    }
    switch (paramInt)
    {
    case 3:
    case 4:
    default:
    case 2:
      label61: 
      do
      {
        return;
        str = null;
        break;
      }
      while (str == null);
      b.d(this.egV).a(65546, new q(this.egV, str));
      return;
    case 5:
    }
    if (str == null)
    {
      b.d(this.egV).a(65546, new m(this.egV, (byte)0));
      return;
    }
    b.d(this.egV).a(65546, new o(this.egV, str));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.search.model.d
 * JD-Core Version:    0.6.2
 */