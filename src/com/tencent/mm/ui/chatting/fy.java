package com.tencent.mm.ui.chatting;

import android.content.Context;
import com.tencent.mm.a.c;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.bv;
import com.tencent.mm.model.v;
import com.tencent.mm.model.w;
import com.tencent.mm.pluginsdk.model.app.s;
import com.tencent.mm.pluginsdk.ui.aw;
import com.tencent.mm.sdk.modelmsg.WXEmojiObject;
import com.tencent.mm.sdk.modelmsg.WXMediaMessage;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.ap;
import com.tencent.mm.storage.u;
import com.tencent.mm.storage.y;
import com.tencent.mm.ui.base.dn;
import java.io.FileInputStream;

public final class fy
  implements aw
{
  private com.tencent.mm.storage.i cQI;
  private Context context;
  private String gMl;
  private boolean gOD = true;
  private boolean gOE = true;

  public fy(Context paramContext, com.tencent.mm.storage.i parami, String paramString)
  {
    this.context = paramContext;
    this.cQI = parami;
    this.gMl = paramString;
    if (com.tencent.mm.storage.i.tC(this.gMl))
      this.gOE = false;
    if (com.tencent.mm.storage.i.tA(this.gMl))
      this.gOD = false;
    if (com.tencent.mm.storage.i.ty(this.gMl))
      this.gOD = false;
    String str;
    if ((this.cQI != null) && (com.tencent.mm.storage.i.tC(this.cQI.getUsername())))
      str = this.gMl;
    while (true)
    {
      if (w.cq(str))
        this.gOE = false;
      return;
      if (this.cQI == null)
        str = null;
      else
        str = this.cQI.getUsername();
    }
  }

  public final boolean Wh()
  {
    return this.gOE;
  }

  public final boolean Wi()
  {
    return this.gOD;
  }

  public final void e(y paramy)
  {
    if (!be.uz().isSDCardAvailable())
      dn.bW(this.context);
    while (paramy == null)
      return;
    if ((this.cQI.getUsername().equals("medianote")) && ((0x4000 & v.tl()) == 0));
    for (int i = 1; i != 0; i = 0)
    {
      paramy.mc(0);
      paramy.setState(y.ghw);
      com.tencent.mm.pluginsdk.h.apj().b(paramy);
      ak localak = new ak();
      localak.setType(47);
      localak.uK("medianote");
      localak.bZ(1);
      if (paramy.apQ())
        localak.setContent(u.a(v.th(), 0L, false));
      localak.uN(paramy.yK());
      localak.G(bv.dA(localak.aCl()));
      localak.setStatus(2);
      be.uz().sw().v(localak);
      return;
    }
    com.tencent.mm.pluginsdk.i locali = com.tencent.mm.pluginsdk.h.apj();
    if (cj.hX(this.gMl));
    for (String str = this.cQI.getUsername(); ; str = this.gMl)
    {
      locali.a(str, paramy, null);
      return;
    }
  }

  public final void f(y paramy)
  {
    if (!be.uz().isSDCardAvailable())
    {
      dn.bW(this.context);
      return;
    }
    WXMediaMessage localWXMediaMessage = new WXMediaMessage();
    String str = be.uz().sJ() + paramy.yK();
    if (c.as(str + "_thumb"))
    {
      int i = c.ar(str + "_thumb");
      localWXMediaMessage.thumbData = c.g(str + "_thumb", 0, i);
    }
    while (true)
    {
      localWXMediaMessage.mediaObject = new WXEmojiObject(str);
      s.a(localWXMediaMessage, paramy.aBJ(), null, this.gMl, 0, paramy.yK());
      return;
      try
      {
        FileInputStream localFileInputStream = new FileInputStream(str);
        localWXMediaMessage.setThumbImage(com.tencent.mm.sdk.platformtools.h.a(localFileInputStream, 1.0F));
        localFileInputStream.close();
      }
      catch (Exception localException)
      {
        aa.e("MicroMsg.ChattingSmileyPanelImpl", "sendAppMsgEmoji Fail cause there is no thumb");
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.fy
 * JD-Core Version:    0.6.2
 */