package com.tencent.mm.plugin.scanner.ui;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.tencent.mm.f;
import com.tencent.mm.plugin.scanner.a;
import com.tencent.mm.pluginsdk.e;
import com.tencent.mm.pluginsdk.ui.tools.y;

final class bk
  implements Runnable
{
  bk(bi parambi, String paramString)
  {
  }

  public final void run()
  {
    if ((this.eeR.edK == null) || (bi.e(this.eeR)))
      return;
    y.a(new com.tencent.mm.pluginsdk.ui.tools.n());
    Intent localIntent = new Intent();
    Bundle localBundle = new Bundle();
    localBundle.putString("jsapi_args_appid", "wx751a1acca5688ba3");
    localIntent.putExtra("jsapiargs", localBundle);
    localIntent.putExtra("rawUrl", this.eeS);
    localIntent.putExtra("show_bottom", false);
    localIntent.putExtra("title", com.tencent.mm.n.bxj);
    localIntent.putExtra("webview_bg_color_rsID", f.black);
    localIntent.putExtra("geta8key_scene", 13);
    localIntent.setFlags(65536);
    a.Tm().h(localIntent, this.eeR.edK.aal());
    this.eeR.edK.aal().finish();
    this.eeR.edK.aal().overridePendingTransition(0, 0);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.ui.bk
 * JD-Core Version:    0.6.2
 */