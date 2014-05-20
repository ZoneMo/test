package com.tencent.mm.sdk.platformtools;

import android.os.Build.VERSION;
import android.webkit.WebView;

public final class cn
{
  public static void b(WebView paramWebView)
  {
    if (Build.VERSION.SDK_INT >= 5)
    {
      new cp();
      paramWebView.setScrollbarFadingEnabled(true);
      paramWebView.setScrollBarStyle(0);
      return;
    }
    new co();
    paramWebView.setScrollBarStyle(0);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.platformtools.cn
 * JD-Core Version:    0.6.2
 */