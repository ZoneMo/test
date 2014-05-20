package com.tencent.mm.ui.friend;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;
import com.tencent.mm.model.be;
import com.tencent.mm.modelfriend.p;
import com.tencent.mm.plugin.a.b;

final class ak
  implements View.OnClickListener
{
  ak(FindMContactAddUI paramFindMContactAddUI)
  {
  }

  public final void onClick(View paramView)
  {
    b.jdMethod_if(be.uv() + "," + this.hbn.getClass().getName() + ",R300_300_AddAllButton," + be.ds("R300_300_AddAllButton") + ",3");
    if (FindMContactAddUI.e(this.hbn) == 2)
    {
      FindMContactAddUI.c(this.hbn).W(true);
      FindMContactAddUI.c(this.hbn).notifyDataSetChanged();
      FindMContactAddUI.f(this.hbn).setVisibility(8);
      if (FindMContactAddUI.g(this.hbn) != null)
        FindMContactAddUI.g(this.hbn).setVisibility(0);
    }
    do
    {
      return;
      if (FindMContactAddUI.e(this.hbn) == 1)
      {
        FindMContactAddUI.c(this.hbn).W(true);
        FindMContactAddUI.c(this.hbn).notifyDataSetChanged();
        FindMContactAddUI.i(this.hbn);
        return;
      }
      FindMContactAddUI.c(this.hbn).W(true);
      FindMContactAddUI.c(this.hbn).notifyDataSetChanged();
      FindMContactAddUI.f(this.hbn).setVisibility(8);
    }
    while (FindMContactAddUI.g(this.hbn) == null);
    FindMContactAddUI.g(this.hbn).setVisibility(0);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.friend.ak
 * JD-Core Version:    0.6.2
 */