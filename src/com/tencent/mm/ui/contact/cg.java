package com.tencent.mm.ui.contact;

import android.content.Intent;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.tencent.mm.storage.i;

final class cg
  implements MenuItem.OnMenuItemClickListener
{
  cg(ContactRemarkInfoViewUI paramContactRemarkInfoViewUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(this.gTV.aal(), ContactRemarkInfoModUI.class);
    localIntent.putExtra("Contact_Scene", ContactRemarkInfoViewUI.c(this.gTV));
    localIntent.putExtra("Contact_User", ContactRemarkInfoViewUI.d(this.gTV).getUsername());
    this.gTV.startActivity(localIntent);
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.cg
 * JD-Core Version:    0.6.2
 */