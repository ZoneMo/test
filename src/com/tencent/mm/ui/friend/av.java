package com.tencent.mm.ui.friend;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;
import com.tencent.mm.modelfriend.p;

final class av
  implements View.OnClickListener
{
  av(FindMContactInviteUI paramFindMContactInviteUI)
  {
  }

  public final void onClick(View paramView)
  {
    FindMContactInviteUI.e(this.hbp).setVisibility(0);
    FindMContactInviteUI.f(this.hbp).setVisibility(8);
    FindMContactInviteUI.b(this.hbp).W(false);
    FindMContactInviteUI.b(this.hbp).notifyDataSetChanged();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.friend.av
 * JD-Core Version:    0.6.2
 */