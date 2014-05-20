package com.tencent.mm.ui.bindgooglecontact;

import com.tencent.mm.modelfriend.ad;
import com.tencent.mm.modelfriend.ax;
import com.tencent.mm.pluginsdk.ui.applet.f;
import com.tencent.mm.sdk.platformtools.aa;

final class u
  implements f
{
  u(GoogleFriendUI paramGoogleFriendUI)
  {
  }

  public final void a(boolean paramBoolean1, boolean paramBoolean2, String paramString1, String paramString2)
  {
    aa.d("MicroMsg.GoogleContact.GoogleFriendUI", "MicroMsg.AddContact hasSentVerify:" + paramBoolean2);
    if (paramBoolean2)
    {
      aa.e("MicroMsg.GoogleContact.GoogleFriendUI", "gmailItem:%s", new Object[] { paramString2 });
      ax.At().s(paramString2, 1);
    }
    while (true)
    {
      GoogleFriendUI.a(this.gHY).FZ();
      return;
      ax.At().s(paramString2, 2);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindgooglecontact.u
 * JD-Core Version:    0.6.2
 */