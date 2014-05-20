package com.tencent.mm.ui.friend;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.e;

final class k
  implements View.OnClickListener
{
  k(f paramf)
  {
  }

  public final void onClick(View paramView)
  {
    aa.d("MicroMsg.FMessageContactView", "initSingleNew, not goto ContactInfoUI, goto FMessageConversationUI");
    be.uz().sr().set(143618, Integer.valueOf(0));
    Intent localIntent = new Intent(f.c(this.haO), FMessageConversationUI.class);
    f.c(this.haO).startActivity(localIntent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.friend.k
 * JD-Core Version:    0.6.2
 */