package com.tencent.mm.ui.contact;

import android.view.View;
import android.widget.ListView;
import com.tencent.mm.ui.base.dc;

final class bb
  implements dc
{
  bb(ChatroomContactUI paramChatroomContactUI)
  {
  }

  public final void i(View paramView, int paramInt)
  {
    ChatroomContactUI.a(this.gTl).performItemClick(paramView, paramInt, 0L);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.bb
 * JD-Core Version:    0.6.2
 */