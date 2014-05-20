package com.tencent.mm.ui.account;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import com.tencent.mm.modelfriend.n;
import com.tencent.mm.plugin.a.a;
import com.tencent.mm.pluginsdk.e;

final class al
  implements AdapterView.OnItemClickListener
{
  al(FacebookFriendUI paramFacebookFriendUI)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    n localn = (n)FacebookFriendUI.b(this.gpZ).getItem(paramInt - FacebookFriendUI.e(this.gpZ).getHeaderViewsCount());
    if ((localn.getStatus() == 100) || (localn.getStatus() == 101))
    {
      Intent localIntent = new Intent();
      localIntent.putExtra("Contact_User", localn.getUsername());
      localIntent.putExtra("Contact_Nick", localn.yP());
      localIntent.putExtra("Contact_KFacebookId", localn.zf());
      localIntent.putExtra("Contact_KFacebookName", localn.zg());
      localIntent.putExtra("Contact_Scene", 31);
      a.cHS.c(localIntent, this.gpZ);
    }
    if (localn.getStatus() == 102);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.al
 * JD-Core Version:    0.6.2
 */