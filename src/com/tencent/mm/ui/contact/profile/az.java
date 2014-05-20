package com.tencent.mm.ui.contact.profile;

import android.app.Activity;
import android.content.Intent;
import com.tencent.mm.c.a.ei;
import com.tencent.mm.c.a.ek;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.sdk.b.a;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.ui.applet.u;
import com.tencent.mm.ui.base.v;
import com.tencent.mm.ui.chatting.ChattingUI;

final class az
  implements v
{
  az(ay paramay, String paramString1, String paramString2)
  {
  }

  public final void bo(int paramInt)
  {
    switch (paramInt)
    {
    default:
    case 0:
      ei localei;
      do
      {
        do
          return;
        while (au.hX(this.gWE));
        localei = new ei();
        localei.bPh.bNK = 0;
        localei.bPh.bPj = (this.gWE + "@qqim");
        localei.bPh.bPk = this.gWF;
        a.ayH().f(localei);
      }
      while (!localei.bPi.bMh);
      Intent localIntent = new Intent(ay.a(this.gWG), ChattingUI.class);
      localIntent.putExtra("Chat_User", this.gWE + "@qqim");
      ay.a(this.gWG).startActivity(localIntent);
      return;
    case 1:
    }
    new u(ay.a(this.gWG)).mD(this.gWE);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.az
 * JD-Core Version:    0.6.2
 */