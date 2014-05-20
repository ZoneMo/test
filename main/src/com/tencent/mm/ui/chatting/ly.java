package com.tencent.mm.ui.chatting;

import android.graphics.Bitmap;
import android.view.View;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.tencent.mm.ai.m;
import com.tencent.mm.ai.q;
import com.tencent.mm.ai.r;
import com.tencent.mm.ai.v;
import com.tencent.mm.an.a;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.w;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.pluginsdk.ui.c;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.ak;
import com.tencent.mm.w.ag;
import com.tencent.mm.w.g;

final class ly extends cf
{
  TextView cMV;
  ImageView gKd;
  TextView gKg;
  TextView gRD;
  ImageView gRE;
  ImageView gRF;
  ImageView gRG;
  ProgressBar gRH;
  View gRI;

  public ly(int paramInt)
  {
    super(paramInt);
  }

  public static void a(ly paramly, ak paramak, boolean paramBoolean, int paramInt, ChattingUI paramChattingUI)
  {
    q localq = v.hh(paramak.ot());
    if (localq == null)
      localq = new q();
    String str1 = m.DE().ha(paramak.ot());
    Bitmap localBitmap = ag.Ba().a(str1, a.getDensity(paramChattingUI), paramChattingUI);
    String str2;
    label108: int k;
    if (localBitmap == null)
      if (!be.uz().isSDCardAvailable())
      {
        paramly.gKd.setImageDrawable(a.k(paramChattingUI, 2130839605));
        paramly.gMy.setVisibility(8);
        if (!paramBoolean)
          break label645;
        if (!paramChattingUI.gJU)
          break label502;
        str2 = localq.DG();
        ce.a(paramChattingUI);
        if ((paramChattingUI.gJU) && (paramChattingUI.gOY))
        {
          paramly.gMy.setText(paramChattingUI.cu(str2));
          paramly.gMy.setVisibility(0);
        }
        if (!w.db(str2))
          break label512;
        paramly.cMS.setVisibility(8);
        label168: paramly.cMV.setText(au.K(localq.vR()));
        paramly.gRD.setText(au.eQ(localq.DO()));
        k = localq.getStatus();
        if (k != 199)
          break label532;
        paramly.gRE.setImageDrawable(a.k(paramChattingUI, 2130839609));
        paramly.cMV.setVisibility(4);
        label236: if (k != 112)
          break label557;
        paramly.gRG.setVisibility(0);
        paramly.gRF.setVisibility(8);
        paramly.gRH.setVisibility(0);
        paramly.gRH.setProgress(v.e(localq));
        aa.v("MicroMsg.VideoItemHoder", "status begin");
        paramly.gRH.invalidate();
      }
    while (true)
    {
      paramly.cMS.setTag(new kk(str2));
      paramly.cMS.setOnClickListener(paramChattingUI.gMi.gNw);
      paramly.cMS.setOnLongClickListener(paramChattingUI.gMi.gNy);
      paramly.gRG.setTag(new kk(paramak, paramChattingUI.gJU, paramInt, null, 4, '\000'));
      paramly.gRG.setOnClickListener(paramChattingUI.gMi.gNw);
      paramly.gRF.setTag(new kk(paramak, paramChattingUI.gJU, paramInt, null, 3, '\000'));
      paramly.gRF.setOnClickListener(paramChattingUI.gMi.gNw);
      paramly.gki.setTag(new kk(paramak, paramChattingUI.gJU, paramInt, null, 2, '\000'));
      paramly.gki.setOnClickListener(paramChattingUI.gMi.gNw);
      paramly.gki.setOnLongClickListener(paramChattingUI.gMi.gNy);
      return;
      paramly.gKd.setImageDrawable(a.k(paramChattingUI, 2130837957));
      break;
      paramly.gKd.setImageBitmap(localBitmap);
      break;
      label502: str2 = localq.getUser();
      break label108;
      label512: paramly.cMS.setVisibility(0);
      c.a(paramly.cMS, str2);
      break label168;
      label532: paramly.gRE.setImageDrawable(a.k(paramChattingUI, 2130839598));
      paramly.cMV.setVisibility(0);
      break label236;
      label557: if ((k == 113) || (k == 198))
      {
        paramly.gRF.setVisibility(0);
        paramly.gRG.setVisibility(8);
        paramly.gRH.setVisibility(8);
        aa.v("MicroMsg.VideoItemHoder", "status pause");
      }
      else
      {
        paramly.gRG.setVisibility(8);
        paramly.gRF.setVisibility(8);
        paramly.gRH.setVisibility(8);
        aa.v("MicroMsg.VideoItemHoder", "status gone");
      }
    }
    label645: paramly.cMV.setText(au.K(localq.vR()));
    paramly.gRD.setText(au.eQ(localq.DO()));
    int i = localq.getStatus();
    paramly.gRE.setImageDrawable(a.k(paramChattingUI, 2130839609));
    int j;
    if ((i == 104) || (i == 103))
    {
      paramly.gRG.setVisibility(0);
      paramly.gRF.setVisibility(8);
      paramly.gRH.setVisibility(0);
      ProgressBar localProgressBar = paramly.gRH;
      if (localq.vR() == 0)
      {
        j = 0;
        label753: localProgressBar.setProgress(j);
        aa.v("MicroMsg.VideoItemHoder", "status begin");
      }
    }
    while (true)
    {
      ce.a(paramChattingUI);
      paramly.cMS.setVisibility(0);
      c.a(paramly.cMS, paramChattingUI.gMi.clp);
      paramly.cMS.setTag(new kk(paramChattingUI.gMi.clp));
      paramly.cMS.setOnClickListener(paramChattingUI.gMi.gNw);
      break;
      aa.d("MicroMsg.VideoLogic", "cdntra getUploadProgress :" + localq.DH() + " " + localq.vR());
      j = 100 * localq.DH() / localq.vR();
      break label753;
      if ((i == 105) || (i == 198))
      {
        paramly.gRF.setVisibility(0);
        paramly.gRG.setVisibility(8);
        paramly.gRH.setVisibility(8);
        aa.v("MicroMsg.VideoItemHoder", "status pause");
      }
      else
      {
        paramly.gRG.setVisibility(8);
        paramly.gRF.setVisibility(8);
        paramly.gRH.setVisibility(8);
        aa.v("MicroMsg.VideoItemHoder", "status gone");
      }
    }
  }

  public final cf c(View paramView, boolean paramBoolean)
  {
    super.as(paramView);
    this.dkq = ((TextView)paramView.findViewById(2131361841));
    this.gKd = ((ImageView)paramView.findViewById(2131362288));
    this.gMy = ((TextView)paramView.findViewById(2131361934));
    this.cMV = ((TextView)paramView.findViewById(2131362314));
    this.gRD = ((TextView)paramView.findViewById(2131362315));
    this.gRE = ((ImageView)paramView.findViewById(2131362316));
    this.gRF = ((ImageView)paramView.findViewById(2131362319));
    this.gRG = ((ImageView)paramView.findViewById(2131362318));
    this.gRH = ((ProgressBar)paramView.findViewById(2131362317));
    this.gRI = paramView.findViewById(2131362313);
    this.gki = paramView.findViewById(2131362277);
    if (paramBoolean);
    for (int i = 10; ; i = 11)
    {
      this.type = i;
      this.gKg = ((TextView)paramView.findViewById(2131362265));
      this.daW = ((CheckBox)paramView.findViewById(2131361843));
      this.eyN = paramView.findViewById(2131361844);
      return this;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.ly
 * JD-Core Version:    0.6.2
 */