package com.tencent.mm.plugin.base.stub;

import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.tools.hq;

final class j extends hq
{
  j(OAuthUI paramOAuthUI)
  {
    super(paramOAuthUI);
  }

  public final boolean iF(String paramString)
  {
    aa.d("MicroMsg.OAuthUI", "mmShouldOverrideUrlLoading, url = " + paramString);
    OAuthUI.a(this.cOo, paramString);
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.base.stub.j
 * JD-Core Version:    0.6.2
 */