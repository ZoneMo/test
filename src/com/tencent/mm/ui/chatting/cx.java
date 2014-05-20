package com.tencent.mm.ui.chatting;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
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
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.al;
import com.tencent.mm.storage.ap;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.k;
import com.tencent.mm.ui.transmit.MsgRetransmitUI;

final class cx extends ce
{
  private ChattingUI gMB;

  public cx()
  {
    super(12);
  }

  public final View a(LayoutInflater paramLayoutInflater, View paramView)
  {
    if ((paramView == null) || (paramView.getTag() == null) || (((cf)paramView.getTag()).type != this.dws))
    {
      paramView = new cz(paramLayoutInflater, 2130903166);
      paramView.setTag(new ac(this.dws).c(paramView, true));
    }
    return paramView;
  }

  public final void a(cf paramcf, int paramInt, ChattingUI paramChattingUI, ak paramak)
  {
    int i = 1;
    this.gMB = paramChattingUI;
    ac localac = (ac)paramcf;
    localac.gMy.setVisibility(8);
    String str5;
    String str6;
    String str2;
    Object localObject;
    if (paramChattingUI.gJU)
    {
      str5 = bv.dz(paramak.getContent());
      str6 = bv.dy(paramak.getContent());
      if (TextUtils.isEmpty(str6))
        str6 = paramak.aCl();
      a(paramChattingUI);
      if (!paramChattingUI.gOY)
        break label507;
      localac.gMy.setText(paramChattingUI.cu(str6));
      localac.gMy.setVisibility(0);
      str2 = str6;
      localObject = str5;
    }
    while (true)
    {
      al localal = be.uz().sw().vj((String)localObject);
      if ((localal == null) || (localal.aCu() == null) || (localal.aCu().length() <= 0))
      {
        aa.e("MicroMsg.ChattingItemCardFrom", "getView : parse possible friend msg failed");
        return;
        String str1 = paramak.getContent();
        str2 = paramak.aCl();
        localObject = str1;
      }
      else
      {
        com.tencent.mm.m.c.p(localal.aCu(), localal.aCv());
        localac.gKT.setText(2131165760);
        String str3 = localal.rp();
        String str4;
        int j;
        if (au.hX(str3))
        {
          str4 = localal.aCu();
          if ((i.tD(str4)) || (w.cs(str4)))
            j = i;
        }
        while (true)
        {
          if (!be.uz().su().tK(str4));
          while (true)
          {
            boolean bool = w.cm(localal.rJ());
            TextView localTextView1 = localac.gKU;
            if ((i != 0) || (bool))
              str4 = "";
            localTextView1.setText(str4);
            TextView localTextView2 = localac.cPP;
            localTextView2.setText(com.tencent.mm.ao.b.e(paramChattingUI, localal.kn(), (int)localac.cPP.getTextSize()));
            localac.gKV.setVisibility(8);
            com.tencent.mm.pluginsdk.ui.c.a(localac.gKS, localal.aCu());
            com.tencent.mm.pluginsdk.ui.c.a(localac.cMS, str2);
            localac.cMS.setVisibility(0);
            localac.cMS.setTag(new kk(str2));
            localac.cMS.setOnClickListener(paramChattingUI.gMi.gNw);
            localac.cMS.setOnLongClickListener(paramChattingUI.gMi.gNy);
            localac.gKd.setVisibility(8);
            localac.gki.setTag(new kk(paramak, paramChattingUI.gJU, paramInt, str2, 0, '\000'));
            localac.gki.setOnClickListener(paramChattingUI.gMi.gNw);
            localac.gki.setOnLongClickListener(paramChattingUI.gMi.gNy);
            return;
            j = 0;
            break;
            i = j;
          }
          str4 = str3;
          j = 0;
        }
        label507: str2 = str6;
        localObject = str5;
      }
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
 * Qualified Name:     com.tencent.mm.ui.chatting.cx
 * JD-Core Version:    0.6.2
 */