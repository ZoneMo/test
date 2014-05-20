package com.tencent.mm.plugin.scanner.ui;

import android.content.Intent;
import android.net.Uri;
import com.tencent.mm.ui.base.v;

final class bt
  implements v
{
  bt(VcardContactUI paramVcardContactUI, String paramString)
  {
  }

  public final void bo(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return;
    case 0:
    }
    Intent localIntent = new Intent("android.intent.action.DIAL");
    localIntent.setFlags(268435456);
    localIntent.setData(Uri.parse("tel:" + this.efx));
    this.efy.startActivity(localIntent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.ui.bt
 * JD-Core Version:    0.6.2
 */