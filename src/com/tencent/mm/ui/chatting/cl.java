package com.tencent.mm.ui.chatting;

import android.content.Context;
import android.content.Intent;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.ak.a;
import com.tencent.mm.model.be;
import com.tencent.mm.model.bv;
import com.tencent.mm.pluginsdk.model.app.l;
import com.tencent.mm.pluginsdk.model.app.s;
import com.tencent.mm.pluginsdk.ui.c;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ak;
import com.tencent.mm.ui.transmit.MsgRetransmitUI;

final class cl extends ce
{
  private ChattingUI gMB;

  public cl()
  {
    super(49);
  }

  public final View a(LayoutInflater paramLayoutInflater, View paramView)
  {
    if ((paramView == null) || (paramView.getTag() == null) || (!(paramView.getTag() instanceof k)) || (((cf)paramView.getTag()).type != this.dws))
    {
      paramView = new cz(paramLayoutInflater, 2130903184);
      paramView.setTag(new k(this.dws).am(paramView));
    }
    return paramView;
  }

  public final void a(cf paramcf, int paramInt, ChattingUI paramChattingUI, ak paramak)
  {
    k localk = (k)paramcf;
    this.gMB = paramChattingUI;
    String str1 = paramChattingUI.gMi.clp;
    a(paramChattingUI);
    c.a(localk.cMS, str1);
    localk.cMS.setVisibility(0);
    localk.cMS.setTag(new kk(str1));
    localk.cMS.setOnClickListener(paramChattingUI.gMi.gNw);
    localk.cMS.setOnLongClickListener(paramChattingUI.gMi.gNy);
    String str2 = cj.sT(paramak.getContent());
    if (str2 != null);
    for (com.tencent.mm.j.b localb = com.tencent.mm.j.b.bR(str2); ; localb = null)
    {
      if (localb != null)
      {
        kk localkk = new kk(paramak, paramChattingUI.gJU, paramInt, null, 0, '\000');
        localk.gki.setTag(localkk);
        localk.gki.setOnClickListener(paramChattingUI.gMi.gNw);
        if (be.uz().isSDCardAvailable())
          localk.gki.setOnLongClickListener(paramChattingUI.gMi.gNy);
        localk.gKi.setText(localb.title);
      }
      return;
    }
  }

  public final boolean a(ContextMenu paramContextMenu, View paramView, ak paramak)
  {
    int i = ((kk)paramView.getTag()).position;
    s.qs(this.gMB.at(paramak.getContent(), paramak.rO()));
    com.tencent.mm.j.b localb = com.tencent.mm.j.b.bR(this.gMB.at(paramak.getContent(), paramak.rO()));
    com.tencent.mm.pluginsdk.model.app.k localk = l.F(localb.appId, false);
    if ((a.qc("favorite")) && ((localk == null) || (!localk.apQ())))
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
 * Qualified Name:     com.tencent.mm.ui.chatting.cl
 * JD-Core Version:    0.6.2
 */