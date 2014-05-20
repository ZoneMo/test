package com.tencent.mm.ui.contact.profile;

import android.content.Context;
import android.content.Intent;
import com.tencent.mm.pluginsdk.ui.applet.ContactListExpandPreference;
import com.tencent.mm.pluginsdk.ui.applet.aa;
import com.tencent.mm.storage.b;

final class am
  implements aa
{
  am(al paramal)
  {
  }

  public final void aiC()
  {
  }

  public final void jd(int paramInt)
  {
  }

  public final void je(int paramInt)
  {
  }

  public final void jf(int paramInt)
  {
    if (al.a(this.gWs).kp(paramInt))
    {
      String str = al.a(this.gWs).kr(paramInt);
      Intent localIntent = new Intent();
      localIntent.setClass(al.b(this.gWs), ContactInfoUI.class);
      localIntent.putExtra("Contact_User", str);
      localIntent.putExtra("Contact_RoomNickname", al.c(this.gWs).cu(str));
      al.b(this.gWs).startActivity(localIntent);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.am
 * JD-Core Version:    0.6.2
 */