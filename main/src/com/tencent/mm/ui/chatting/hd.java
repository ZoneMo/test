package com.tencent.mm.ui.chatting;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.model.s;
import com.tencent.mm.plugin.d.c.m;
import com.tencent.mm.ui.contact.SelectContactUI;

final class hd
  implements View.OnClickListener
{
  hd(ChattingUI paramChattingUI)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent(this.gPG.aal(), SelectContactUI.class);
    localIntent.putExtra("Contact_GroupFilter_Type", "@micromsg.qq.com");
    localIntent.putExtra("List_Type", 10);
    localIntent.putExtra("received_card_name", this.gPG.aJe());
    localIntent.putExtra("Block_list", this.gPG.getIntent().getStringExtra("Select_block_List"));
    localIntent.putExtra("recommend_friends", true);
    localIntent.putExtra("Need_Group_Item", false);
    this.gPG.startActivity(localIntent);
    s.te().cl(this.gPG.aJe());
    s.te().cl(this.gPG.aJN());
    m localm = m.dZN;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(2);
    arrayOfObject[1] = Integer.valueOf(0);
    localm.d(11003, arrayOfObject);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.hd
 * JD-Core Version:    0.6.2
 */