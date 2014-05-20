package com.tencent.mm.plugin.base.stub;

import android.webkit.WebView;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;

final class n
  implements h
{
  n(OAuthUI paramOAuthUI)
  {
  }

  public final void a(e parame, String paramString, boolean paramBoolean)
  {
    aa.d("MicroMsg.OAuthUI", "onResult, url = " + paramString + ", networkAvailable = " + paramBoolean);
    if (parame != null)
      parame.release();
    if (!paramBoolean);
    while ((cj.hX(paramString)) || (this.cOo.cOj == null))
      try
      {
        String str2 = this.cOo.getString(2131168169);
        str1 = str2;
        aa.d("MicroMsg.OAuthUI", "onResult, html = " + str1);
        if (this.cOo.cOj != null)
          this.cOo.cOj.loadUrl(str1);
        return;
      }
      catch (Exception localException)
      {
        while (true)
          String str1 = null;
      }
    this.cOo.cOj.loadUrl(paramString);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.base.stub.n
 * JD-Core Version:    0.6.2
 */