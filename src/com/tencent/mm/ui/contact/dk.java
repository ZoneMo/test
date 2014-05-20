package com.tencent.mm.ui.contact;

import android.content.Intent;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.tencent.mm.plugin.d.c.m;
import com.tencent.mm.ui.pluginapp.AddMoreFriendsUI;

final class dk
  implements MenuItem.OnMenuItemClickListener
{
  dk(SelectContactUI paramSelectContactUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    Intent localIntent = new Intent(this.gVn, AddMoreFriendsUI.class);
    this.gVn.startActivity(localIntent);
    m.dZN.j(10241, "1");
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.dk
 * JD-Core Version:    0.6.2
 */