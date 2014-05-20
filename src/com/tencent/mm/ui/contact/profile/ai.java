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

final class ai extends Handler
{
  ai(boolean paramBoolean)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    boolean bool = this.cQM;
    int i = v.tq();
    if (bool);
    for (int j = i & 0xFF7FFFFF; ; j = i | 0x800000)
    {
      be.uz().sr().set(34, Integer.valueOf(j));
      be.uz().st().a(new bt(2048, "", "", 0, "", "", "", 0, 0, 0, "", "", "", j, "", 0, "", 0));
      if (!this.cQM)
      {
        be.uz().sr().set(208903, "");
        be.uz().sr().set(208901, "");
        be.uz().sr().set(208902, "");
        be.uz().sr().set(208905, Boolean.valueOf(true));
      }
      if (this.cQN != null)
        this.cQN.ca(null);
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.ai
 * JD-Core Version:    0.6.2
 */