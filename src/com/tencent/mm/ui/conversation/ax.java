package com.tencent.mm.ui.conversation;

import android.app.Activity;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.plugin.d.c.m;
import com.tencent.mm.ui.contact.SelectContactUI;

final class ax
  implements View.OnClickListener
{
  ax(MainUI paramMainUI)
  {
  }

  public final void onClick(View paramView)
  {
    m.dZN.j(10108, "1");
    Intent localIntent = new Intent(this.gZI.aal(), SelectContactUI.class);
    localIntent.putExtra("Contact_GroupFilter_Type", "@micromsg.qq.com");
    localIntent.putExtra("List_Type", 0);
    this.gZI.aal().startActivity(localIntent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.conversation.ax
 * JD-Core Version:    0.6.2
 */