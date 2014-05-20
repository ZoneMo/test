package com.tencent.mm.ui.setting;

import com.tencent.mm.i.c;
import com.tencent.mm.ui.base.preference.n;

final class m
  implements c
{
  m(MoreTabUI paramMoreTabUI)
  {
  }

  public final void ce(int paramInt)
  {
    if (paramInt == 262145)
    {
      MoreTabUI.a(this.hdU);
      MoreTabUI.b(this.hdU);
    }
    while (true)
    {
      MoreTabUI.e(this.hdU).notifyDataSetChanged();
      return;
      if (paramInt == 262147)
        MoreTabUI.c(this.hdU);
      else if (paramInt == 262148)
        MoreTabUI.d(this.hdU);
    }
  }

  public final void cf(int paramInt)
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.m
 * JD-Core Version:    0.6.2
 */