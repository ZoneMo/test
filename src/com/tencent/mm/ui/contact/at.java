package com.tencent.mm.ui.contact;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

final class at
  implements View.OnClickListener
{
  at(ChatroomContactEntranceView paramChatroomContactEntranceView)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(ChatroomContactEntranceView.a(this.gTi), ChatroomContactUI.class);
    ChatroomContactEntranceView.a(this.gTi).startActivity(localIntent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.at
 * JD-Core Version:    0.6.2
 */