package com.tencent.mm.ui.chatting;

import android.os.Handler;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.plugin.d.c.m;
import com.tencent.mm.ui.tools.ez;

final class hj
  implements ez
{
  private int gPR = 0;

  hj(ChattingUI paramChattingUI)
  {
  }

  public final boolean FT()
  {
    return false;
  }

  public final void FU()
  {
    new Handler().post(new hk(this));
  }

  public final void FV()
  {
  }

  public final void ig(String paramString)
  {
    if (au.hX(paramString))
    {
      this.gPR = 0;
      this.gPG.nC(-1);
      return;
    }
    if (paramString.length() > this.gPR)
    {
      m localm2 = m.dZN;
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(1);
      localm2.d(10451, arrayOfObject2);
    }
    this.gPR = paramString.length();
    m localm1 = m.dZN;
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Integer.valueOf(1);
    localm1.d(10456, arrayOfObject1);
    ChattingUI.v(this.gPG).ih(paramString);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.hj
 * JD-Core Version:    0.6.2
 */