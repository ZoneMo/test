package com.tencent.mm.ui.chatting;

import android.view.View;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.tencent.mm.c.a.dd;
import com.tencent.mm.c.a.df;
import com.tencent.mm.model.bv;
import com.tencent.mm.model.w;
import com.tencent.mm.pluginsdk.ui.c;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.ak;

final class kl extends cf
{
  TextView gMU;
  LinearLayout gQQ;
  TextView gQR;
  ProgressBar gQS;

  public kl(int paramInt)
  {
    super(paramInt);
  }

  public static void a(kl paramkl, ak paramak, boolean paramBoolean, int paramInt, ChattingUI paramChattingUI)
  {
    if (paramkl == null)
      return;
    paramkl.gQQ.setVisibility(8);
    Object localObject;
    String str1;
    String str2;
    if (paramBoolean)
    {
      localObject = paramChattingUI.gMi.bNl;
      paramkl.gMy.setVisibility(8);
      if (w.cp((String)localObject))
      {
        int i = bv.dw(paramak.getContent());
        if (i != -1)
        {
          String str3 = paramak.getContent().substring(0, i).trim();
          if ((localObject != null) && (str3.length() > 0))
            localObject = str3;
          if (paramChattingUI.gOY)
          {
            paramkl.gMy.setText(paramChattingUI.cu((String)localObject));
            paramkl.gMy.setVisibility(0);
          }
        }
      }
      ce.a(paramChattingUI);
      c.a(paramkl.cMS, (String)localObject);
      paramkl.cMS.setVisibility(0);
      paramkl.cMS.setTag(new kk((String)localObject));
      paramkl.cMS.setOnClickListener(paramChattingUI.gMi.gNw);
      paramkl.cMS.setOnLongClickListener(paramChattingUI.gMi.gNy);
      if (com.tencent.mm.ak.a.qc("location"))
      {
        aa.d("MicroMsg.LocationItemHolder", "plugin found!");
        dd localdd = new dd();
        localdd.bOg.bOi = 1;
        localdd.bOg.bLP = paramak;
        com.tencent.mm.sdk.b.a.ayH().f(localdd);
        str1 = localdd.bOh.bOl;
        str2 = localdd.bOh.bOm;
        if (((str1 != null) || (a(str2, paramChattingUI))) && (!str1.equals("")) && (!str1.equals("err_not_started")))
          break label390;
        aa.d("MicroMsg.LocationItemHolder", "info error or subcore not started!");
      }
      paramkl.gQS.setVisibility(0);
      paramkl.gQQ.setVisibility(8);
    }
    while (true)
    {
      paramkl.gki.setTag(new kk(paramak, paramChattingUI.gJU, paramInt, null, 0, '\000'));
      paramkl.gki.setOnClickListener(paramChattingUI.gMi.gNw);
      paramkl.gki.setOnLongClickListener(paramChattingUI.gMi.gNy);
      return;
      localObject = paramChattingUI.gMi.clp;
      break;
      label390: paramkl.gQS.setVisibility(8);
      paramkl.gQQ.setVisibility(0);
      aa.d("MicroMsg.LocationItemHolder", "location info : " + str1);
      if (a(str2, paramChattingUI))
      {
        paramkl.gQR.setVisibility(0);
        paramkl.gQR.setText(str2);
        if ((str1 == null) || (str1.equals("")))
          paramkl.gMU.setVisibility(8);
        paramkl.gMU.setVisibility(0);
        paramkl.gMU.setText(str1);
      }
      else
      {
        paramkl.gMU.setText(str1);
        paramkl.gQR.setVisibility(8);
      }
    }
  }

  private static boolean a(String paramString, ChattingUI paramChattingUI)
  {
    return (paramString != null) && (!paramString.equals("")) && (!paramString.equals(paramChattingUI.getString(2131168012)));
  }

  public final cf c(View paramView, boolean paramBoolean)
  {
    super.as(paramView);
    this.dkq = ((TextView)paramView.findViewById(2131361841));
    this.gMU = ((TextView)paramView.findViewById(2131362309));
    this.gQR = ((TextView)paramView.findViewById(2131362308));
    this.gQQ = ((LinearLayout)paramView.findViewById(2131362307));
    this.gQS = ((ProgressBar)paramView.findViewById(2131362306));
    this.gki = paramView.findViewById(2131362277);
    this.gMy = ((TextView)paramView.findViewById(2131361934));
    this.daW = ((CheckBox)paramView.findViewById(2131361843));
    this.eyN = paramView.findViewById(2131361844);
    if (paramBoolean);
    for (int i = 16; ; i = 17)
    {
      this.type = i;
      if (!paramBoolean)
        this.gKj = ((ImageView)paramView.findViewById(2131362325));
      return this;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.kl
 * JD-Core Version:    0.6.2
 */