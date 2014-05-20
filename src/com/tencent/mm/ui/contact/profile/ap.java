package com.tencent.mm.ui.contact.profile;

import android.app.ProgressDialog;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.protocal.a.qd;
import com.tencent.mm.storage.au;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.bc;

final class ap
  implements com.tencent.mm.sdk.platformtools.az
{
  ap(ProgressDialog paramProgressDialog, boolean paramBoolean)
  {
  }

  public final boolean ok()
  {
    if (this.dNA != null)
      this.dNA.dismiss();
    int i = v.tq();
    int j;
    qd localqd;
    if (this.cQM)
    {
      j = i & 0xFEFFFFFF;
      be.uz().sr().set(34, Integer.valueOf(j));
      localqd = new qd();
      localqd.fPK = 16777216;
      if (!this.cQM)
        break label119;
    }
    label119: for (int k = 0; ; k = 1)
    {
      localqd.fSE = k;
      be.uz().st().a(new com.tencent.mm.storage.az(39, localqd));
      if (this.cQN != null)
        this.cQN.ca(null);
      return false;
      j = i | 0x1000000;
      break;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.ap
 * JD-Core Version:    0.6.2
 */