package com.tencent.mm.ui.contact.profile;

import android.os.Handler;
import android.os.Message;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.storage.au;
import com.tencent.mm.storage.bt;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.bc;

final class bh extends Handler
{
  bh(boolean paramBoolean)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    boolean bool = this.cQM;
    int i = v.tq();
    if (bool);
    for (int j = i & 0xFFFFEFFF; ; j = i | 0x1000)
    {
      be.uz().sr().set(34, Integer.valueOf(j));
      be.uz().st().a(new bt(2048, "", "", 0, "", "", "", 0, 0, 0, "", "", "", j, "", 0, "", 0));
      if (this.cQN != null)
        this.cQN.ca(null);
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.bh
 * JD-Core Version:    0.6.2
 */