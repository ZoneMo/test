package com.tencent.mm.ui.friend;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;
import com.tencent.mm.model.be;
import com.tencent.mm.modelfriend.p;
import com.tencent.mm.plugin.a.b;

final class au
  implements View.OnClickListener
{
  au(FindMContactInviteUI paramFindMContactInviteUI)
  {
  }

  public final void onClick(View paramView)
  {
    b.jdMethod_if(be.uv() + "," + this.hbp.getClass().getName() + ",R300_400_AddAllButton," + be.ds("R300_300_AddAllButton") + ",3");
    if (FindMContactInviteUI.d(this.hbp) == 2)
    {
      FindMContactInviteUI.b(this.hbp).W(true);
      FindMContactInviteUI.b(this.hbp).notifyDataSetChanged();
      FindMContactInviteUI.e(this.hbp).setVisibility(8);
      if (FindMContactInviteUI.f(this.hbp) != null)
        FindMContactInviteUI.f(this.hbp).setVisibility(0);
    }
    do
    {
      return;
      if (FindMContactInviteUI.d(this.hbp) == 1)
      {
        FindMContactInviteUI.b(this.hbp).W(true);
        FindMContactInviteUI.b(this.hbp).notifyDataSetChanged();
        FindMContactInviteUI.h(this.hbp);
        return;
      }
      FindMContactInviteUI.b(this.hbp).W(true);
      FindMContactInviteUI.b(this.hbp).notifyDataSetChanged();
      FindMContactInviteUI.e(this.hbp).setVisibility(8);
    }
    while (FindMContactInviteUI.f(this.hbp) == null);
    FindMContactInviteUI.f(this.hbp).setVisibility(0);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.friend.au
 * JD-Core Version:    0.6.2
 */