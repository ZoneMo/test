package com.tencent.mm.ui.chatting;

import com.tencent.mm.plugin.d.c.m;
import com.tencent.mm.pluginsdk.ui.chat.ChatFooter;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.bu;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.i;
import com.tencent.mm.ui.tools.eo;
import java.util.List;

public final class fn
{
  public static bu gOp = null;
  private eo diw;
  private i eSm;
  private boolean gJU;
  private boolean gNS = false;
  private ChattingUI gOq;
  private ChattingFooterMoreBtnBar gOr;
  private es gOs;
  private fv gOt;
  private ChatFooter gOu;
  private ChatFooterCustom gOv;
  private int gOw;
  private int gOx;
  private boolean gOy = false;

  public fn(ChattingUI paramChattingUI, ChattingFooterMoreBtnBar paramChattingFooterMoreBtnBar, es parames, ChatFooter paramChatFooter, ChatFooterCustom paramChatFooterCustom, i parami, boolean paramBoolean)
  {
    this.gOq = paramChattingUI;
    this.gOr = paramChattingFooterMoreBtnBar;
    this.gOu = paramChatFooter;
    this.gOv = paramChatFooterCustom;
    this.gOs = parames;
    this.eSm = parami;
    this.gJU = paramBoolean;
    if (gOp == null)
      gOp = new bu(5, "MicroMsg.ChattingMoreBtnBarHelper");
    aJr();
    if (this.gOy)
    {
      aa.w("MicroMsg.ChattingMoreBtnBarHelper", "is in show search chat result");
      this.gOr.b(3, new fp(this));
      if (bg.aIY().size() != 0)
        break label208;
      aa.w("MicroMsg.ChattingMoreBtnBarHelper", "init footer bar listener, no biz, set visibility gone");
      this.gOr.aJg();
    }
    while (true)
    {
      this.gOr.b(1, new fs(this));
      this.gOr.b(0, new ft(this));
      this.gOs.o(new fo(this));
      return;
      this.diw = new eo();
      this.diw.a(new fu(this));
      break;
      label208: this.gOr.b(2, new fr(this));
    }
  }

  private void aJr()
  {
    this.gOw = this.gOu.getVisibility();
    if (this.gOv != null)
    {
      this.gOx = this.gOv.getVisibility();
      return;
    }
    this.gOx = -1;
  }

  public final void D(ak paramak)
  {
    if (paramak == null)
      aa.w("MicroMsg.ChattingMoreBtnBarHelper", "perform search mode click msg item fail, msg is null");
    while (!this.gOs.ce(paramak.Bo()))
      return;
    int i = this.gOs.XS();
    this.gOr.ny(i);
    this.gOr.setVisibility(0);
    this.diw.aNE();
  }

  public final void E(ak paramak)
  {
    this.gOq.a(true, this.diw);
    this.gOu.setVisibility(8);
    if ((this.gOv != null) && (this.gOx != -1))
      this.gOv.setVisibility(8);
    this.gOr.setVisibility(0);
    this.gNS = true;
    this.gOq.aJD();
    this.gOs.aJp();
    this.gOs.aJo();
    this.gOs.ce(paramak.Bo());
    int i = this.gOs.XS();
    this.gOr.ny(i);
    this.gOq.aJY();
    this.gOq.SM();
    this.gOq.aJy();
    this.gOq.aJx();
    m localm = m.dZN;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(1);
    localm.d(10811, arrayOfObject);
  }

  public final void a(ChatFooter paramChatFooter, ChatFooterCustom paramChatFooterCustom)
  {
    this.gOu = paramChatFooter;
    this.gOv = paramChatFooterCustom;
    aJr();
  }

  public final void a(fv paramfv)
  {
    this.gOt = paramfv;
  }

  public final void aJs()
  {
    this.gOq.a(false, this.diw);
    this.gOu.setVisibility(this.gOw);
    if ((this.gOv != null) && (this.gOx != -1))
      this.gOv.setVisibility(this.gOx);
    this.gOr.setVisibility(8);
    this.gOs.aJq();
    this.gOq.aJD();
    this.gNS = false;
    this.gOq.aJy();
    this.gOq.aJZ();
    this.gOq.aJx();
    this.gOq.SM();
  }

  public final void aJt()
  {
    this.gOq.aJD();
    this.gOr.setVisibility(0);
    this.gOr.ny(this.gOs.XS());
  }

  public final boolean aJu()
  {
    return this.gNS;
  }

  public final void aJv()
  {
    if (this.diw != null)
      this.diw.aNE();
  }

  public final void dK(boolean paramBoolean)
  {
    this.gOy = paramBoolean;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.fn
 * JD-Core Version:    0.6.2
 */