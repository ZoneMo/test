package com.tencent.mm.ui.contact;

import android.app.Activity;
import android.content.Intent;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;

final class bg
  implements MenuItem.OnMenuItemClickListener
{
  bg(ChatroomContactUI paramChatroomContactUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    Intent localIntent = new Intent(this.gTl, SelectContactUI.class);
    localIntent.putExtra("Contact_GroupFilter_Type", "@micromsg.qq.com");
    localIntent.putExtra("List_Type", 0);
    this.gTl.aal().startActivity(localIntent);
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.bg
 * JD-Core Version:    0.6.2
 */