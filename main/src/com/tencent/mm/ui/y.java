package com.tencent.mm.ui;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.ui.contact.SelectContactUI;
import java.util.LinkedList;
import java.util.List;

final class y
  implements View.OnClickListener
{
  y(GrantRoomUI paramGrantRoomUI)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent(this.glv.aal(), SelectContactUI.class);
    localIntent.putExtra("Contact_GroupFilter_Type", "@micromsg.qq.com");
    localIntent.putExtra("List_Type", 4);
    localIntent.putExtra("select_contact_pick_result", true);
    LinkedList localLinkedList = new LinkedList();
    localLinkedList.add("officialaccounts");
    localIntent.putExtra("Block_list", au.a(localLinkedList, ","));
    localIntent.putExtra("Add_SendCard", true);
    this.glv.startActivityForResult(localIntent, 1);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.y
 * JD-Core Version:    0.6.2
 */