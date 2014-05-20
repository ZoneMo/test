package com.tencent.mm.plugin.accountsync.ui;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import com.tencent.mm.n;

final class h
  implements AdapterView.OnItemClickListener
{
  h(InviteFacebookFriendsUI paramInviteFacebookFriendsUI)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (InviteFacebookFriendsUI.a(this.cIu).FY().length >= 50)
    {
      com.tencent.mm.ui.base.h.c(this.cIu, n.bkr, n.ber);
      return;
    }
    InviteFacebookFriendsUI.a(this.cIu).eU(paramInt - InviteFacebookFriendsUI.b(this.cIu).getHeaderViewsCount());
    if (InviteFacebookFriendsUI.a(this.cIu).FY().length > 0)
    {
      this.cIu.dh(true);
      return;
    }
    this.cIu.dh(false);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.accountsync.ui.h
 * JD-Core Version:    0.6.2
 */