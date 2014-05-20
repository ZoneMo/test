package com.tencent.mm.ui.contact.profile;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.storage.bt;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.bc;

final class au extends Handler
{
  au(boolean paramBoolean, Context paramContext)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    if (this.cQM)
      aq.bM(true);
    int i = v.tq();
    if (this.cQM);
    for (int j = i & 0xFFFFFFEF; ; j = i | 0x10)
    {
      be.uz().sr().set(34, Integer.valueOf(j));
      be.uz().st().a(new bt(2048, "", "", 0, "", "", "", 0, 0, 0, "", "", "", j, "", 0, "", 0));
      if (!this.cQM)
        aq.bY(this.cGV);
      if (this.cQN != null)
        this.cQN.ca(null);
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.au
 * JD-Core Version:    0.6.2
 */