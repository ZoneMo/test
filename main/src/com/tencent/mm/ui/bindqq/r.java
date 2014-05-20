package com.tencent.mm.ui.bindqq;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.tencent.mm.modelfriend.at;
import com.tencent.mm.ui.bc;
import com.tencent.mm.ui.friend.QQFriendUI;

final class r
  implements AdapterView.OnItemClickListener
{
  r(QQGroupUI paramQQGroupUI)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    at localat = (at)QQGroupUI.d(this.gJB).getItem(paramInt);
    Intent localIntent = new Intent(this.gJB, QQFriendUI.class);
    localIntent.putExtra("qqgroup_id", localat.zX());
    localIntent.putExtra("qqgroup_name", localat.Ac());
    localIntent.putExtra("qqgroup_sendmessage", this.gJB.getIntent().getBooleanExtra("qqgroup_sendmessage", false));
    this.gJB.startActivity(localIntent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindqq.r
 * JD-Core Version:    0.6.2
 */