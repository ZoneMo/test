package com.tencent.mm.ui.chatting;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.bv;
import com.tencent.mm.model.w;
import com.tencent.mm.p.p;
import com.tencent.mm.pluginsdk.ui.c;
import com.tencent.mm.sdk.platformtools.u;
import com.tencent.mm.storage.ak;
import com.tencent.mm.w.ag;
import com.tencent.mm.w.e;
import com.tencent.mm.w.g;
import java.util.Map;

final class dh extends ce
{
  private ChattingUI gMB;

  public dh()
  {
    super(1);
  }

  public final View a(LayoutInflater paramLayoutInflater, View paramView)
  {
    if ((paramView == null) || (paramView.getTag() == null) || (((cf)paramView.getTag()).type != this.dws))
    {
      paramView = new cz(paramLayoutInflater, 2130903172);
      paramView.setTag(new kj(this.dws).c(paramView, true));
    }
    return paramView;
  }

  public final void a(cf paramcf, int paramInt, ChattingUI paramChattingUI, ak paramak)
  {
    this.gMB = paramChattingUI;
    kj localkj = (kj)paramcf;
    String str5;
    String str6;
    if (be.uz().isSDCardAvailable())
      if (ag.Ba().a(localkj.gKd, paramak.ot(), com.tencent.mm.an.a.getDensity(paramChattingUI), paramak.bXI, paramak.bXJ))
      {
        localkj.dSt.setVisibility(8);
        localkj.gMy.setVisibility(8);
        localkj.cMS.setVisibility(0);
        if (!paramChattingUI.gJU)
          break label397;
        int i = bv.dw(paramak.getContent());
        if (i == -1)
          break label557;
        String str7 = paramak.getContent().substring(0, i).trim();
        if ((str7 == null) || (str7.length() <= 0))
          break label548;
        c.a(localkj.cMS, str7);
        localkj.gMy.setText(w.cu(str7));
        str5 = paramak.aCl();
        a(paramChattingUI);
        str6 = str7;
        label172: if (paramChattingUI.gOY)
        {
          localkj.gMy.setText(paramChattingUI.cu(str7));
          localkj.gMy.setVisibility(0);
        }
      }
    while (true)
    {
      String str3 = str5;
      String str2 = str6;
      localkj.cMS.setTag(new kk(str2));
      localkj.cMS.setOnClickListener(paramChattingUI.gMi.gNw);
      localkj.cMS.setOnLongClickListener(paramChattingUI.gMi.gNy);
      localkj.gki.setTag(new kk(paramak, paramChattingUI.gJU, paramInt, str2, str3));
      localkj.gki.setOnClickListener(paramChattingUI.gMi.gNw);
      localkj.gki.setOnLongClickListener(paramChattingUI.gMi.gNy);
      if ((paramak.field_content == null) || (paramak.field_content.length() == 0))
      {
        localkj.gKg.setVisibility(8);
        return;
        if (paramak.getStatus() == 4)
        {
          localkj.dSt.setVisibility(0);
          break;
        }
        localkj.dSt.setVisibility(8);
        break;
        localkj.gKd.setImageBitmap(BitmapFactory.decodeResource(paramChattingUI.getResources(), 2130838946));
        break;
        label397: String str1 = paramChattingUI.gMi.bNl;
        if (w.db(str1))
          localkj.cMS.setVisibility(8);
        while (true)
        {
          localkj.gMy.setText(w.cu(str1));
          str2 = paramak.aCl();
          str3 = null;
          break;
          c.a(localkj.cMS, str1);
        }
      }
      Map localMap = u.aL(paramak.field_content, "msg");
      if (localMap != null);
      for (String str4 = (String)localMap.get(".msg.commenturl"); (str4 == null) || (str4.length() == 0); str4 = null)
      {
        localkj.gKg.setVisibility(8);
        return;
      }
      localkj.gKg.setVisibility(0);
      b(paramChattingUI, localkj.gKg, kk.wG(str4));
      return;
      label548: str5 = null;
      str6 = null;
      break label172;
      label557: str5 = null;
      str6 = null;
    }
  }

  public final boolean a(ContextMenu paramContextMenu, View paramView, ak paramak)
  {
    if (be.uz().isSDCardAvailable())
    {
      int i = ((kk)paramView.getTag()).position;
      boolean bool = paramak.field_msgId < 0L;
      e locale = null;
      if (bool)
        locale = ag.Ba().dG((int)paramak.field_msgId);
      if (((locale == null) || (locale.AG() <= 0L)) && (paramak.field_msgSvrId > 0))
        ag.Ba().dF(paramak.field_msgSvrId);
      paramContextMenu.add(i, 110, 0, paramView.getContext().getString(2131165626));
      if ((p.xK()) && (!this.gMB.aJJ()))
        paramContextMenu.add(i, 114, 0, paramView.getContext().getString(2131165798));
      if (com.tencent.mm.ak.a.qc("favorite"))
        paramContextMenu.add(i, 116, 0, paramView.getContext().getString(2131167820));
      if (!this.gMB.aJJ())
        paramContextMenu.add(i, 100, 0, paramView.getContext().getString(2131165659));
    }
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
 * Qualified Name:     com.tencent.mm.ui.chatting.dh
 * JD-Core Version:    0.6.2
 */