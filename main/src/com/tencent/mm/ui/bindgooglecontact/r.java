package com.tencent.mm.ui.bindgooglecontact;

import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.sdk.platformtools.aa;

final class r
  implements View.OnClickListener
{
  r(q paramq, o paramo)
  {
  }

  public final void onClick(View paramView)
  {
    aa.d("MicroMsg.GoogleContact.GoogleFriendAdapter", "onClick");
    if (o.a(this.gHR.gHP) != null)
    {
      p localp = o.a(this.gHR.gHP);
      int i = this.gHR.position;
      localp.nv(i);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindgooglecontact.r
 * JD-Core Version:    0.6.2
 */