package com.tencent.mm.ui.friend;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.sdk.platformtools.aa;

final class j
  implements View.OnClickListener
{
  j(f paramf)
  {
  }

  public final void onClick(View paramView)
  {
    aa.d("MicroMsg.FMessageContactView", "initNoNew, goto FMessageConversationUI");
    Intent localIntent = new Intent(f.c(this.haO), FMessageConversationUI.class);
    f.c(this.haO).startActivity(localIntent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.friend.j
 * JD-Core Version:    0.6.2
 */