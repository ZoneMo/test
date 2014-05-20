package com.tencent.mm.ui.voicesearch;

import com.tencent.mm.protocal.a.rw;
import com.tencent.mm.protocal.a.sh;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.applet.f;
import java.util.LinkedList;

final class r
  implements f
{
  r(j paramj)
  {
  }

  public final String de(int paramInt)
  {
    if (paramInt < 0)
      aa.e("MicroMsg.SearchResultAdapter", "pos is invalid");
    sh localsh;
    do
    {
      return null;
      localsh = this.htK.oC(1 + (paramInt + j.e(this.htK)));
    }
    while (localsh == null);
    return localsh.fEI.getString();
  }

  public final int zl()
  {
    if (j.f(this.htK) == null)
      return 0;
    return j.f(this.htK).size();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.voicesearch.r
 * JD-Core Version:    0.6.2
 */