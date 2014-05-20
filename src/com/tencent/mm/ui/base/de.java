package com.tencent.mm.ui.base;

final class de
  implements Runnable
{
  de(MMSuperAlert paramMMSuperAlert, int paramInt1, int paramInt2, boolean paramBoolean)
  {
  }

  public final void run()
  {
    String str1;
    if (this.gBS == 0)
    {
      str1 = "";
      if (this.gBT != 0)
        break label66;
    }
    label66: for (String str2 = ""; ; str2 = this.gBV.getString(this.gBT))
    {
      h.a(this.gBV, str1, str2, this.gBU, new df(this), new dg(this));
      return;
      str1 = this.gBV.getString(this.gBS);
      break;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.de
 * JD-Core Version:    0.6.2
 */