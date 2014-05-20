package com.tencent.mm.ui.friend;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;

final class cc
  implements AdapterView.OnItemClickListener
{
  cc(RecommendFriendUI paramRecommendFriendUI)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (!RecommendFriendUI.a(this.hbV))
    {
      RecommendFriendUI.b(this.hbV).eU(paramInt);
      if (RecommendFriendUI.b(this.hbV).aLP().length > 0)
      {
        this.hbV.dh(true);
        return;
      }
      this.hbV.dh(false);
      return;
    }
    RecommendFriendUI.a(this.hbV, RecommendFriendUI.b(this.hbV).nO(paramInt));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.friend.cc
 * JD-Core Version:    0.6.2
 */