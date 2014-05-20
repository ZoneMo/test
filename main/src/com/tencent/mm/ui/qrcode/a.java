package com.tencent.mm.ui.qrcode;

import android.content.Intent;
import com.tencent.mm.model.be;
import com.tencent.mm.model.cd;
import com.tencent.mm.network.r;
import com.tencent.mm.ui.LauncherUI;

final class a
  implements cd
{
  a(GetQRCodeInfoUI paramGetQRCodeInfoUI)
  {
  }

  public final void a(r paramr)
  {
    if (paramr == null)
    {
      this.hdt.finish();
      return;
    }
    if ((be.se()) && (!be.uG()))
    {
      GetQRCodeInfoUI.a(this.hdt, this.hdt.getIntent().getDataString());
      return;
    }
    Intent localIntent = new Intent(this.hdt, LauncherUI.class);
    this.hdt.startActivity(localIntent);
    this.hdt.finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.qrcode.a
 * JD-Core Version:    0.6.2
 */