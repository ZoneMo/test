package com.tencent.mm.ui.chatting;

import android.content.Intent;
import android.text.ClipboardManager;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.tencent.mm.ak.a;
import com.tencent.mm.model.be;
import com.tencent.mm.model.bv;
import com.tencent.mm.pluginsdk.model.app.k;
import com.tencent.mm.pluginsdk.ui.c;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.au;
import com.tencent.mm.storage.bd;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.transmit.MsgRetransmitUI;

final class cn extends ce
{
  private ChattingUI gMB;

  public cn()
  {
    super(23);
  }

  public final View a(LayoutInflater paramLayoutInflater, View paramView)
  {
    if ((paramView == null) || (paramView.getTag() == null) || (!(paramView.getTag() instanceof m)) || (((m)paramView.getTag()).type != this.dws))
    {
      paramView = new cz(paramLayoutInflater, 2130903185);
      paramView.setTag(new l(this.dws).an(paramView));
    }
    return paramView;
  }

  public final void a(cf paramcf, int paramInt, ChattingUI paramChattingUI, ak paramak)
  {
    l locall = (l)paramcf;
    String str1 = paramChattingUI.gMi.clp;
    this.gMB = paramChattingUI;
    a(paramChattingUI);
    c.a(locall.cMS, str1);
    locall.cMS.setVisibility(0);
    locall.cMS.setTag(new kk(str1));
    locall.cMS.setOnClickListener(paramChattingUI.gMi.gNw);
    locall.cMS.setOnLongClickListener(paramChattingUI.gMi.gNy);
    String str2 = cj.sT(paramak.getContent());
    if (str2 != null);
    for (com.tencent.mm.j.b localb = com.tencent.mm.j.b.bR(str2); ; localb = null)
    {
      k localk;
      String str3;
      if ((localb != null) && (localb.type == 1))
      {
        locall.dle.setText(localb.title);
        paramChattingUI.gMi.gNr.e(locall.dle);
        localk = com.tencent.mm.pluginsdk.model.app.l.F(localb.appId, true);
        if ((localk != null) && (localk.field_appName != null) && (localk.field_appName.trim().length() > 0))
          break label420;
        str3 = localb.appName;
        if ((localb.appId == null) || (localb.appId.length() <= 0) || (!com.tencent.mm.pluginsdk.model.app.l.aF(str3)))
          break label430;
        TextView localTextView = locall.dkS;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = com.tencent.mm.pluginsdk.model.app.l.a(paramChattingUI, localk, str3);
        localTextView.setText(paramChattingUI.getString(2131165774, arrayOfObject));
        locall.dkS.setVisibility(0);
        a(paramChattingUI, locall.dkS, localb.appId);
        a(paramChattingUI, locall.dkS, localb.appId);
        label301: if ((paramak.getStatus() != 2) && (paramak.getStatus() != 5))
          break label443;
        locall.dSt.setVisibility(8);
      }
      while (true)
      {
        a(paramInt, locall, paramak, paramChattingUI.gMi.clp, paramChattingUI.gJU, paramChattingUI.gMi.gNw);
        locall.dle.setTag(new kk(paramak, paramChattingUI.gJU, paramInt, null, 0, '\000'));
        locall.dle.setOnClickListener(paramChattingUI.gMi.gNw);
        if (be.uz().isSDCardAvailable())
          locall.dle.setOnLongClickListener(paramChattingUI.gMi.gNy);
        return;
        label420: str3 = localk.field_appName;
        break;
        label430: locall.dkS.setVisibility(8);
        break label301;
        label443: locall.dSt.setVisibility(0);
      }
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
      ((ClipboardManager)paramChattingUI.getSystemService("clipboard")).setText(paramChattingUI.at(com.tencent.mm.j.b.bR(paramak.getContent()).title, paramak.rO()));
      return false;
    case 111:
    }
    Intent localIntent = new Intent(paramChattingUI, MsgRetransmitUI.class);
    localIntent.putExtra("Retr_Msg_content", paramak.getContent());
    localIntent.putExtra("Retr_Msg_Type", 2);
    localIntent.putExtra("Retr_Msg_Id", paramak.field_msgId);
    paramChattingUI.startActivity(localIntent);
    return false;
  }

  public final boolean a(View paramView, ChattingUI paramChattingUI, ak paramak)
  {
    if ((((kk)paramView.getTag()).dws == 5) && (paramak.rO() == 1))
    {
      if (paramak != null)
        h.a(this.gMB, this.gMB.getString(2131165776), "", new co(this, paramak), new cp(this));
      return true;
    }
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.cn
 * JD-Core Version:    0.6.2
 */