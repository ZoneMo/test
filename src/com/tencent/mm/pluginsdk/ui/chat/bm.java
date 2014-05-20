package com.tencent.mm.pluginsdk.ui.chat;

import com.tencent.mm.pluginsdk.ui.bh;

final class bm
  implements bh
{
  bm(bj parambj)
  {
  }

  public final void a(boolean paramBoolean, String[] paramArrayOfString, long paramLong)
  {
    if ((bj.a(this.frp) != null) && (paramArrayOfString != null) && (paramArrayOfString.length > 0))
      bj.a(this.frp).qN(paramArrayOfString[0]);
    if (bj.b(this.frp) == null)
      bj.c(this.frp);
  }

  public final void arT()
  {
  }

  public final void arU()
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.chat.bm
 * JD-Core Version:    0.6.2
 */