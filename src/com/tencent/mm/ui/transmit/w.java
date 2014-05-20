package com.tencent.mm.ui.transmit;

import android.app.Activity;
import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import com.tencent.mm.storage.n;
import com.tencent.mm.ui.contact.SelectContactUI;

final class w
  implements AdapterView.OnItemClickListener
{
  w(SelectConversationUI paramSelectConversationUI)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (paramInt == 0)
    {
      if (SelectConversationUI.b(this.hrR))
      {
        SelectConversationUI.c(this.hrR);
        return;
      }
      if (SelectConversationUI.d(this.hrR))
      {
        SelectConversationUI.e(this.hrR);
        return;
      }
      Intent localIntent = new Intent();
      localIntent.setClass(this.hrR, SelectContactUI.class);
      localIntent.putExtra("Contact_GroupFilter_Type", "@micromsg.qq.com");
      localIntent.putExtra("List_Type", 5);
      localIntent.putExtra("Need_Result", true);
      localIntent.putExtra("Need_Group_Item", true);
      if ((0x8 & SelectConversationUI.f(this.hrR)) == 0);
      for (boolean bool = true; ; bool = false)
      {
        localIntent.putExtra("Disable_Spuser_Medianote", bool);
        localIntent.putExtra("MMActivity.OverrideEnterAnimation", 2130968606);
        localIntent.putExtra("MMActivity.OverrideExitAnimation", 2130968621);
        this.hrR.aal().startActivityForResult(localIntent, 1);
        this.hrR.overridePendingTransition(2130968623, 2130968607);
        return;
      }
    }
    int i = paramInt - SelectConversationUI.g(this.hrR).getHeaderViewsCount();
    n localn = (n)SelectConversationUI.a(this.hrR).getItem(i);
    SelectConversationUI.a(this.hrR, localn.getUsername());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.transmit.w
 * JD-Core Version:    0.6.2
 */