package com.tencent.mm.ui.contact;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

final class eg
  implements View.OnClickListener
{
  eg(SelectContactUI paramSelectContactUI)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent(this.gVn, GroupCardSelectUI.class);
    localIntent.putExtra("group_select_type", true);
    localIntent.putExtra("group_select_need_result", true);
    this.gVn.startActivityForResult(localIntent, 4);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.eg
 * JD-Core Version:    0.6.2
 */