package com.tencent.mm.model;

import com.tencent.mm.compatible.g.i;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.m;
import com.tencent.mm.storage.h;

final class p extends Thread
{
  String chI;
  String chJ;

  public p(String paramString1, String paramString2)
  {
    this.chI = paramString1;
    this.chJ = paramString2;
  }

  public final void run()
  {
    if ((cj.hX(this.chI)) || (cj.hX(this.chJ)));
    do
    {
      return;
      aa.d("MicroMsg.AccountStorage", "MoveDataFiles :" + this.chI + " to :" + this.chJ);
    }
    while ((!i.qd()) || (!this.chJ.substring(0, h.cfE.length()).equals(h.cfE)));
    m.f(this.chI + "image/", this.chJ + "image/", true);
    m.f(this.chI + "image2/", this.chJ + "image2/", true);
    m.f(this.chI + "avatar/", this.chJ + "avatar/", true);
    m.f(this.chI + "video/", this.chJ + "video/", true);
    m.f(this.chI + "voice/", this.chJ + "voice/", true);
    m.f(this.chI + "voice2/", this.chJ + "voice2/", true);
    m.f(this.chI + "package/", this.chJ + "package/", true);
    m.f(this.chI + "emoji/", this.chJ + "emoji/", true);
    m.f(this.chI + "mailapp/", this.chJ + "mailapp/", true);
    m.f(this.chI + "brandicon/", this.chJ + "brandicon/", true);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.model.p
 * JD-Core Version:    0.6.2
 */