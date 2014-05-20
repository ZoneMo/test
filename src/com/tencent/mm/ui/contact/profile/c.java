package com.tencent.mm.ui.contact.profile;

import com.tencent.mm.model.w;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.pluginsdk.b.a;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.i;
import com.tencent.mm.ui.base.preference.n;

final class c
  implements Runnable
{
  c(ContactInfoUI paramContactInfoUI, String paramString)
  {
  }

  public final void run()
  {
    aa.d("MicroMsg.ContactInfoUI", "onNotifyChange verify = " + ContactInfoUI.c(this.gVX) + ", contact = " + ContactInfoUI.b(this.gVX));
    if ((ContactInfoUI.b(this.gVX) != null) && (!au.hX(ContactInfoUI.b(this.gVX).getUsername())) && (!w.dc(ContactInfoUI.b(this.gVX).getUsername())) && (ContactInfoUI.b(this.gVX).getUsername().equals(this.gUD)))
    {
      if (ContactInfoUI.d(this.gVX) != null)
      {
        ContactInfoUI.d(this.gVX).Ji();
        ContactInfoUI.e(this.gVX).removeAll();
      }
      this.gVX.FR();
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.c
 * JD-Core Version:    0.6.2
 */