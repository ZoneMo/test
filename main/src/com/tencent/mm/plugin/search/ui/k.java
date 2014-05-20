package com.tencent.mm.plugin.search.ui;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.tencent.mm.modelfriend.h;
import com.tencent.mm.plugin.d.c.m;
import com.tencent.mm.ui.friend.InviteFriendUI;

final class k
  implements AdapterView.OnItemClickListener
{
  k(e parame)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    q localq = ((r)paramView.getTag()).ejt;
    if ((localq.data instanceof h))
    {
      h localh = (h)localq.data;
      Intent localIntent = new Intent(e.c(this.ejj), InviteFriendUI.class).putExtra("friend_type", 1).putExtra("friend_user_name", localh.getUsername()).putExtra("friend_num", localh.yS()).putExtra("friend_nick", localh.yM()).putExtra("friend_weixin_nick", localh.yP()).putExtra("friend_scene", 13).putExtra("search_kvstat_scene", e.c(this.ejj).eiC).putExtra("search_kvstat_position", paramInt + 1);
      e.c(this.ejj).startActivity(localIntent);
      m localm = m.dZN;
      Object[] arrayOfObject = new Object[3];
      arrayOfObject[0] = Integer.valueOf(e.c(this.ejj).eiC);
      arrayOfObject[1] = Integer.valueOf(3);
      arrayOfObject[2] = Integer.valueOf(paramInt + 1);
      localm.d(10991, arrayOfObject);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.search.ui.k
 * JD-Core Version:    0.6.2
 */