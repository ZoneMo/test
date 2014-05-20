package com.tencent.mm.ui.chatting;

import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.View;
import android.view.View.OnCreateContextMenuListener;
import com.tencent.mm.a.c;
import com.tencent.mm.ao.a;
import com.tencent.mm.model.be;
import com.tencent.mm.model.bv;
import com.tencent.mm.model.w;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.i;
import com.tencent.mm.w.ag;
import com.tencent.mm.w.f;
import com.tencent.mm.w.g;

final class in
  implements View.OnCreateContextMenuListener
{
  in(ChattingUI paramChattingUI)
  {
  }

  public final void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    kk localkk = (kk)paramView.getTag();
    if (localkk == null);
    int i;
    ak localak;
    String str3;
    do
    {
      return;
      i = localkk.position;
      localak = (ak)this.gPG.gMi.getItem(i);
      if (!i.tC(this.gPG.aJe()))
        break;
      ChattingUI localChattingUI2 = this.gPG;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = au.hW(ChattingUI.l(this.gPG).rD());
      str3 = a.ti(localChattingUI2.getString(2131166803, arrayOfObject).trim());
      paramContextMenu.setHeaderTitle(com.tencent.mm.ao.b.c(this.gPG, str3, -1));
    }
    while (localak == null);
    es locales = this.gPG.gMi;
    int j = localak.getType();
    if (localak.rO() == 1);
    for (boolean bool1 = true; ; bool1 = false)
    {
      ce localce = locales.o(j, bool1);
      if (localce == null)
        break label343;
      boolean bool2 = localce.a(paramContextMenu, paramView, localak);
      if ((i.tA(this.gPG.aJe())) || (i.ty(this.gPG.aJe())))
      {
        aa.i("MicroMsg.ChattingUI", "on create context menu, match qcontact or tcontact, remove favorite menu item");
        paramContextMenu.removeItem(116);
      }
      if (!bool2)
        break label343;
      if (!this.gPG.aJJ())
        break;
      paramContextMenu.add(i, 122, 0, this.gPG.getString(2131165670));
      return;
      String str1 = ChattingUI.l(this.gPG).rr();
      String str2;
      if (localak.field_isSend == 1)
        str2 = (String)be.uz().sr().get(4, "");
      while (true)
      {
        str3 = a.ti(str2);
        break;
        str2 = ChattingUI.l(this.gPG).rr();
        if (w.cp(str1))
          str2 = w.cu(bv.dy(localak.field_content));
      }
    }
    label343: if ((localak.aBY()) && (be.uz().isSDCardAvailable()))
    {
      paramContextMenu.add(i, 100, 0, this.gPG.getString(2131165659));
      if (localak.field_msgId <= 0L)
        break label687;
    }
    label514: label548: label687: for (com.tencent.mm.w.e locale = ag.Ba().dG((int)localak.field_msgId); ; locale = null)
    {
      if (((locale == null) || (locale.AG() <= 0L)) && (localak.field_msgSvrId > 0))
        locale = ag.Ba().dF(localak.field_msgSvrId);
      if ((localak.field_isSend == 1) || ((locale != null) && (localak.field_isSend == 0) && (locale.getOffset() >= locale.vR()) && (locale.vR() != 0)))
        paramContextMenu.add(i, 110, 0, this.gPG.getString(2131165626));
      String str6;
      String str4;
      ChattingUI localChattingUI1;
      if (locale == null)
      {
        str6 = "";
        if ((locale != null) && (c.as(str6)))
          paramContextMenu.add(i, 112, 0, this.gPG.getString(2131165654));
        if (localak.getStatus() != 5)
          break label668;
        paramContextMenu.add(i, 103, 0, this.gPG.getString(2131165669));
        str4 = f.c(ag.Ba().g(localak));
        localChattingUI1 = this.gPG;
        if (localak.aBY())
          break label670;
      }
      for (String str5 = null; ; str5 = ag.Ba().j(str4, "", ""))
      {
        ChattingUI.a(localChattingUI1, str5);
        return;
        str6 = ag.Ba().j(locale.AI(), "", "");
        break label514;
        if (!localak.aBX())
          break label548;
        paramContextMenu.add(i, 100, 0, this.gPG.getString(2131165658));
        break label548;
        break;
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.in
 * JD-Core Version:    0.6.2
 */