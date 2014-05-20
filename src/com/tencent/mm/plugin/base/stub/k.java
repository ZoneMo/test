package com.tencent.mm.plugin.base.stub;

import android.content.Intent;
import android.net.Uri;
import android.webkit.DownloadListener;

final class k
  implements DownloadListener
{
  k(OAuthUI paramOAuthUI)
  {
  }

  public final void onDownloadStart(String paramString1, String paramString2, String paramString3, String paramString4, long paramLong)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(paramString1));
    this.cOo.startActivity(localIntent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.base.stub.k
 * JD-Core Version:    0.6.2
 */