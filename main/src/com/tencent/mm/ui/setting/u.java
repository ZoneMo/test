package com.tencent.mm.ui.setting;

import android.content.Intent;
import android.view.MenuItem;
import com.tencent.mm.ad.b;
import com.tencent.mm.ak.a;
import com.tencent.mm.model.w;
import com.tencent.mm.ui.base.cd;

final class u
  implements cd
{
  u(SelfQRCodeUI paramSelfQRCodeUI)
  {
  }

  public final void d(MenuItem paramMenuItem, int paramInt)
  {
    switch (paramMenuItem.getItemId())
    {
    default:
      return;
    case 1:
      this.heg.aMb();
      return;
    case 2:
      if (w.cp(SelfQRCodeUI.a(this.heg)))
      {
        String str = b.gj(SelfQRCodeUI.a(this.heg));
        a.b(this.heg, "qqmail", ".ui.RoomInfoShareQrUI", new Intent().putExtra("from_userName", SelfQRCodeUI.a(this.heg)).putExtra("qrcode_file_path", str));
        return;
      }
      this.heg.aMl();
      return;
    case 3:
    }
    this.heg.xu(SelfQRCodeUI.a(this.heg));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.u
 * JD-Core Version:    0.6.2
 */