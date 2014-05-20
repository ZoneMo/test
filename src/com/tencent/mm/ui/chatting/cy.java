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
import com.tencent.mm.p.p;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.pluginsdk.ui.c;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.al;
import com.tencent.mm.storage.ap;
import com.tencent.mm.storage.i;
import com.tencent.mm.ui.transmit.MsgRetransmitUI;

final class cy extends ce
{
  private ChattingUI gMB;

  public cy()
  {
    super(13);
  }

  public final View a(LayoutInflater paramLayoutInflater, View paramView)
  {
    if ((paramView == null) || (paramView.getTag() == null) || (((cf)paramView.getTag()).type != this.dws))
    {
      paramView = new cz(paramLayoutInflater, 2130903186);
      paramView.setTag(new ac(this.dws).c(paramView, false));
    }
    return paramView;
  }

  public final void a(cf paramcf, int paramInt, ChattingUI paramChattingUI, ak paramak)
  {
    this.gMB = paramChattingUI;
    ac localac = (ac)paramcf;
    al localal = be.uz().sw().vj(paramak.getContent());
    if ((localal == null) || (localal.aCu() == null) || (localal.aCu().length() <= 0))
    {
      aa.e("MicroMsg.ChattingItemCardTo", "getView : parse possible friend msg failed");
      return;
    }
    int i = bv.dw(paramak.getContent());
    String str1;
    String str2;
    int j;
    if (i != -1)
    {
      String str3 = paramak.getContent().substring(0, i).trim();
      if ((str3 != null) && (str3.length() > 0))
        localac.gKU.setText(w.cu(str3));
      str1 = localal.rp();
      a(paramChattingUI);
      if (!au.hX(str1))
        break label460;
      str2 = localal.aCu();
      if ((!i.tD(str2)) && (!w.cs(str2)))
        break label454;
      j = 1;
    }
    while (true)
    {
      boolean bool = w.cm(localal.rJ());
      TextView localTextView1 = localac.gKU;
      if ((j != 0) || (bool))
        str2 = "";
      localTextView1.setText(str2);
      localac.gKT.setText(2131165760);
      TextView localTextView2 = localac.cPP;
      localTextView2.setText(com.tencent.mm.ao.b.e(paramChattingUI, localal.kn(), (int)localac.cPP.getTextSize()));
      localac.gKV.setVisibility(8);
      c.a(localac.gKS, localal.aCu());
      c.a(localac.cMS, paramChattingUI.gMi.clp);
      localac.cMS.setVisibility(0);
      localac.cMS.setTag(new kk(paramChattingUI.gMi.clp));
      localac.cMS.setOnClickListener(paramChattingUI.gMi.gNw);
      localac.cMS.setOnLongClickListener(paramChattingUI.gMi.gNy);
      localac.gKd.setVisibility(8);
      localac.gki.setTag(new kk(paramak, paramChattingUI.gJU, paramInt, null, 0, '\000'));
      localac.gki.setOnClickListener(paramChattingUI.gMi.gNw);
      localac.gki.setOnLongClickListener(paramChattingUI.gMi.gNy);
      a(paramInt, localac, paramak, paramChattingUI.gMi.clp, paramChattingUI.gJU, paramChattingUI.gMi.gNw);
      return;
      paramak.aCl();
      break;
      label454: j = 0;
      continue;
      label460: str2 = str1;
      j = 0;
    }
  }

  public final boolean a(ContextMenu paramContextMenu, View paramView, ak paramak)
  {
    int i = ((kk)paramView.getTag()).position;
    paramContextMenu.add(i, 118, 0, paramView.getContext().getString(2131165626));
    if (p.xQ())
      paramContextMenu.add(i, 114, 0, paramView.getContext().getString(2131165798));
    if (!this.gMB.aJJ())
      paramContextMenu.add(i, 100, 0, paramView.getContext().getString(2131165658));
    return true;
  }

  public final boolean a(MenuItem paramMenuItem, ChattingUI paramChattingUI, ak paramak)
  {
    switch (paramMenuItem.getItemId())
    {
    default:
      return false;
    case 118:
    }
    Intent localIntent = new Intent(paramChattingUI, MsgRetransmitUI.class);
    localIntent.putExtra("Retr_Msg_content", paramChattingUI.at(paramak.getContent(), paramak.rO()));
    localIntent.putExtra("Retr_Msg_Type", 8);
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
 * Qualified Name:     com.tencent.mm.ui.chatting.cy
 * JD-Core Version:    0.6.2
 */