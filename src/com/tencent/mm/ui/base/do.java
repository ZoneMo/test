package com.tencent.mm.ui.base;

import com.tencent.mm.sdk.platformtools.az;

final class do
  implements az
{
  do(dn paramdn)
  {
  }

  public final boolean ok()
  {
    if (dn.a(this.gCK) == -1L)
    {
      this.gCK.show();
      return true;
    }
    dn.b(this.gCK);
    if (dn.c(this.gCK) >= 0)
    {
      this.gCK.show();
      return true;
    }
    this.gCK.cancel();
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.do
 * JD-Core Version:    0.6.2
 */