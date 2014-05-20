package com.tencent.mm.ui.base;

import com.tencent.mm.sdk.platformtools.cj;
import java.util.List;

final class u
  implements cc
{
  u(String paramString1, List paramList1, List paramList2, String paramString2)
  {
  }

  public final void a(bx parambx)
  {
    if (!cj.hX(this.val$title))
      parambx.setHeaderTitle(this.val$title);
    for (int i = 0; i < this.gyx.size(); i++)
      parambx.a(((Integer)this.gyy.get(i)).intValue(), (CharSequence)this.gyx.get(i));
    if (!cj.hX(this.gyz))
      parambx.a(-1, this.gyz);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.u
 * JD-Core Version:    0.6.2
 */