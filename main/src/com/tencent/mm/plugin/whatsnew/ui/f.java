package com.tencent.mm.plugin.whatsnew.ui;

final class f
  implements n
{
  f(ThirdAnniversaryUI paramThirdAnniversaryUI, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
  }

  public final void aM(int paramInt1, int paramInt2)
  {
    float f1;
    float f2;
    if (paramInt1 != paramInt2)
    {
      f1 = (paramInt1 + ThirdAnniversaryUI.h(this.ffF)) / (this.ffI + 2 * ThirdAnniversaryUI.h(this.ffF) - this.ffJ);
      boolean bool = f1 < 0.0F;
      f2 = 0.0F;
      if (!bool)
        break label172;
    }
    while (true)
    {
      ThirdAnniversaryUI.a(this.ffF, (int)(f2 * (ThirdAnniversaryUI.i(this.ffF) + 2 * this.ffK - this.ffJ) + (ThirdAnniversaryUI.j(this.ffF) - this.ffK)), (int)(f2 * (ThirdAnniversaryUI.k(this.ffF) + 2 * this.ffL - this.ffJ) + (ThirdAnniversaryUI.l(this.ffF) - this.ffL)), (int)(f2 * (ThirdAnniversaryUI.m(this.ffF) + 2 * this.ffM - this.ffJ) + (ThirdAnniversaryUI.n(this.ffF) - this.ffM)));
      return;
      label172: if (f1 > 1.0F)
        f2 = 1.0F;
      else
        f2 = f1;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.whatsnew.ui.f
 * JD-Core Version:    0.6.2
 */