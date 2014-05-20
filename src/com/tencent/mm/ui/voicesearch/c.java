package com.tencent.mm.ui.voicesearch;

import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.n;
import com.tencent.mm.ui.applet.f;

final class c
  implements f
{
  c(a parama)
  {
  }

  public final String de(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= this.htz.getCount()))
    {
      aa.e("MicroMsg.SearchConversationAdapter", "pos is invalid");
      return null;
    }
    n localn = (n)this.htz.getItem(paramInt);
    if (localn == null)
      return null;
    return localn.getUsername();
  }

  public final int zl()
  {
    return this.htz.getCount();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.voicesearch.c
 * JD-Core Version:    0.6.2
 */