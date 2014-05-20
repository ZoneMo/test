package com.tencent.mm.ui.friend;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;
import com.tencent.mm.modelfriend.p;

final class al
  implements View.OnClickListener
{
  al(FindMContactAddUI paramFindMContactAddUI)
  {
  }

  public final void onClick(View paramView)
  {
    FindMContactAddUI.f(this.hbn).setVisibility(0);
    FindMContactAddUI.g(this.hbn).setVisibility(8);
    FindMContactAddUI.c(this.hbn).W(false);
    FindMContactAddUI.c(this.hbn).notifyDataSetChanged();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.friend.al
 * JD-Core Version:    0.6.2
 */