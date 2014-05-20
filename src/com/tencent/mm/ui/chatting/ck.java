package com.tencent.mm.ui.chatting;

import android.content.Context;
import android.content.Intent;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.model.be;
import com.tencent.mm.model.bv;
import com.tencent.mm.model.w;
import com.tencent.mm.pluginsdk.model.app.ba;
import com.tencent.mm.pluginsdk.model.app.l;
import com.tencent.mm.pluginsdk.model.app.r;
import com.tencent.mm.pluginsdk.model.app.s;
import com.tencent.mm.pluginsdk.ui.c;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ak;
import com.tencent.mm.ui.transmit.MsgRetransmitUI;

final class ck extends ce
{
  private boolean dtw;
  private ChattingUI gMB;

  public ck()
  {
    super(48);
  }

  public final View a(LayoutInflater paramLayoutInflater, View paramView)
  {
    if ((paramView == null) || (paramView.getTag() == null) || (!(paramView.getTag() instanceof k)) || (((cf)paramView.getTag()).type != this.dws))
    {
      paramView = new cz(paramLayoutInflater, 2130903164);
      paramView.setTag(new k(this.dws).am(paramView));
    }
    return paramView;
  }

  public final void a(cf paramcf, int paramInt, ChattingUI paramChattingUI, ak paramak)
  {
    k localk = (k)paramcf;
    this.gMB = paramChattingUI;
    String str1 = paramChattingUI.gMi.bNl;
    this.dtw = w.cp(paramChattingUI.gMi.bNl);
    localk.gMy.setVisibility(8);
    String str2;
    if (this.dtw)
    {
      str2 = bv.dy(paramak.getContent());
      if ((str1 != null) && (str2 != null) && (str2.length() > 0))
      {
        a(paramChattingUI);
        if (paramChattingUI.gOY)
        {
          localk.gMy.setText(paramChattingUI.cu(str2));
          localk.gMy.setVisibility(0);
        }
      }
    }
    while (true)
    {
      c.a(localk.cMS, str2);
      localk.cMS.setVisibility(0);
      localk.cMS.setTag(new kk(str2));
      localk.cMS.setOnClickListener(paramChattingUI.gMi.gNw);
      localk.cMS.setOnLongClickListener(paramChattingUI.gMi.gNy);
      com.tencent.mm.j.a locala = ba.HD().bt(paramak.Bo());
      String str3 = paramak.getContent();
      if (this.dtw)
      {
        int i = paramak.getContent().indexOf(':');
        if (i != -1)
          str3 = paramak.getContent().substring(i + 1);
      }
      String str4 = cj.sT(str3);
      com.tencent.mm.j.b localb;
      if ((locala != null) && (str4 != null))
      {
        localb = com.tencent.mm.j.b.bR(str4);
        if (localb != null)
        {
          localk.gKi.setText(localb.title);
          kk localkk = new kk(paramak, paramChattingUI.gJU, paramInt, null, 0, '\000');
          localk.gki.setTag(localkk);
          localk.gki.setOnClickListener(paramChattingUI.gMi.gNw);
          if (be.uz().isSDCardAvailable())
            localk.gki.setOnLongClickListener(paramChattingUI.gMi.gNy);
        }
        return;
      }
      Object[] arrayOfObject = new Object[4];
      if (locala == null);
      for (boolean bool = true; ; bool = false)
      {
        arrayOfObject[0] = Boolean.valueOf(bool);
        arrayOfObject[1] = str4;
        arrayOfObject[2] = Long.valueOf(paramak.Bo());
        arrayOfObject[3] = str2;
        aa.b("MicroMsg.ChattingItemAppMsgLocationShareFrom", "amessage:%b, %s, %s", arrayOfObject);
        localb = null;
        break;
      }
      str2 = str1;
      break;
      str2 = str1;
    }
  }

  public final boolean a(ContextMenu paramContextMenu, View paramView, ak paramak)
  {
    int i = ((kk)paramView.getTag()).position;
    s.qs(this.gMB.at(paramak.getContent(), paramak.rO()));
    com.tencent.mm.j.b localb = com.tencent.mm.j.b.bR(this.gMB.at(paramak.getContent(), paramak.rO()));
    com.tencent.mm.pluginsdk.model.app.k localk = l.F(localb.appId, false);
    if ((com.tencent.mm.ak.a.qc("favorite")) && ((localk == null) || (!localk.apQ())))
      switch (localb.type)
      {
      case 7:
      case 8:
      case 9:
      case 11:
      case 12:
      default:
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 10:
      case 13:
      case 14:
      }
    while (true)
    {
      if (!this.gMB.aJJ())
        paramContextMenu.add(i, 100, 0, this.gMB.getString(2131165658));
      return true;
      paramContextMenu.add(i, 116, 0, paramView.getContext().getString(2131167820));
    }
  }

  public final boolean a(MenuItem paramMenuItem, ChattingUI paramChattingUI, ak paramak)
  {
    switch (paramMenuItem.getItemId())
    {
    default:
    case 100:
      com.tencent.mm.j.b localb;
      com.tencent.mm.pluginsdk.model.app.k localk;
      do
      {
        do
        {
          return false;
          String str = cj.sT(paramak.getContent());
          localb = null;
          if (str != null)
            localb = com.tencent.mm.j.b.bR(str);
        }
        while (localb == null);
        s.qr(localb.cgE);
        bv.q(paramak.Bo());
        localk = l.F(localb.appId, false);
      }
      while ((localk == null) || (!localk.apQ()));
      a(paramChattingUI, localb, paramak, localk);
      return false;
    case 111:
    }
    Intent localIntent = new Intent(paramChattingUI, MsgRetransmitUI.class);
    localIntent.putExtra("Retr_Msg_content", paramChattingUI.at(paramak.getContent(), paramak.rO()));
    localIntent.putExtra("Retr_Msg_Type", 2);
    localIntent.putExtra("Retr_Msg_Id", paramak.field_msgId);
    paramChattingUI.startActivity(localIntent);
    return false;
  }

  public final boolean a(View paramView, ChattingUI paramChattingUI, ak paramak)
  {
    paramChattingUI.aJe();
    paramChattingUI.P("fromMessage", true);
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.ck
 * JD-Core Version:    0.6.2
 */