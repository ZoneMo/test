package com.tencent.mm.ui.friend;

import android.app.Activity;
import android.content.res.Resources;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.tencent.mm.l;
import com.tencent.mm.n;
import com.tencent.mm.ui.base.h;

final class cd
  implements MenuItem.OnMenuItemClickListener
{
  cd(RecommendFriendUI paramRecommendFriendUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    int i = RecommendFriendUI.b(this.hbV).aLP().length;
    Activity localActivity = this.hbV.aal();
    Resources localResources = this.hbV.aal().getResources();
    int j = l.bcs;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(i);
    h.a(localActivity, localResources.getQuantityString(j, i, arrayOfObject), this.hbV.getString(n.ber), new ce(this), new cf(this));
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.friend.cd
 * JD-Core Version:    0.6.2
 */