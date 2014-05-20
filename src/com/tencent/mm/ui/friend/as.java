package com.tencent.mm.ui.friend;

import android.app.ProgressDialog;
import com.tencent.mm.modelfriend.ax;
import com.tencent.mm.modelfriend.p;
import com.tencent.mm.pluginsdk.c;
import com.tencent.mm.sdk.platformtools.ar;

final class as
  implements ar
{
  as(FindMContactInviteUI paramFindMContactInviteUI)
  {
  }

  public final boolean ve()
  {
    FindMContactInviteUI.a(this.hbp, c.aQ(this.hbp));
    FindMContactInviteUI.b(this.hbp).l(FindMContactInviteUI.c(this.hbp));
    FindMContactInviteUI.b(this.hbp).b(ax.Ar());
    return true;
  }

  public final boolean vf()
  {
    if (FindMContactInviteUI.a(this.hbp) != null)
    {
      FindMContactInviteUI.a(this.hbp).dismiss();
      FindMContactInviteUI.a(this.hbp, null);
    }
    FindMContactInviteUI.b(this.hbp).notifyDataSetChanged();
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.friend.as
 * JD-Core Version:    0.6.2
 */