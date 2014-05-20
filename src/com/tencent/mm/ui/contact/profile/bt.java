package com.tencent.mm.ui.contact.profile;

import android.os.Handler;
import android.os.Message;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.protocal.a.qd;
import com.tencent.mm.storage.au;
import com.tencent.mm.storage.az;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.bc;

final class bt extends Handler
{
  bt(boolean paramBoolean)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    int i = v.tq();
    int j;
    qd localqd;
    if (this.cQM)
    {
      j = i & 0xFFBFFFFF;
      be.uz().sr().set(34, Integer.valueOf(j));
      localqd = new qd();
      localqd.fPK = 4194304;
      if (!this.cQM)
        break label108;
    }
    label108: for (int k = 0; ; k = 1)
    {
      localqd.fSE = k;
      be.uz().st().a(new az(39, localqd));
      if (this.cQN != null)
        this.cQN.ca(null);
      return;
      j = i | 0x400000;
      break;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.bt
 * JD-Core Version:    0.6.2
 */