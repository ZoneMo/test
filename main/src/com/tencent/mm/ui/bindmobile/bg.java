package com.tencent.mm.ui.bindmobile;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import com.tencent.mm.modelfriend.h;
import com.tencent.mm.ui.friend.InviteFriendUI;

final class bg
  implements AdapterView.OnItemClickListener
{
  bg(MobileFriendUI paramMobileFriendUI)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (paramInt < MobileFriendUI.d(this.gJo).getHeaderViewsCount());
    h localh;
    do
    {
      return;
      int i = paramInt - MobileFriendUI.d(this.gJo).getHeaderViewsCount();
      localh = (h)MobileFriendUI.b(this.gJo).getItem(i);
      if ((localh.getStatus() == 1) || (localh.getStatus() == 2))
        MobileFriendUI.a(this.gJo, localh);
    }
    while (localh.getStatus() != 0);
    Intent localIntent = new Intent(this.gJo, InviteFriendUI.class);
    localIntent.putExtra("friend_type", 1);
    localIntent.putExtra("friend_user_name", localh.getUsername());
    localIntent.putExtra("friend_num", localh.yS());
    localIntent.putExtra("friend_nick", localh.yM());
    localIntent.putExtra("friend_weixin_nick", localh.yP());
    localIntent.putExtra("friend_scene", 13);
    this.gJo.startActivity(localIntent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindmobile.bg
 * JD-Core Version:    0.6.2
 */