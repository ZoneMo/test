package com.tencent.mm.pluginsdk.ui.chat;

import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.base.as;

final class e
  implements as
{
  e(AppPanel paramAppPanel)
  {
  }

  public final void ab(int paramInt1, int paramInt2)
  {
    aa.d("MicroMsg.AppPanel", "onMeasure width:" + paramInt1 + " height:" + paramInt2 + " isMeasured:" + AppPanel.a(this.fpO));
    if ((AppPanel.a(this.fpO)) || (paramInt2 == 0) || (paramInt1 == 0))
    {
      if ((paramInt2 == 0) || (paramInt1 == 0))
        aa.d("MicroMsg.AppPanel", "onMeasure, width or height is 0");
      return;
    }
    if (AppPanel.b(this.fpO) == 2)
      aa.d("MicroMsg.AppPanel", "landspace");
    while (true)
    {
      AppPanel.c(this.fpO);
      AppPanel.a(this.fpO, paramInt2);
      AppPanel.b(this.fpO, paramInt1);
      AppPanel.d(this.fpO);
      return;
      aa.d("MicroMsg.AppPanel", "portrait");
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.chat.e
 * JD-Core Version:    0.6.2
 */