package com.tencent.mm.ui.conversation;

import android.view.View;
import android.view.View.OnClickListener;

final class b
  implements View.OnClickListener
{
  b(ADListView paramADListView)
  {
  }

  public final void onClick(View paramView)
  {
    if ((ADListView.a(this.gXO) != null) && (ADListView.b(this.gXO) != null))
    {
      bz localbz = ADListView.a(this.gXO).nM(ADListView.c(this.gXO));
      ADListView.b(this.gXO).xa(localbz.getId());
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.conversation.b
 * JD-Core Version:    0.6.2
 */