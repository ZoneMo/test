package com.tencent.mm.plugin.base.stub;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import android.webkit.WebView;

final class m
  implements MenuItem.OnMenuItemClickListener
{
  m(OAuthUI paramOAuthUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    if (OAuthUI.c(this.cOo) != null)
      OAuthUI.c(this.cOo);
    this.cOo.cOj.stopLoading();
    OAuthUI.d(this.cOo);
    OAuthUI.e(this.cOo);
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.base.stub.m
 * JD-Core Version:    0.6.2
 */