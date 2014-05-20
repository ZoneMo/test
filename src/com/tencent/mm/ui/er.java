package com.tencent.mm.ui;

import android.content.Intent;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.plugin.d.c.m;
import com.tencent.mm.pluginsdk.ui.applet.ContactListExpandPreference;
import com.tencent.mm.pluginsdk.ui.applet.aa;
import com.tencent.mm.storage.ce;
import com.tencent.mm.storage.cf;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.k;
import com.tencent.mm.ui.contact.bh;
import com.tencent.mm.ui.contact.profile.ContactInfoUI;

final class er
  implements aa
{
  er(RoomInfoUI paramRoomInfoUI)
  {
  }

  public final void aiC()
  {
    if (RoomInfoUI.e(this.gpa) != null)
      RoomInfoUI.e(this.gpa).asb();
  }

  public final void jd(int paramInt)
  {
    RoomInfoUI.a(this.gpa, paramInt);
  }

  public final void je(int paramInt)
  {
    RoomInfoUI.h(this.gpa);
  }

  public final void jf(int paramInt)
  {
    String str1 = RoomInfoUI.e(this.gpa).kr(paramInt);
    String str2 = au.hW(RoomInfoUI.e(this.gpa).kt(paramInt));
    if (au.hX(str2))
    {
      ce localce = be.uz().sv().vF(str1);
      if ((localce != null) && (!au.hX(localce.aAs())))
        str2 = localce.ru();
    }
    Intent localIntent = new Intent();
    localIntent.setClass(this.gpa, ContactInfoUI.class);
    localIntent.putExtra("Contact_User", str1);
    localIntent.putExtra("Contact_RemarkName", str2);
    if ((RoomInfoUI.f(this.gpa)) && (RoomInfoUI.c(this.gpa) != null))
      localIntent.putExtra("Contact_RoomNickname", RoomInfoUI.c(this.gpa).cu(str1));
    localIntent.putExtra("Contact_Nick", au.hW(RoomInfoUI.e(this.gpa).ks(paramInt)));
    localIntent.putExtra("Contact_RoomMember", true);
    i locali = be.uz().su().tO(str1);
    if ((locali != null) && (locali.rj() > 0) && (locali.rb()))
      bh.b(localIntent, str1);
    if (RoomInfoUI.f(this.gpa))
    {
      if ((locali != null) && (locali.aAp()))
        m.dZN.j(10298, locali.getUsername() + ",14");
      localIntent.putExtra("Contact_Scene", 14);
    }
    while (true)
    {
      this.gpa.startActivityForResult(localIntent, 0);
      return;
      if (RoomInfoUI.g(this.gpa))
      {
        localIntent.putExtra("Contact_Scene", 44);
        if (!v.cm(locali.getUsername()))
          localIntent.putExtra("Contact_IsLBSFriend", true);
      }
      else
      {
        localIntent.putExtra("Kdel_from", 0);
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.er
 * JD-Core Version:    0.6.2
 */