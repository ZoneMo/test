package com.tencent.mm.plugin.chatroom.ui;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Bundle;
import android.view.ViewGroup;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.n;
import com.tencent.mm.sdk.platformtools.z;
import com.tencent.mm.ui.MMActivity;

public class RoomAnnouncementUI extends MMActivity
{
  private WebView cWw;
  private boolean cWx;
  private String cWy;

  @SuppressLint({"SetJavaScriptEnabled"})
  protected final void FR()
  {
    mn(n.bwy);
    this.cWw = ((WebView)findViewById(i.aRd));
    this.cWw.getSettings().setJavaScriptEnabled(true);
    this.cWw.getSettings().setDomStorageEnabled(true);
    this.cWw.getSettings().setBuiltInZoomControls(true);
    this.cWw.getSettings().setUseWideViewPort(true);
    this.cWw.getSettings().setLoadWithOverviewMode(true);
    this.cWw.getSettings().setSavePassword(false);
    this.cWw.getSettings().setSaveFormData(false);
    this.cWw.getSettings().setGeolocationEnabled(true);
    this.cWw.getSettings().setJavaScriptCanOpenWindowsAutomatically(false);
    this.cWw.setWebChromeClient(new RoomAnnouncementUI.1(this));
    this.cWw.setWebViewClient(new d(this));
    a(new e(this));
    int i = n.bgC;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = z.azj();
    String str = getString(i, arrayOfObject);
    this.cWw.loadUrl(str);
  }

  public final int getLayoutId()
  {
    return k.aSW;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.cWx = getIntent().getBooleanExtra("need_bind_mobile", false);
    this.cWy = getIntent().getStringExtra("RoomInfo_Id");
    FR();
  }

  protected void onDestroy()
  {
    if (this.cWw != null)
    {
      this.cWw.setVisibility(8);
      ((ViewGroup)this.cWw.getParent()).removeView(this.cWw);
      this.cWw.removeAllViews();
      this.cWw.destroy();
      this.cWw = null;
      System.gc();
    }
    super.onDestroy();
  }

  public void onPause()
  {
    super.onPause();
  }

  public void onResume()
  {
    super.onResume();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.chatroom.ui.RoomAnnouncementUI
 * JD-Core Version:    0.6.2
 */