package com.tencent.mm.ui.chatting;

import android.app.Activity;
import android.view.View;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.c.a.ia;
import com.tencent.mm.c.a.ic;
import com.tencent.mm.pluginsdk.ui.c;
import com.tencent.mm.sdk.b.a;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.storage.ak;

final class mb extends cf
{
  TextView gMU;
  View gRQ = null;

  public mb(int paramInt)
  {
    super(paramInt);
  }

  public static void a(mb parammb, ak paramak, boolean paramBoolean, int paramInt, ChattingUI paramChattingUI)
  {
    if (parammb == null);
    label19: label62: label223: label359: label361: int k;
    label335: label341: 
    do
    {
      return;
      String str1;
      int m;
      int i;
      if (paramBoolean)
      {
        str1 = paramChattingUI.gMi.bNl;
        c.a(parammb.cMS, str1);
        parammb.cMS.setVisibility(0);
        if (parammb.gKj != null)
        {
          ImageView localImageView = parammb.gKj;
          if (paramak.getStatus() != 6)
            break label335;
          m = 8;
          localImageView.setVisibility(m);
        }
        parammb.cMS.setTag(new kk(str1));
        parammb.cMS.setOnClickListener(paramChattingUI.gMi.gNw);
        parammb.cMS.setOnLongClickListener(paramChattingUI.gMi.gNy);
        parammb.gki.setTag(new kk(paramak, paramChattingUI.gJU, paramInt, null, 0, '\000'));
        parammb.gki.setOnClickListener(paramChattingUI.gMi.gNw);
        parammb.gki.setOnLongClickListener(paramChattingUI.gMi.gNy);
        String str2 = paramak.aCn();
        if ((str2 == null) || (str2.length() <= 0))
          break label341;
        parammb.gMU.setText(paramChattingUI.aal().getString(2131168846) + str2);
        if (parammb.gRQ == null)
          break label359;
        if (!paramak.getContent().equals(ak.ghH))
        {
          String str3 = paramak.getContent();
          ia localia1 = new ia();
          localia1.bRw.bNk = 1;
          localia1.bRw.content = str3;
          a.ayH().f(localia1);
          if (localia1.bRx.type != 3)
            break label361;
          i = 1;
        }
      }
      while (true)
        if (i != 0)
        {
          if (paramBoolean)
          {
            parammb.gRQ.setBackgroundResource(2130839705);
            return;
            str1 = paramChattingUI.gMi.clp;
            break label19;
            m = 0;
            break label62;
            parammb.gMU.setText(paramChattingUI.aal().getString(2131168845));
            break label223;
            break;
            i = 0;
            continue;
          }
          parammb.gRQ.setBackgroundResource(2130839706);
          return;
        }
      if (paramak.getContent().equals(ak.ghI))
        break;
      String str4 = paramak.getContent();
      ia localia2 = new ia();
      localia2.bRw.bNk = 1;
      localia2.bRw.content = str4;
      a.ayH().f(localia2);
      int j = localia2.bRx.type;
      k = 0;
      if (j == 2)
        k = 1;
    }
    while (k == 0);
    if (paramBoolean)
    {
      parammb.gRQ.setBackgroundResource(2130839699);
      return;
    }
    parammb.gRQ.setBackgroundResource(2130839700);
  }

  public final cf au(View paramView)
  {
    super.as(paramView);
    if ((this.type == 24) || (this.type == 43) || (this.type == 27) || (this.type == 28))
    {
      this.dkq = ((TextView)paramView.findViewById(2131361841));
      this.gMU = ((TextView)paramView.findViewById(2131362327));
      this.gki = paramView.findViewById(2131362277);
      this.gRQ = paramView.findViewById(2131362326);
    }
    if (this.type == 24)
      this.gKj = ((ImageView)paramView.findViewById(2131362325));
    this.daW = ((CheckBox)paramView.findViewById(2131361843));
    this.eyN = paramView.findViewById(2131361844);
    return this;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.mb
 * JD-Core Version:    0.6.2
 */