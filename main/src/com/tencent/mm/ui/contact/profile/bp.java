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

final class bp extends Handler
{
  bp(boolean paramBoolean)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    int i = v.tq();
    int j;
    qd localqd;
    if (this.cQM)
    {
      j = i & 0xFFEFFFFF;
      be.uz().sr().set(34, Integer.valueOf(j));
      localqd = new qd();
      localqd.fPK = 1048576;
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
      j = i | 0x100000;
      break;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.bp
 * JD-Core Version:    0.6.2
 */