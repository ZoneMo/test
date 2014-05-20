package com.tencent.mm.ui.tools.jsapi;

import com.tencent.mm.pluginsdk.model.app.u;
import com.tencent.mm.pluginsdk.model.downloader.c;
import com.tencent.mm.pluginsdk.model.downloader.e;
import com.tencent.mm.sdk.platformtools.aa;

final class v
  implements c
{
  v(p paramp, ao paramao, e parame)
  {
  }

  public final void e(String paramString1, String paramString2, boolean paramBoolean)
  {
    p localp;
    ao localao;
    String str;
    if (!paramBoolean)
    {
      aa.e("MicroMsg.MsgHandler", "onCheckFinished fail, origMD5 = " + paramString1 + ", checkedMD5 = " + paramString2);
      localp = this.hpx;
      localao = this.hpy;
      str = "install_download_task:fail_checkmd5";
    }
    while (true)
    {
      p.a(localp, localao, str, null);
      return;
      boolean bool = u.b(p.a(this.hpx), this.hpB.fim);
      localp = this.hpx;
      localao = this.hpy;
      if (bool)
        str = "install_download_task:ok";
      else
        str = "install_download_task:fail";
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.jsapi.v
 * JD-Core Version:    0.6.2
 */