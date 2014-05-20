package com.tencent.mm.plugin.webwx.ui;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.ak.a;

final class d
  implements View.OnClickListener
{
  d(WebWeiXinIntroductionUI paramWebWeiXinIntroductionUI)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("BaseScanUI_select_scan_mode", 1);
    localIntent.putExtra("BaseScanUI_only_scan_qrcode_with_zbar", true);
    localIntent.putExtra("GetFriendQRCodeUI.INTENT_FROM_ACTIVITY", 2);
    localIntent.putExtra("from_album", false);
    localIntent.putExtra("show_intro", false);
    localIntent.setFlags(65536);
    a.b(this.fff, "scanner", ".ui.BaseScanUI", localIntent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.webwx.ui.d
 * JD-Core Version:    0.6.2
 */