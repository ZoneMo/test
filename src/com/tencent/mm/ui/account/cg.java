package com.tencent.mm.ui.account;

import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.x.b;

final class cg
  implements View.OnClickListener
{
  cg(LoginHistoryUI paramLoginHistoryUI, int paramInt)
  {
  }

  public final void onClick(View paramView)
  {
    int i;
    if (this.grg == 0)
      if (!b.Bj())
        i = 7;
    while (true)
    {
      if (cj.azT())
        i |= 8;
      av.y(this.grc, i);
      return;
      i = 6;
      continue;
      if ((0x2 & this.grg) == 0)
      {
        int j = 0x4 & this.grg;
        i = 0;
        if (j == 0);
      }
      else
      {
        i = 2;
      }
      if ((0x4 & this.grg) != 0)
        i |= 4;
      if ((0x1 & this.grg) != 0)
        i |= 1;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.cg
 * JD-Core Version:    0.6.2
 */