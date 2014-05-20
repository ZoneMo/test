package com.tencent.mm.ui.contact;

import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.i;
import com.tencent.mm.ui.applet.f;

final class e
  implements f
{
  e(a parama)
  {
  }

  public final String de(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= this.gSe.getCount()))
    {
      aa.e("MicroMsg.AddressAdapter", "pos is invalid");
      return null;
    }
    i locali = (i)this.gSe.getItem(paramInt);
    if (locali == null)
      return null;
    return locali.getUsername();
  }

  public final int zl()
  {
    return this.gSe.getCount();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.e
 * JD-Core Version:    0.6.2
 */