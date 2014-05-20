package com.tencent.mm.ui.setting;

import android.widget.Toast;
import com.tencent.mm.pluginsdk.ui.tools.s;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.h;
import com.tencent.mm.ui.base.v;

final class i
  implements v
{
  i(MoreTabLiteUI paramMoreTabLiteUI)
  {
  }

  public final void bo(int paramInt)
  {
    switch (paramInt)
    {
    default:
    case 0:
      do
      {
        return;
        aa.d("MicroMsg.SettingsPersonalInfoUI", "click button 1, take picture");
      }
      while (s.a(this.hdS.aal(), h.cfG, "microMsg." + System.currentTimeMillis() + ".jpg", 3));
      Toast.makeText(this.hdS.aal(), this.hdS.getString(2131165340), 1).show();
      return;
    case 1:
    }
    aa.d("MicroMsg.SettingsPersonalInfoUI", "click button 0, pick up an image");
    s.e(this.hdS.aal(), 2);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.i
 * JD-Core Version:    0.6.2
 */