package com.tencent.mm.ui.contact;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.ui.pluginapp.AddMoreFriendsUI;

final class o
  implements View.OnClickListener
{
  o(m paramm)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent(this.gSV.aal(), AddMoreFriendsUI.class);
    this.gSV.startActivity(localIntent);
    com.tencent.mm.plugin.d.c.m.dZN.j(10241, "1");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.o
 * JD-Core Version:    0.6.2
 */