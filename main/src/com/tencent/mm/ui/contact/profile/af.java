package com.tencent.mm.ui.contact.profile;

import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.n.ac;
import com.tencent.mm.sdk.platformtools.az;
import com.tencent.mm.storage.au;
import com.tencent.mm.storage.bt;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.base.ch;
import com.tencent.mm.ui.bc;
import com.tencent.mm.z.i;

final class af
  implements az
{
  af(boolean paramBoolean, ch paramch)
  {
  }

  public final boolean ok()
  {
    int i = v.tq();
    if (this.cQM);
    for (int j = i & 0xFFFF7FFF; ; j = i | 0x8000)
    {
      be.uz().sr().set(34, Integer.valueOf(j));
      be.uz().st().a(new bt(2048, "", "", 0, "", "", "", 0, 0, 0, "", "", "", j, "", 0, "", 0));
      be.uA().d(new i(5));
      if (!this.cQM)
        ae.clearData();
      if (this.cQN != null)
        this.cQN.ca(null);
      if (this.cQO != null)
        this.cQO.dismiss();
      return true;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.af
 * JD-Core Version:    0.6.2
 */