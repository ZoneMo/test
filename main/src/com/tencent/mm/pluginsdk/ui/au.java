package com.tencent.mm.pluginsdk.ui;

import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.base.as;

final class au
  implements as
{
  au(SmileyPanel paramSmileyPanel)
  {
  }

  public final void ab(int paramInt1, int paramInt2)
  {
    aa.v("MicroMsg.SmileyPanel", "onMeasure width:" + paramInt1 + " height:" + paramInt2 + " isMeasured:" + SmileyPanel.e(this.fmB));
    if ((SmileyPanel.e(this.fmB)) || (paramInt2 == 0) || (paramInt1 == 0))
      return;
    SmileyPanel.f(this.fmB);
    SmileyPanel.b(this.fmB, paramInt2);
    SmileyPanel.c(this.fmB, paramInt1);
    this.fmB.G(SmileyPanel.g(this.fmB), true);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.au
 * JD-Core Version:    0.6.2
 */