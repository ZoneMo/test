package com.tencent.mm.plugin.chatroom.ui;

import android.webkit.WebView;
import android.webkit.WebViewClient;

final class d extends WebViewClient
{
  d(RoomAnnouncementUI paramRoomAnnouncementUI)
  {
  }

  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    if (paramString.equals("weixin://chatroom/upgradeagree"))
    {
      f.a(this.cWz, RoomAnnouncementUI.b(this.cWz), RoomAnnouncementUI.c(this.cWz));
      return true;
    }
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.chatroom.ui.d
 * JD-Core Version:    0.6.2
 */