package com.tencent.mm.ui.friend;

import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.ah.e;
import com.tencent.mm.ah.f;
import com.tencent.mm.ah.k;
import com.tencent.mm.pluginsdk.ui.applet.a;
import com.tencent.mm.pluginsdk.ui.preference.n;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.ao;

final class s
  implements View.OnClickListener
{
  s(m paramm)
  {
  }

  public final void onClick(View paramView)
  {
    n localn;
    e locale;
    if ((paramView.getTag() instanceof n))
    {
      aa.d("MicroMsg.FMessageConversationUI", "verifyOkOnClick onClick");
      localn = (n)paramView.getTag();
      locale = k.Dx().gI(localn.username);
      if ((locale == null) || (locale.field_msgContent == null))
        aa.e("MicroMsg.FMessageConversationUI", "lastRecvFmsg is null, verify fail, talker = " + localn.username);
    }
    else
    {
      return;
    }
    ao localao = ao.uU(locale.field_msgContent);
    if (localao == null)
    {
      aa.e("MicroMsg.FMessageConversationUI", "verify is null, verify fail, talker = " + localn.username);
      return;
    }
    aa.d("MicroMsg.FMessageConversationUI", "try to addcontact, username = " + localn.username + ", opcode = MM_VERIFYUSER_VERIFYOK");
    new a(m.a(this.haR), new t(this, localn, locale)).j(localn.username, localao.aCK(), localn.elN);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.friend.s
 * JD-Core Version:    0.6.2
 */