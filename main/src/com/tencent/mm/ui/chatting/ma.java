package com.tencent.mm.ui.chatting;

import android.view.View;
import android.widget.CheckBox;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.tencent.mm.an.a;
import com.tencent.mm.modelvoice.bf;
import com.tencent.mm.pluginsdk.ui.g;
import com.tencent.mm.storage.ak;
import com.tencent.mm.ui.base.AnimImageView;

final class ma extends cf
{
  TextView gKg;
  TextView gMU;
  TextView gRJ;
  TextView gRK;
  AnimImageView gRL;
  FrameLayout gRM;
  AnimImageView gRN;
  ProgressBar gRO;
  TextView gRP;

  public ma(int paramInt)
  {
    super(paramInt);
  }

  private static void a(ma paramma, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    paramma.gKj.setVisibility(paramInt2);
    paramma.gMU.setVisibility(paramInt2);
    paramma.gRM.setVisibility(paramInt2);
    if (paramBoolean)
    {
      paramma.gRN.setVisibility(paramInt1);
      paramma.gKg.setVisibility(paramInt2);
      return;
    }
    paramma.gRO.setVisibility(paramInt1);
    paramma.gRP.setVisibility(paramInt1);
  }

  public static void a(ma paramma, ak paramak, int paramInt, ChattingUI paramChattingUI)
  {
    if (paramma == null)
      return;
    bf localbf = new bf(paramak.getContent());
    float f1 = (float)localbf.getTime() / 1000.0F;
    if (f1 < 1.0F)
      f1 = 1.0F;
    float f2 = Math.round(f1 * 10.0F) / 10.0F;
    if (paramak.Bo() == paramChattingUI.gMi.gMj.aIO())
    {
      paramma.gRL.setVisibility(0);
      paramma.gRL.RC();
      if (paramak.rO() == 0)
      {
        if (localbf.getTime() != 0L)
          break label338;
        a(paramma, 0, 8, true);
        paramma.gRN.RC();
      }
      label118: if (1 == paramak.rO())
      {
        if (paramak.getStatus() != 1)
          break label516;
        a(paramma, 0, 8, false);
      }
      label142: if (paramChattingUI.gMi.dYp != null)
      {
        paramma.gMU.setTextColor(paramChattingUI.gMi.dYp.aqT());
        if (!paramChattingUI.gMi.dYp.aqX())
          break label662;
        paramma.gMU.setShadowLayer(2.0F, 1.2F, 1.2F, paramChattingUI.gMi.dYp.aqU());
        label204: if (!paramChattingUI.gMi.dYp.aqV())
          break label676;
        paramma.gMU.setBackgroundResource(2130837876);
      }
    }
    while (true)
    {
      paramma.gRK.setTag(new kk(paramak, paramChattingUI.gJU, paramInt, null, 0, '\000'));
      paramma.gRK.setOnClickListener(paramChattingUI.gMi.gNw);
      paramma.gRK.setOnLongClickListener(paramChattingUI.gMi.gNy);
      if (paramak.aCp() != 1)
        break label715;
      paramma.gRJ.setVisibility(0);
      if (paramak.rO() != 0)
        break label687;
      paramma.gRL.setBackgroundResource(2130837831);
      paramma.gRK.setBackgroundResource(2130837831);
      return;
      paramma.gRL.setVisibility(8);
      paramma.gRL.aGC();
      break;
      label338: if (localbf.getTime() == -1L)
      {
        a(paramma, 8, 0, true);
        paramma.gRN.aGC();
        paramma.gRN.setVisibility(8);
        paramma.gRK.setWidth(80);
        paramma.gMU.setVisibility(8);
        paramma.gRL.setWidth(a.fromDPToPix(paramChattingUI, gX((int)f2)));
        break label118;
      }
      a(paramma, 8, 0, true);
      paramma.gRN.aGC();
      paramma.gRN.setVisibility(8);
      paramma.gMU.setVisibility(0);
      paramma.gRK.setWidth(a.fromDPToPix(paramChattingUI, gX((int)f2)));
      TextView localTextView2 = paramma.gMU;
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf((int)f2);
      localTextView2.setText(paramChattingUI.getString(2131165298, arrayOfObject2));
      paramma.gRL.setWidth(a.fromDPToPix(paramChattingUI, gX((int)f2)));
      break label118;
      label516: if (localbf.getTime() == -1L)
      {
        a(paramma, 8, 0, false);
        paramma.gRK.setWidth(80);
        paramma.gMU.setVisibility(8);
        paramma.gRL.setWidth(a.fromDPToPix(paramChattingUI, gX((int)f2)));
        break label142;
      }
      a(paramma, 8, 0, false);
      paramma.gMU.setVisibility(0);
      paramma.gRK.setWidth(a.fromDPToPix(paramChattingUI, gX((int)f2)));
      TextView localTextView1 = paramma.gMU;
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Integer.valueOf((int)f2);
      localTextView1.setText(paramChattingUI.getString(2131165298, arrayOfObject1));
      paramma.gRL.setWidth(a.fromDPToPix(paramChattingUI, gX((int)f2)));
      break label142;
      label662: paramma.gMU.setShadowLayer(0.0F, 0.0F, 0.0F, 0);
      break label204;
      label676: paramma.gMU.setBackgroundColor(0);
    }
    label687: paramma.gRP.setBackgroundResource(2130837883);
    paramma.gRL.setBackgroundResource(2130837883);
    paramma.gRK.setBackgroundResource(2130837883);
    return;
    label715: paramma.gRJ.setVisibility(8);
    if (paramak.rO() == 0)
    {
      paramma.gRL.setBackgroundResource(2130837812);
      paramma.gRK.setBackgroundResource(2130837812);
      return;
    }
    paramma.gRP.setBackgroundResource(2130837877);
    paramma.gRL.setBackgroundResource(2130837877);
    paramma.gRK.setBackgroundResource(2130837877);
  }

