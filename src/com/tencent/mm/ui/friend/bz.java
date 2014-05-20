package com.tencent.mm.ui.friend;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import com.tencent.mm.c.a.ei;
import com.tencent.mm.c.a.ek;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.modelfriend.av;
import com.tencent.mm.modelfriend.ax;
import com.tencent.mm.modelfriend.x;
import com.tencent.mm.modelfriend.y;
import com.tencent.mm.plugin.d.c.m;
import com.tencent.mm.pluginsdk.e;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.k;

final class bz
  implements AdapterView.OnItemClickListener
{
  bz(QQFriendUI paramQQFriendUI)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (paramInt < QQFriendUI.c(this.hbR).getHeaderViewsCount());
    av localav;
    do
    {
      ei localei;
      do
      {
        return;
        int i = paramInt - QQFriendUI.c(this.hbR).getHeaderViewsCount();
        localav = (av)QQFriendUI.d(this.hbR).getItem(i);
        if (!this.hbR.getIntent().getBooleanExtra("qqgroup_sendmessage", false))
          break;
        localei = new ei();
        localei.bPh.bNK = 0;
        localei.bPh.bPj = (localav.Af() + "@qqim");
        localei.bPh.bPk = localav.getDisplayName();
        com.tencent.mm.sdk.b.a.ayH().f(localei);
      }
      while (!localei.bPi.bMh);
      Intent localIntent1 = new Intent();
      localIntent1.putExtra("Chat_User", localav.Af() + "@qqim");
      com.tencent.mm.plugin.a.a.cHS.d(localIntent1, this.hbR);
      return;
      if ((localav.Ag() == 1) || (localav.Ag() == 2))
      {
        i locali = be.uz().su().tO(localav.getUsername());
        if ((locali != null) && (locali.aAp()))
          m.dZN.j(10298, localav.getUsername() + ",12");
        Intent localIntent2 = new Intent();
        localIntent2.putExtra("Contact_User", localav.getUsername());
        localIntent2.putExtra("Contact_Nick", localav.kn());
        localIntent2.putExtra("Contact_Uin", localav.Af());
        localIntent2.putExtra("Contact_QQNick", localav.getDisplayName());
        localIntent2.putExtra("Contact_Scene", 12);
        localIntent2.putExtra("Contact_RemarkName", localav.Ai());
        x localx = ax.An().fA(localav.getUsername());
        if (localx != null)
          localIntent2.putExtra("Contact_Sex", localx.rk());
        localIntent2.putExtra("Contact_ShowUserName", false);
        com.tencent.mm.plugin.a.a.cHS.c(localIntent2, this.hbR);
        return;
      }
    }
    while (localav.Ag() != 0);
    Intent localIntent3 = new Intent(this.hbR, InviteFriendUI.class);
    localIntent3.putExtra("friend_type", 0);
    localIntent3.putExtra("friend_user_name", localav.getUsername());
    localIntent3.putExtra("friend_num", localav.Af());
    localIntent3.putExtra("friend_nick", localav.getDisplayName());
    localIntent3.putExtra("friend_weixin_nick", localav.kn());
    localIntent3.putExtra("friend_scene", 12);
    this.hbR.startActivity(localIntent3);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.friend.bz
 * JD-Core Version:    0.6.2
 */