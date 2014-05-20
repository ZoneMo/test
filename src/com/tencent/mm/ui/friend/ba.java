package com.tencent.mm.ui.friend;

import android.app.ProgressDialog;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;

final class ba
  implements m
{
  ba(az paramaz)
  {
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    if (FindMContactInviteUI.a(this.hbq.hbp) != null)
    {
      FindMContactInviteUI.a(this.hbq.hbp).dismiss();
      FindMContactInviteUI.a(this.hbq.hbp, null);
    }
    if (FindMContactInviteUI.k(this.hbq.hbp) != null)
    {
      be.uA().b(432, FindMContactInviteUI.k(this.hbq.hbp));
      FindMContactInviteUI.a(this.hbq.hbp, null);
    }
    FindMContactInviteUI.l(this.hbq.hbp);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.friend.ba
 * JD-Core Version:    0.6.2
 */