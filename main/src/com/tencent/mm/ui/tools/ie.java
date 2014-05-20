package com.tencent.mm.ui.tools;

import com.tencent.mm.plugin.webview.stub.al;

final class ie
{
  private int bLN;
  private String bQI;
  private int gQO;
  private int gQP;
  private String hnK;
  private long hnL;
  private long hnM;
  private String username;

  public ie(WebViewUI paramWebViewUI, String paramString1, String paramString2, String paramString3, int paramInt1, int paramInt2)
  {
    this.username = paramString1;
    this.bQI = paramString2;
    this.hnK = paramString3;
    this.gQO = paramInt1;
    this.gQP = paramInt2;
    this.bLN = WebViewUI.h(paramWebViewUI, paramString1);
    this.hnL = (System.currentTimeMillis() / 1000L);
  }

  public final void oS()
  {
    this.hnM = (System.currentTimeMillis() / 1000L - this.hnL);
    al localal = this.hnv.cOg;
    Object[] arrayOfObject = new Object[8];
    arrayOfObject[0] = this.username;
    arrayOfObject[1] = Integer.valueOf(this.gQO);
    arrayOfObject[2] = Integer.valueOf(this.gQP);
    arrayOfObject[3] = Integer.valueOf(this.bLN);
    arrayOfObject[4] = Long.valueOf(this.hnL);
    arrayOfObject[5] = Long.valueOf(this.hnM);
    arrayOfObject[6] = this.bQI;
    arrayOfObject[7] = this.hnK;
    en.a(localal, arrayOfObject);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.ie
 * JD-Core Version:    0.6.2
 */