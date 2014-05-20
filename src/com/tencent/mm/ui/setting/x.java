package com.tencent.mm.ui.setting;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import android.widget.EditText;
import com.tencent.mm.ak.a;
import com.tencent.mm.compatible.c.p;
import com.tencent.mm.model.be;
import com.tencent.mm.modelsimple.al;
import com.tencent.mm.n.ac;
import com.tencent.mm.sdk.platformtools.ba;
import com.tencent.mm.storage.cd;
import com.tencent.mm.ui.base.h;

final class x
  implements MenuItem.OnMenuItemClickListener
{
  x(SendFeedBackUI paramSendFeedBackUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    String str = SendFeedBackUI.a(this.heh).getText().toString().trim();
    if (str.length() > 0)
    {
      if (str.startsWith("//traceroute"))
      {
        SendFeedBackUI.a(this.heh).setText("");
        a.l(this.heh.aal(), "traceroute", ".ui.NetworkDiagnoseIntroUI");
      }
    }
    else
      return false;
    al localal = new al(SendFeedBackUI.aMm(), str + " key " + cd.aDp() + " local key " + cd.aDo() + "NetType:" + ba.bl(this.heh.getApplicationContext()) + " hasNeon: " + p.pP() + " isArmv6: " + p.pR() + " isArmv7: " + p.pQ());
    be.uA().a(153, this.heh);
    be.uA().d(localal);
    this.heh.SM();
    SendFeedBackUI localSendFeedBackUI1 = this.heh;
    SendFeedBackUI localSendFeedBackUI2 = this.heh;
    this.heh.getString(2131167675);
    SendFeedBackUI.a(localSendFeedBackUI1, h.a(localSendFeedBackUI2, this.heh.getString(2131167678), true, new y(this, localal)));
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.x
 * JD-Core Version:    0.6.2
 */