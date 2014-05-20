package com.tencent.mm.ui.contact.profile;

import android.os.Handler;
import android.os.Message;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.modelfriend.ax;
import com.tencent.mm.storage.ap;
import com.tencent.mm.storage.au;
import com.tencent.mm.storage.bt;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.bc;

final class ac extends Handler
{
  ac(boolean paramBoolean)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    int i = v.tq();
    if (this.cQM);
    for (int j = i & 0xFFFFDFFF; ; j = i | 0x2000)
    {
      be.uz().sr().set(34, Integer.valueOf(j));
      be.uz().st().a(new bt(2048, "", "", 0, "", "", "", 0, 0, 0, "", "", "", j, "", 0, "", 0));
      if (!this.cQM)
      {
        ax.Am().zh();
        be.uz().sr().set(65828, "");
        be.uz().sx().tX("facebookapp");
        be.uz().sw().vb("facebookapp");
      }
      if (this.cQN != null)
        this.cQN.ca(null);
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.ac
 * JD-Core Version:    0.6.2
 */