package com.tencent.mm.ui.tools;

import android.content.Intent;
import android.os.Bundle;
import com.tencent.mm.plugin.webview.stub.al;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.net.URLDecoder;

final class ic
  implements ib
{
  private ic(WebViewUI paramWebViewUI)
  {
  }

  public final String aOe()
  {
    return "weixin://private/gethtml/";
  }

  public final boolean xL(String paramString)
  {
    String str1 = paramString.substring(25);
    try
    {
      String str2 = URLDecoder.decode(str1);
      Bundle localBundle = new Bundle();
      localBundle.putString("nowUrl", WebViewUI.K(this.hnv));
      localBundle.putString("tweetid", cj.hW(this.hnv.getIntent().getStringExtra("tweetid")));
      localBundle.putString("htmlData", str2);
      localBundle.putInt("type", this.hnv.getIntent().getIntExtra("type", 0));
      this.hnv.cOg.b(3, localBundle);
      return true;
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.WebViewUI", "edw ViewImageGetHtmlHandler handleUrl, ex = " + localException.getMessage());
    }
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.ic
 * JD-Core Version:    0.6.2
 */