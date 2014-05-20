package com.tencent.mm.ui.contact.profile;

import android.content.Intent;
import com.tencent.mm.model.w;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.storage.ce;
import com.tencent.mm.storage.i;

final class d
  implements Runnable
{
  d(ContactInfoUI paramContactInfoUI, ce paramce)
  {
  }

  public final void run()
  {
    if ((ContactInfoUI.b(this.gVX) != null) && (this.fsv != null) && (!au.hX(ContactInfoUI.b(this.gVX).getUsername())) && (ContactInfoUI.b(this.gVX).getUsername().equals(this.fsv.aAs())) && (!w.dc(ContactInfoUI.b(this.gVX).getUsername())))
    {
      ContactInfoUI.b(this.gVX).bH(this.fsv.ru());
      this.gVX.getIntent().putExtra("Contact_User", ContactInfoUI.b(this.gVX).getUsername());
      ContactInfoUI.a(this.gVX, ContactInfoUI.f(this.gVX));
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.d
 * JD-Core Version:    0.6.2
 */