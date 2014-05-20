package com.tencent.mm.plugin.accountsync.ui;

import android.os.Bundle;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.tencent.mm.ui.a.a.e;

final class n
  implements MenuItem.OnMenuItemClickListener
{
  n(InviteFacebookFriendsUI paramInviteFacebookFriendsUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    e locale = new e("290293790992170");
    Bundle localBundle = new Bundle();
    localBundle.putString("message", this.cIu.getString(com.tencent.mm.n.bko));
    long[] arrayOfLong = InviteFacebookFriendsUI.a(this.cIu).FY();
    String str1 = Long.toString(arrayOfLong[0]);
    for (int i = 1; i < arrayOfLong.length; i++)
    {
      String str2 = str1 + ",";
      str1 = str2 + Long.toString(arrayOfLong[i]);
    }
    localBundle.putString("to", str1);
    locale.a(this.cIu, "apprequests", localBundle, new o(this, arrayOfLong));
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.accountsync.ui.n
 * JD-Core Version:    0.6.2
 */