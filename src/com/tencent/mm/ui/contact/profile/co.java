package com.tencent.mm.ui.contact.profile;

import com.tencent.mm.model.w;
import com.tencent.mm.storage.i;
import com.tencent.mm.ui.base.bx;
import com.tencent.mm.ui.base.cc;

final class co
  implements cc
{
  co(cl paramcl)
  {
  }

  public final void a(bx parambx)
  {
    if (!this.gXq.gXo)
      parambx.r(1, 2131166270, 2130838976);
    if (!this.gXq.gXp)
    {
      if (!NormalUserFooterPreference.a(this.gXq.gXl.gXk).rd())
        break label61;
      parambx.r(8, 2131166241, 2130838952);
    }
    label61: 
    while (w.cs(NormalUserFooterPreference.a(this.gXq.gXl.gXk).getUsername()))
      return;
    parambx.r(5, 2131166237, 2130838952);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.co
 * JD-Core Version:    0.6.2
 */