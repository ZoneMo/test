package com.tencent.mm.ui.chatting;

import android.content.Context;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.pluginsdk.e.e;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.u;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.k;
import java.util.Map;

final class da extends ce
{
  private ChattingUI gMB;

  public da()
  {
    super(40);
  }

  public final View a(LayoutInflater paramLayoutInflater, View paramView)
  {
    if ((paramView == null) || (paramView.getTag() == null) || (((cf)paramView.getTag()).type != this.dws))
    {
      paramView = new cz(paramLayoutInflater, 2130903158);
      ka localka = new ka(this.dws);
      localka.gQt = ((ChattingItemDyeingTemplateTopView)paramView.findViewById(2131362271));
      localka.daW = ((CheckBox)paramView.findViewById(2131361843));
      localka.eyN = paramView.findViewById(2131361844);
      localka.dkq = ((TextView)paramView.findViewById(2131361841));
      localka.dUe = ((LinearLayout)paramView.findViewById(2131362253));
      localka.gQu.dYA = paramView.findViewById(2131362254);
      localka.gQu.dYB = ((TextView)localka.gQu.dYA.findViewById(2131361861));
      localka.gQu.dLo = ((TextView)localka.gQu.dYA.findViewById(2131362255));
      localka.gQu.gQv = ((LinearLayout)localka.gQu.dYA.findViewById(2131362270));
      localka.gQu.gKR = ((TextView)localka.dUe.findViewById(2131362263));
      paramView.setTag(localka);
    }
    return paramView;
  }

  public final void a(cf paramcf, int paramInt, ChattingUI paramChattingUI, ak paramak)
  {
    this.gMB = paramChattingUI;
    ka localka = (ka)paramcf;
    Map localMap = u.aL(paramak.getContent(), "msg");
    if ((localMap == null) || (localMap.size() == 0))
    {
      aa.e("MicroMsg.ChattingItemDyeingTemplate", "filling fail, values is empty");
      localka.dUe.setVisibility(8);
      localka.gQu.dYA.setVisibility(8);
      return;
    }
    localka.dUe.setVisibility(0);
    localka.gQu.dYA.setVisibility(0);
    jz localjz = new jz();
    localjz.title = ((String)localMap.get(".msg.appmsg.mmreader.category.item.title"));
    localjz.url = ((String)localMap.get(".msg.appmsg.mmreader.category.item.url"));
    localjz.chf = ((String)localMap.get(".msg.appmsg.mmreader.category.item.shorturl"));
    localjz.chg = ((String)localMap.get(".msg.appmsg.mmreader.category.item.longurl"));
    localjz.time = cj.getLong((String)localMap.get(".msg.appmsg.mmreader.category.item.pub_time"), 0L);
    localjz.chh = ((String)localMap.get(".msg.appmsg.mmreader.category.item.cover"));
    localjz.chi = ((String)localMap.get(".msg.appmsg.mmreader.category.item.tweetid"));
    localjz.chj = ((String)localMap.get(".msg.appmsg.mmreader.category.item.digest"));
    localjz.type = cj.getInt((String)localMap.get(".msg.appmsg.mmreader.category.item.itemshowtype"), 0);
    if (cj.hX(localjz.url))
      localka.gQu.gKR.setVisibility(8);
    while (true)
    {
      localka.gQu.dYB.setText(localjz.title);
      localka.gQu.dLo.setText(e.f(paramChattingUI.getString(2131168210), localjz.time));
      db.a(localka.gQt, localMap);
      db.a(localka.gQu.gQv, localMap);
      String str1 = cj.hW((String)localMap.get(".msg.fromusername"));
      boolean bool = cj.hX(str1);
      String str2 = null;
      if (!bool)
        str2 = be.uz().su().tO(str1).rq();
      localka.gQu.dYA.setTag(new kk(paramak, false, paramInt, localjz.url, 6, false, paramChattingUI.aJN(), str1, str2, localjz.title));
      localka.gQu.dYA.setOnClickListener(paramChattingUI.gMi.gNw);
      localka.gQu.dYA.setOnLongClickListener(paramChattingUI.gMi.gNy);
      return;
      localka.gQu.gKR.setVisibility(0);
    }
  }

  public final boolean a(ContextMenu paramContextMenu, View paramView, ak paramak)
  {
    kk localkk = (kk)paramView.getTag();
    if (localkk == null)
      return false;
    int i = localkk.position;
    if (!this.gMB.aJJ())
      paramContextMenu.add(i, 100, 0, paramView.getContext().getString(2131165658));
    return true;
  }

  public final boolean a(MenuItem paramMenuItem, ChattingUI paramChattingUI, ak paramak)
  {
    return false;
  }

  public final boolean a(View paramView, ChattingUI paramChattingUI, ak paramak)
  {
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.da
 * JD-Core Version:    0.6.2
 */