  private static int gX(int paramInt)
  {
    if (paramInt <= 2)
      return 80;
    if (paramInt < 10)
      return 80 + 9 * (paramInt - 2);
    if (paramInt < 60)
      return 80 + 9 * (7 + paramInt / 10);
    return 204;
  }

  public final cf d(View paramView, boolean paramBoolean)
  {
    super.as(paramView);
    this.dkq = ((TextView)paramView.findViewById(2131361841));
    this.gMy = ((TextView)paramView.findViewById(2131361934));
    this.gRK = ((TextView)paramView.findViewById(2131362323));
    this.daW = ((CheckBox)paramView.findViewById(2131361843));
    this.eyN = paramView.findViewById(2131361844);
    this.gKj = ((ImageView)paramView.findViewById(2131362325));
    this.gMU = ((TextView)paramView.findViewById(2131361935));
    this.gRM = ((FrameLayout)paramView.findViewById(2131362322));
    this.gRJ = ((TextView)paramView.findViewById(2131362320));
    this.gRL = ((AnimImageView)paramView.findViewById(2131362324));
    this.gRL.aGA();
    if (paramBoolean)
    {
      this.type = 6;
      this.gRL.dn(true);
      AnimImageView.aGB();
      this.gKg = ((TextView)paramView.findViewById(2131362265));
      this.gRN = ((AnimImageView)paramView.findViewById(2131362321));
      this.gRN.dn(true);
      AnimImageView.aGB();
      this.gRN.aGA();
      return this;
    }
    this.gRO = ((ProgressBar)paramView.findViewById(2131362337));
    this.gRP = ((TextView)paramView.findViewById(2131362336));
    this.gRL.dn(false);
    AnimImageView.aGB();
    this.type = 7;
    return this;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.ma
 * JD-Core Version:    0.6.2
 */