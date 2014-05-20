package com.tencent.mm.ui.contact;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

final class ef
  implements View.OnClickListener
{
  ef(SelectContactUI paramSelectContactUI)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent(this.gVn, GroupCardSelectUI.class);
    localIntent.putExtra("group_select_type", false);
    this.gVn.startActivityForResult(localIntent, 4);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.ef
 * JD-Core Version:    0.6.2
 */