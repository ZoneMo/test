package com.tencent.mm.ui.chatting;

import android.content.Intent;
import android.text.ClipboardManager;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.ak.a;
import com.tencent.mm.model.be;
import com.tencent.mm.model.bv;
import com.tencent.mm.model.w;
import com.tencent.mm.pluginsdk.model.app.k;
import com.tencent.mm.pluginsdk.ui.c;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.au;
import com.tencent.mm.storage.bd;
import com.tencent.mm.ui.transmit.MsgRetransmitUI;

final class cm extends ce
{
  private ChattingUI gMB;

  public cm()
  {
    super(22);
  }

  public final View a(LayoutInflater paramLayoutInflater, View paramView)
  {
    if ((paramView == null) || (paramView.getTag() == null) || (!(paramView.getTag() instanceof m)) || (((m)paramView.getTag()).type != this.dws))
    {
      paramView = new cz(paramLayoutInflater, 2130903165);
      paramView.setTag(new l(this.dws).an(paramView));
    }
    return paramView;
  }

  public final void a(cf paramcf, int paramInt, ChattingUI paramChattingUI, ak paramak)
  {
    this.gMB = paramChattingUI;
    l locall = (l)paramcf;
    String str1 = paramChattingUI.gMi.bNl;
    boolean bool = w.cp(paramChattingUI.gMi.bNl);
    locall.gMy.setVisibility(8);
    String str2;
    if (bool)
    {
      str2 = bv.dy(paramak.getContent());
      if ((str1 != null) && (str2.length() > 0))
      {
        a(paramChattingUI);
        if (paramChattingUI.gOY)
        {
          locall.gMy.setText(paramChattingUI.cu(str2));
          locall.gMy.setVisibility(0);
        }
      }
    }
    while (true)
    {
      c.a(locall.cMS, str2);
      locall.cMS.setVisibility(0);
      locall.cMS.setTag(new kk(str2));
      locall.cMS.setOnClickListener(paramChattingUI.gMi.gNw);
      locall.cMS.setOnLongClickListener(paramChattingUI.gMi.gNy);
      String str3 = paramak.getContent();
      if (bool)
      {
        int i = paramak.getContent().indexOf(':');
        if (i != -1)
          str3 = paramak.getContent().substring(i + 1);
      }
      String str4 = cj.sT(str3);
      if (str4 != null);
      for (com.tencent.mm.j.b localb = com.tencent.mm.j.b.bR(str4); ; localb = null)
      {
        k localk;
        String str5;
        if ((localb != null) && (localb.type == 1))
        {
          localk = com.tencent.mm.pluginsdk.model.app.l.F(localb.appId, true);
          if ((localk != null) && (localk.field_appName != null) && (localk.field_appName.trim().length() > 0))
            break label532;
          str5 = localb.appName;
          if ((localb.appId == null) || (localb.appId.length() <= 0) || (!com.tencent.mm.pluginsdk.model.app.l.aF(str5)))
            break label542;
          TextView localTextView = locall.dkS;
          Object[] arrayOfObject = new Object[1];
          arrayOfObject[0] = com.tencent.mm.pluginsdk.model.app.l.a(paramChattingUI, localk, str5);
          localTextView.setText(paramChattingUI.getString(2131165774, arrayOfObject));
          locall.dkS.setVisibility(0);
          a(paramChattingUI, locall.dkS, localb.appId);
          a(paramChattingUI, locall.dkS, localb.appId);
          label394: if ((localb.bXF == null) || (localb.bXF.length() <= 0))
            break label555;
          b(paramChattingUI, locall.gKg, kk.wG(localb.bXF));
          locall.gKg.setVisibility(0);
        }
        while (true)
        {
          locall.dle.setText(localb.title);
          paramChattingUI.gMi.gNr.e(locall.dle);
          locall.dle.setTag(new kk(paramak, paramChattingUI.gJU, paramInt, null, 0, '\000'));
          locall.dle.setOnClickListener(paramChattingUI.gMi.gNw);
          if (be.uz().isSDCardAvailable())
            locall.dle.setOnLongClickListener(paramChattingUI.gMi.gNy);
          return;
          label532: str5 = localk.field_appName;
          break;
          label542: locall.dkS.setVisibility(8);
          break label394;
          label555: locall.gKg.setVisibility(8);
        }
      }
      str2 = str1;
      break;
      str2 = str1;
    }
  }

  public final boolean a(ContextMenu paramContextMenu, View paramView, ak paramak)
  {
    int i = ((kk)paramView.getTag()).position;
    paramContextMenu.add(i, 111, 0, this.gMB.getString(2131165626));
    if (a.qc("favorite"))
      paramContextMenu.add(i, 116, 0, this.gMB.getString(2131167820));
    if (!this.gMB.aJJ())
      paramContextMenu.add(i, 100, 0, this.gMB.getString(2131165658));
    return true;
  }

  public final boolean a(MenuItem paramMenuItem, ChattingUI paramChattingUI, ak paramak)
  {
    switch (paramMenuItem.getItemId())
    {
    default:
      return false;
    case 100:
      bv.q(paramak.Bo());
      be.uz().st().a(new bd(paramak.aCl(), paramak.AH()));
      return false;
    case 102:
      ((ClipboardManager)paramChattingUI.getSystemService("clipboard")).setText(paramChattingUI.at(com.tencent.mm.j.b.bR(paramChattingUI.at(paramak.getContent(), paramak.rO())).title, paramak.rO()));
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
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.cm
 * JD-Core Version:    0.6.2
 */