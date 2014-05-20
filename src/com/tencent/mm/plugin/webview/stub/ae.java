package com.tencent.mm.plugin.webview.stub;

import android.content.Intent;
import android.os.Bundle;
import com.tencent.mm.plugin.webview.a.a;
import com.tencent.mm.pluginsdk.e;

final class ae
  implements Runnable
{
  ae(m paramm, Bundle paramBundle)
  {
  }

  public final void run()
  {
    Intent localIntent = new Intent();
    localIntent.addFlags(268435456);
    localIntent.putExtras(this.cOv);
    a.cHS.p(localIntent, this.feK.feJ);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.webview.stub.ae
 * JD-Core Version:    0.6.2
 */