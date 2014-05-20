package com.tencent.mm.plugin.chatroom.ui;

import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import com.tencent.mm.ui.base.h;

class RoomAnnouncementUI$1 extends WebChromeClient
{
  RoomAnnouncementUI$1(RoomAnnouncementUI paramRoomAnnouncementUI)
  {
  }

  public boolean onJsAlert(WebView paramWebView, String paramString1, String paramString2, JsResult paramJsResult)
  {
    h.a(this.cWz, paramString2, null, new c(this));
    paramJsResult.cancel();
    return true;
  }

  public void onSelectionStart(WebView paramWebView)
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.chatroom.ui.RoomAnnouncementUI.1
 * JD-Core Version:    0.6.2
 */