package com.tencent.mm.ui.friend;

import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.ah.e;
import com.tencent.mm.ah.f;
import com.tencent.mm.ah.k;
import com.tencent.mm.pluginsdk.ui.applet.a;
import com.tencent.mm.pluginsdk.ui.preference.n;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.LinkedList;

final class q
  implements View.OnClickListener
{
  q(m paramm)
  {
  }

  public final void onClick(View paramView)
  {
    if ((paramView.getTag() instanceof n))
    {
      aa.d("MicroMsg.FMessageConversationUI", "addOnClick onClick");
      n localn = (n)paramView.getTag();
      e locale = k.Dx().gI(localn.username);
      a locala = new a(m.a(this.haR), new r(this, localn, locale));
      aa.d("MicroMsg.FMessageConversationUI", "try to addcontact, username = " + localn.username + ", opcode = MM_VERIFYUSER_ADDCONTACT");
      LinkedList localLinkedList = new LinkedList();
      localLinkedList.add(Integer.valueOf(localn.elN));
      locala.e(localn.username, localLinkedList);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.friend.q
 * JD-Core Version:    0.6.2
 */