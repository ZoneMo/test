package com.tencent.mm.ui;

import android.app.Activity;
import android.content.Intent;
import android.view.MenuItem;
import com.tencent.mm.ak.a;
import com.tencent.mm.plugin.d.c.m;
import com.tencent.mm.ui.base.cd;
import com.tencent.mm.ui.contact.SelectContactUI;
import com.tencent.mm.ui.contact.VoipAddressUI;
import com.tencent.mm.ui.pluginapp.AddMoreFriendsUI;
import com.tencent.mm.ui.setting.SendFeedBackUI;
import com.tencent.mm.ui.tools.ShareImageRedirectUI;

final class dl
  implements cd
{
  dl(Activity paramActivity)
  {
  }

  public final void d(MenuItem paramMenuItem, int paramInt)
  {
    switch (paramMenuItem.getItemId())
    {
    case 6:
    default:
      return;
    case 1:
      Intent localIntent5 = new Intent(this.bLc, SelectContactUI.class);
      localIntent5.putExtra("Contact_GroupFilter_Type", "@micromsg.qq.com");
      localIntent5.putExtra("List_Type", 0);
      localIntent5.putExtra("single_chat", true);
      this.bLc.startActivity(localIntent5);
      m.dZN.j(10919, "0-1");
      return;
    case 2:
      Intent localIntent4 = new Intent(this.bLc, SelectContactUI.class);
      localIntent4.putExtra("Contact_GroupFilter_Type", "@micromsg.qq.com");
      localIntent4.putExtra("List_Type", 0);
      this.bLc.startActivity(localIntent4);
      m.dZN.j(10919, "0-2");
      return;
    case 3:
    case 9:
      Intent localIntent3 = new Intent(this.bLc, VoipAddressUI.class);
      localIntent3.putExtra("Add_address_titile", this.bLc.getString(2131166174));
      boolean bool;
      m localm;
      Object[] arrayOfObject;
      int j;
      if (3 == paramMenuItem.getItemId())
      {
        bool = true;
        localIntent3.putExtra("voip_video", bool);
        this.bLc.startActivity(localIntent3);
        localm = m.dZN;
        arrayOfObject = new Object[2];
        arrayOfObject[0] = Integer.valueOf(1);
        int i = paramMenuItem.getItemId();
        j = 0;
        if (3 != i)
          break label313;
      }
      while (true)
      {
        arrayOfObject[1] = Integer.valueOf(j);
        localm.d(11034, arrayOfObject);
        m.dZN.j(10919, "0-3");
        return;
        bool = false;
        break;
        j = 1;
      }
    case 4:
      Intent localIntent2 = new Intent(this.bLc, AddMoreFriendsUI.class);
      this.bLc.startActivity(localIntent2);
      m.dZN.j(10919, "0-4");
      return;
    case 5:
      m.dZN.j(10958, "2");
      a.l(this.bLc, "scanner", ".ui.BaseScanUI");
      return;
    case 7:
      label313: Intent localIntent1 = new Intent(this.bLc, ShareImageRedirectUI.class);
      this.bLc.startActivity(localIntent1);
      m.dZN.j(10919, "0-5");
      return;
    case 8:
    }
    m.dZN.j(10919, "1-6");
    this.bLc.startActivity(new Intent(this.bLc, SendFeedBackUI.class));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.dl
 * JD-Core Version:    0.6.2
 */