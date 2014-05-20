package com.tencent.mm.ui.chatting;

import android.content.Intent;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.tencent.mm.model.w;
import com.tencent.mm.storage.i;
import com.tencent.mm.ui.RoomInfoUI;
import com.tencent.mm.ui.contact.profile.ContactInfoUI;

final class gs
  implements MenuItem.OnMenuItemClickListener
{
  gs(ChattingUI paramChattingUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    Intent localIntent1 = new Intent(this.gPG, RoomInfoUI.class);
    this.gPG.SM();
    if (this.gPG.gJU)
    {
      localIntent1.putExtra("RoomInfo_Id", this.gPG.aJe());
      localIntent1.putExtra("Is_Chatroom", this.gPG.gMn);
      localIntent1.putExtra("Is_Lbsroom", this.gPG.gMo);
      localIntent1.putExtra("Chat_User", ChattingUI.l(this.gPG).getUsername());
      this.gPG.startActivity(localIntent1);
    }
    while (true)
    {
      return true;
      if ((w.cZ(this.gPG.aJe())) || (i.ty(this.gPG.aJe())) || (i.tA(this.gPG.aJe())) || (w.cX(this.gPG.aJe())) || (ChattingUI.l(this.gPG).aAp()))
      {
        Intent localIntent2 = new Intent(this.gPG, ContactInfoUI.class);
        localIntent2.putExtra("Contact_User", this.gPG.aJe());
        this.gPG.startActivityForResult(localIntent2, 213);
      }
      else
      {
        localIntent1.putExtra("Single_Chat_Talker", this.gPG.aJe());
        localIntent1.putExtra("Is_Chatroom", false);
        this.gPG.startActivity(localIntent1);
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.gs
 * JD-Core Version:    0.6.2
 */