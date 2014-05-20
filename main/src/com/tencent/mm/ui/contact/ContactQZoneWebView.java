package com.tencent.mm.ui.contact;

import android.content.Intent;
import android.os.Bundle;
import android.webkit.WebView;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.gallery.GestureGalleryUI;
import com.tencent.mm.ui.tools.WebViewUI;

public class ContactQZoneWebView extends WebViewUI
{
  private String dEZ = "";
  private boolean gTp = false;
  private String gTq = "";

  protected final boolean Iz()
  {
    return true;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    vT(getString(2131166368));
    this.cOj.setWebViewClient(new bi(this));
    String str = getIntent().getStringExtra("data");
    if ((str != null) && (str.length() != 0))
    {
      this.cOj.loadDataWithBaseURL(getIntent().getStringExtra("baseurl"), str, "text/html", "utf-8", null);
      aa.d("MicroMsg.ContactQZoneWebView", "loadUrl:loadDataWithBaseUrl, data = " + str);
      return;
    }
    this.cOj.loadUrl(this.bQI);
    aa.d("MicroMsg.ContactQZoneWebView", "loadUrl:loadUrl, url = " + this.bQI);
  }

  protected void onResume()
  {
    super.onResume();
    this.gTp = false;
  }

  final void wK(String paramString)
  {
    if (this.gTp)
      return;
    this.gTp = true;
    String str = paramString.substring(19);
    aa.d("MicroMsg.ContactQZoneWebView", "get url :" + str);
    Intent localIntent = new Intent();
    localIntent.setClass(this, GestureGalleryUI.class);
    localIntent.putExtra("nowUrl", str);
    localIntent.putExtra("tweetid", au.hW(getIntent().getStringExtra("tweetid")));
    localIntent.putExtra("htmlData", this.gTq);
    localIntent.putExtra("type", getIntent().getIntExtra("type", 0));
    startActivity(localIntent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.ContactQZoneWebView
 * JD-Core Version:    0.6.2
 */