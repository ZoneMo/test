package com.tencent.mm.plugin.chatroom.ui;

import android.app.Activity;
import android.app.ProgressDialog;
import com.tencent.mm.model.be;
import com.tencent.mm.model.r;
import com.tencent.mm.model.v;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.storage.c;

final class h
  implements m
{
  h(ProgressDialog paramProgressDialog, Activity paramActivity, i parami)
  {
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    be.uA().b(482, this);
    if (!this.cWB)
      this.cWC.cancel();
    this.cWD.getString(n.bwz);
    com.tencent.mm.plugin.chatroom.a.h localh = (com.tencent.mm.plugin.chatroom.a.h)paramx;
    boolean bool = false;
    if (paramInt1 == 0)
    {
      bool = false;
      if (paramInt2 == 0)
      {
        com.tencent.mm.storage.b localb = be.uz().sA().ts(localh.cWi);
        if (localb == null)
          localb = new com.tencent.mm.storage.b();
        localb.aR(v.th(), localh.cWm);
        r.a(localb);
        bool = true;
      }
    }
    if (this.cWE != null)
      this.cWE.c(bool, localh.cWn);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.chatroom.ui.h
 * JD-Core Version:    0.6.2
 */