package com.tencent.mm.ui.chatting;

import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.model.be;
import com.tencent.mm.model.w;
import com.tencent.mm.modelfriend.ax;
import com.tencent.mm.modelfriend.h;
import com.tencent.mm.modelfriend.i;
import com.tencent.mm.modelfriend.z;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.al;
import com.tencent.mm.storage.ao;
import com.tencent.mm.storage.ap;

final class dg extends ce
{
  public dg()
  {
    super(9);
  }

  public final View a(LayoutInflater paramLayoutInflater, View paramView)
  {
    if ((paramView == null) || (paramView.getTag() == null) || (((cf)paramView.getTag()).type != this.dws))
    {
      paramView = new cz(paramLayoutInflater, 2130903169);
      paramView.setTag(new kg(this.dws).au(paramView));
    }
    return paramView;
  }

  public final void a(cf paramcf, int paramInt, ChattingUI paramChattingUI, ak paramak)
  {
    kg localkg = (kg)paramcf;
    ao localao;
    if (paramak.getType() == 37)
    {
      localao = be.uz().sw().vi(paramak.getContent());
      if ((localao == null) || (localao.aCu() == null) || (localao.aCu().length() <= 0))
      {
        aa.e("MicroMsg.ChattingItemFMessageFrom", "getView : parse verify msg failed");
        return;
      }
      com.tencent.mm.m.c.p(localao.aCu(), localao.aCv());
      if (w.cv(localao.aCu()))
      {
        localkg.gQB.setVisibility(8);
        localkg.gQC.setVisibility(8);
        localkg.gQD.setVisibility(0);
        localkg.gQA.setBackgroundColor(16777215);
        localkg.gQD.setText(paramChattingUI.getString(2131166680));
        switch (localao.Gf())
        {
        case 14:
        case 15:
        case 16:
        case 17:
        case 19:
        case 20:
        case 21:
        default:
          label232: localkg.gKT.setText(2131165745);
          localkg.gKS.setImageResource(2130837908);
          label252: TextView localTextView6 = localkg.gQz;
          localTextView6.setText(com.tencent.mm.ao.b.e(paramChattingUI, localao.getDisplayName(), (int)localkg.gQz.getTextSize()));
          com.tencent.mm.pluginsdk.ui.c.a(localkg.cMS, localao.aCu());
          localkg.gMU.setVisibility(0);
          if ((localao.getContent() != null) && (!localao.getContent().trim().equals("")))
            localkg.gMU.setText(localao.getContent());
          break;
        case 18:
        case 22:
        case 23:
        case 24:
        case 26:
        case 27:
        case 28:
        case 29:
        case 30:
        case 25:
        case 13:
        }
      }
    }
    while (true)
    {
      localkg.gki.setTag(new kk(paramak, paramChattingUI.gJU, paramInt, null, 0, '\000'));
      localkg.gki.setOnClickListener(paramChattingUI.gMi.gNw);
      localkg.gki.setOnLongClickListener(paramChattingUI.gMi.gNy);
      return;
      localkg.gQB.setVisibility(0);
      localkg.gQC.setVisibility(0);
      localkg.gQD.setVisibility(0);
      localkg.gQA.setBackgroundResource(2130839160);
      localkg.gQD.setText(paramChattingUI.getString(2131166679));
      break;
      localkg.gKT.setText(2131165740);
      localkg.gKS.setImageResource(2130837906);
      break label252;
      localkg.gKT.setText(2131165741);
      localkg.gKS.setImageResource(2130837907);
      break label252;
      localkg.gKT.setText(2131168418);
      localkg.gKS.setImageResource(2130839175);
      break label252;
      localkg.gKT.setText(2131165742);
      localkg.gKS.setImageResource(2130837904);
      break label252;
      h localh = ax.Al().fq(localao.aCu());
      if ((localh.yM() != null) && (!localh.yM().equals("")))
      {
        localkg.gQE.setVisibility(0);
        TextView localTextView7 = localkg.gQE;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = localh.yM();
        localTextView7.setText(paramChattingUI.getString(2131165752, arrayOfObject));
        break label232;
      }
      localkg.gQE.setVisibility(8);
      break label232;
      localkg.gMU.setText(paramChattingUI.getString(2131167817));
      continue;
      if (paramak.getType() == 40)
      {
        al localal = be.uz().sw().vj(paramak.getContent());
        if ((localal == null) || (localal.aCu() == null) || (localal.aCu().length() <= 0))
        {
          aa.e("MicroMsg.ChattingItemFMessageFrom", "getView : parse possible friend msg failed");
          return;
        }
        com.tencent.mm.m.c.p(localal.aCu(), localal.aCv());
        if (w.cv(localal.aCu()))
        {
          localkg.gQB.setVisibility(8);
          localkg.gQC.setVisibility(8);
          localkg.gQD.setVisibility(0);
          localkg.gQA.setBackgroundColor(16777215);
          localkg.gQD.setText(paramChattingUI.getString(2131166680));
          label799: switch (localal.Gf())
          {
          default:
            localkg.gKT.setText(2131165753);
            localkg.gKS.setImageResource(2130839173);
            localkg.gMU.setText(2131165754);
            TextView localTextView5 = localkg.gQz;
            localTextView5.setText(com.tencent.mm.ao.b.e(paramChattingUI, localal.getDisplayName(), (int)localkg.gQz.getTextSize()));
          case 4:
          case 10:
          case 11:
          case 31:
          case 32:
          }
        }
        while (true)
        {
          com.tencent.mm.pluginsdk.ui.c.a(localkg.cMS, localal.aCu());
          break;
          localkg.gQB.setVisibility(0);
          localkg.gQC.setVisibility(0);
          localkg.gQD.setVisibility(0);
          localkg.gQA.setBackgroundResource(2130839160);
          localkg.gQD.setText(paramChattingUI.getString(2131166679));
          break label799;
          localkg.gKT.setText(2131165749);
          localkg.gKS.setImageResource(2130839174);
          localkg.gMU.setText(2131165750);
          String str2 = localal.aCy();
          if (str2 == null)
            str2 = localal.getDisplayName();
          TextView localTextView4 = localkg.gQz;
          localTextView4.setText(com.tencent.mm.ao.b.e(paramChattingUI, str2, (int)localkg.gQz.getTextSize()));
          continue;
          localkg.gKT.setText(2131165751);
          localkg.gKS.setImageResource(2130839172);
          String str1 = z.fB(localal.aCw());
          if (au.hX(str1))
            str1 = z.fB(localal.aCz());
          localkg.gMU.setText(paramChattingUI.getString(2131165752, new Object[] { str1 }));
          TextView localTextView3 = localkg.gQz;
          localTextView3.setText(com.tencent.mm.ao.b.e(paramChattingUI, localal.getDisplayName(), (int)localkg.gQz.getTextSize()));
          continue;
          localkg.gKT.setText(2131165747);
          localkg.gKS.setImageResource(2130837905);
          localkg.gMU.setText(2131165748);
          TextView localTextView2 = localkg.gQz;
          localTextView2.setText(com.tencent.mm.ao.b.e(paramChattingUI, localal.getDisplayName(), (int)localkg.gQz.getTextSize()));
          continue;
          localkg.gKT.setText(2131165743);
          localkg.gMU.setText(2131165744);
          TextView localTextView1 = localkg.gQz;
          localTextView1.setText(com.tencent.mm.ao.b.e(paramChattingUI, localal.getDisplayName(), (int)localkg.gQz.getTextSize()));
        }
      }
      aa.w("MicroMsg.ChattingItemFMessageFrom", "FROM_FMESSAGE did not include this type, msgType = " + paramak.getType());
    }
  }

  public final boolean a(ContextMenu paramContextMenu, View paramView, ak paramak)
  {
    return false;
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
 * Qualified Name:     com.tencent.mm.ui.chatting.dg
 * JD-Core Version:    0.6.2
 */