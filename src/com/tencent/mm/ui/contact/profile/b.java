package com.tencent.mm.ui.contact.profile;

import android.content.Intent;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.tencent.mm.model.v;
import com.tencent.mm.model.w;
import com.tencent.mm.storage.i;
import com.tencent.mm.ui.LauncherUI;

final class b
  implements MenuItem.OnMenuItemClickListener
{
  b(ContactInfoUI paramContactInfoUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    if (!ContactInfoUI.a(this.gVX))
    {
      this.gVX.finish();
      return true;
    }
    if ((w.cK(ContactInfoUI.b(this.gVX).getUsername())) && (!v.tx()))
    {
      Intent localIntent4 = new Intent(this.gVX, LauncherUI.class);
      localIntent4.addFlags(67108864);
      this.gVX.startActivity(localIntent4);
    }
    while (true)
    {
      this.gVX.finish();
      return true;
      if ((w.cC(ContactInfoUI.b(this.gVX).getUsername())) && (!v.tt()))
      {
        Intent localIntent3 = new Intent(this.gVX, LauncherUI.class);
        localIntent3.addFlags(67108864);
        this.gVX.startActivity(localIntent3);
      }
      else if ((w.cE(ContactInfoUI.b(this.gVX).getUsername())) && (!v.tD()))
      {
        Intent localIntent2 = new Intent(this.gVX, LauncherUI.class);
        localIntent2.addFlags(67108864);
        this.gVX.startActivity(localIntent2);
      }
      else if ((w.cy(ContactInfoUI.b(this.gVX).getUsername())) && (!v.tF()))
      {
        Intent localIntent1 = new Intent(this.gVX, LauncherUI.class);
        localIntent1.addFlags(67108864);
        this.gVX.startActivity(localIntent1);
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.b
 * JD-Core Version:    0.6.2
 */