package com.tencent.mm.ui.conversation;

import android.view.View;
import android.view.View.OnClickListener;

final class c
  implements View.OnClickListener
{
  c(ADListView paramADListView)
  {
  }

  public final void onClick(View paramView)
  {
    if ((ADListView.a(this.gXO) != null) && (ADListView.b(this.gXO) != null))
    {
      bz localbz = ADListView.a(this.gXO).nM(ADListView.c(this.gXO));
      ADListView.b(this.gXO).bh(localbz.getId(), localbz.getUrl());
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.conversation.c
 * JD-Core Version:    0.6.2
 */