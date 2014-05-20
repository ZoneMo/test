package com.tencent.mm.ui.chatting;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.plugin.d.c.m;
import com.tencent.mm.ui.contact.profile.ContactInfoUI;

final class ha
  implements View.OnClickListener
{
  ha(ChattingUI paramChattingUI)
  {
  }

  public final void onClick(View paramView)
  {
    String str = this.gPG.aJe();
    if ((str == null) || (str.equals("")))
      return;
    Intent localIntent = new Intent();
    localIntent.setClass(this.gPG.aal(), ContactInfoUI.class);
    localIntent.putExtra("Contact_User", str);
    localIntent.putExtra("Contact_Encryptusername", true);
    m localm = m.dZN;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = this.gPG.aJe();
    arrayOfObject[1] = Integer.valueOf(2);
    localm.d(11004, arrayOfObject);
    this.gPG.startActivity(localIntent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.ha
 * JD-Core Version:    0.6.2
 */