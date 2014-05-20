package com.tencent.mm.ui.contact;

import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.i;
import com.tencent.mm.ui.applet.f;

final class ar
  implements f
{
  ar(ap paramap)
  {
  }

  public final String de(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= this.gTg.getCount()))
    {
      aa.e("MicroMsg.ChatroomContactAdapter", "pos is invalid");
      return null;
    }
    i locali = (i)this.gTg.getItem(paramInt);
    if (locali == null)
      return null;
    return locali.getUsername();
  }

  public final int zl()
  {
    return this.gTg.getCount();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.ar
 * JD-Core Version:    0.6.2
 */