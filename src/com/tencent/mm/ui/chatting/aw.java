package com.tencent.mm.ui.chatting;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.contact.SelectContactUI;

final class aw
  implements View.OnClickListener
{
  aw(ChatMoreSelectUI paramChatMoreSelectUI)
  {
  }

  public final void onClick(View paramView)
  {
    aa.v("MicroMsg.ChatMoreSelectUI", "on header view click");
    Intent localIntent = new Intent(this.gLK, SelectContactUI.class);
    localIntent.putExtra("Contact_GroupFilter_Type", "@micromsg.qq.com");
    localIntent.putExtra("List_Type", 10);
    localIntent.putExtra("Need_Result", true);
    localIntent.putExtra("Need_Group_Item", true);
    if ((0x8 & ChatMoreSelectUI.b(this.gLK)) == 0);
    for (boolean bool = true; ; bool = false)
    {
      localIntent.putExtra("Disable_Spuser_Medianote", bool);
      this.gLK.startActivityForResult(localIntent, 1);
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.aw
 * JD-Core Version:    0.6.2
 */