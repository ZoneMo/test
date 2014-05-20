package com.tencent.mm.ui.contact;

import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.base.db;

final class ac
  implements db
{
  ac(m paramm)
  {
  }

  public final void V(Object paramObject)
  {
    if (paramObject == null)
    {
      aa.e("MicroMsg.AddressUI", "onItemDel object null");
      return;
    }
    m.a(this.gSV, paramObject.toString());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.ac
 * JD-Core Version:    0.6.2
 */