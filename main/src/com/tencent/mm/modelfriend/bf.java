package com.tencent.mm.modelfriend;

import android.content.Intent;
import com.tencent.mm.al.a;
import com.tencent.mm.c.a.f;
import com.tencent.mm.c.a.fz;
import com.tencent.mm.c.a.ga;
import com.tencent.mm.sdk.b.g;
import com.tencent.mm.sdk.platformtools.aa;

final class bf extends g
{
  bf(ax paramax)
  {
  }

  public final boolean a(com.tencent.mm.sdk.b.e parame)
  {
    Intent localIntent;
    String str;
    if (parame.getId().equals("SetLocalQQMobile"))
    {
      fz localfz = (fz)parame;
      localIntent = localfz.bQx.intent;
      str = localfz.bQx.username;
      if ((localIntent != null) && (str != null) && (str.length() != 0))
        break label109;
      aa.e("MicroMsg.AccountSyncUtil", "setLocalQQMobile fail, intent = " + localIntent + ", username = " + str);
    }
    while (true)
    {
      if (parame.getId().equals("AddFMessageCardClick"))
        a.le(((com.tencent.mm.c.a.e)parame).bLM.bLN);
      return false;
      label109: av localav = ax.Aq().fM(str);
      if (localav != null)
      {
        localIntent.putExtra("Contact_Uin", localav.Af());
        localIntent.putExtra("Contact_QQNick", localav.getDisplayName());
      }
      h localh = ax.Al().fq(str);
      if (localh != null)
        localIntent.putExtra("Contact_Mobile_MD5", localh.yK());
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelfriend.bf
 * JD-Core Version:    0.6.2
 */