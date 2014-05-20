package com.tencent.mm.ui.friend;

import com.tencent.mm.sdk.e.al;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ay;

final class h
  implements al
{
  h(f paramf)
  {
  }

  public final void ca(String paramString)
  {
    aa.d("MicroMsg.FMessageContactView", "onNotifyChange, fmsg change");
    if (!f.b(this.haO).azG())
      f.b(this.haO).azn();
    f.b(this.haO).bO(3000L);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.friend.h
 * JD-Core Version:    0.6.2
 */