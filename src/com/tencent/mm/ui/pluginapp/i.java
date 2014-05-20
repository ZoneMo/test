package com.tencent.mm.ui.pluginapp;

import com.tencent.mm.protocal.a.rw;
import com.tencent.mm.protocal.a.sh;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.applet.f;

final class i
  implements f
{
  i(g paramg)
  {
  }

  public final String de(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= this.hdi.getCount()))
      aa.e("MicroMsg.ContactSearchResultAdapter", "pos is invalid");
    sh localsh;
    do
    {
      return null;
      localsh = this.hdi.nS(paramInt);
    }
    while (localsh == null);
    return localsh.fEI.getString();
  }

  public final int zl()
  {
    return this.hdi.getCount();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.pluginapp.i
 * JD-Core Version:    0.6.2
 */