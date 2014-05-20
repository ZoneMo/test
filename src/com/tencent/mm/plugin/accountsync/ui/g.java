package com.tencent.mm.plugin.accountsync.ui;

import android.widget.TextView;
import com.tencent.mm.model.v;
import com.tencent.mm.ui.bd;

final class g
  implements bd
{
  g(InviteFacebookFriendsUI paramInviteFacebookFriendsUI, TextView paramTextView)
  {
  }

  public final void FW()
  {
    if (v.tE())
    {
      if (InviteFacebookFriendsUI.a(this.cIu).getCount() == 0)
        this.cIv.setVisibility(0);
    }
    else
      return;
    this.cIv.setVisibility(8);
  }

  public final void FX()
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.accountsync.ui.g
 * JD-Core Version:    0.6.2
 */