package com.tencent.mm.ui.chatting;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.storage.i;
import com.tencent.mm.ui.RoomInfoUI;

final class ig
  implements View.OnClickListener
{
  ig(ChattingUI paramChattingUI, String paramString)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent(this.gPG, RoomInfoUI.class);
    localIntent.putExtra("RoomInfo_Id", this.gPG.aJe());
    localIntent.putExtra("Chat_User", ChattingUI.l(this.gPG).getUsername());
    localIntent.putExtra("Is_Chatroom", true);
    localIntent.putExtra("need_matte_high_light_item", this.cfS);
    this.gPG.startActivity(localIntent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.ig
 * JD-Core Version:    0.6.2
 */