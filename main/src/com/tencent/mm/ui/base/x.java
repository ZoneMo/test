package com.tencent.mm.ui.base;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.tencent.mm.ao.b;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.o;
import com.tencent.mm.sdk.platformtools.aa;

public final class x extends Dialog
  implements DialogInterface
{
  private Button fcA;
  private boolean fcB;
  private Button fcz;
  private LinearLayout gyA;
  private TextView gyB;
  private TextView gyC;
  private TextView gyD;
  private ImageView gyE;
  private ImageView gyF;
  private View gyG;
  private LinearLayout gyH;
  private ViewGroup gyI;
  private ViewGroup gyJ;
  private View gyK;
  private View gyL;
  private View hR;
  private Context mContext;

  public x(Context paramContext)
  {
    super(paramContext, o.bIN);
    this.mContext = paramContext;
    this.gyA = ((LinearLayout)View.inflate(this.mContext, k.aWp, null));
    this.fcz = ((Button)this.gyA.findViewById(i.aBn));
    this.fcA = ((Button)this.gyA.findViewById(i.aBh));
    this.gyL = this.gyA.findViewById(i.aBf);
    this.gyB = ((TextView)this.gyA.findViewById(i.aBo));
    this.gyC = ((TextView)this.gyA.findViewById(i.aBm));
    this.gyD = ((TextView)this.gyA.findViewById(i.aBk));
    this.gyE = ((ImageView)this.gyA.findViewById(i.aBq));
    this.gyF = ((ImageView)this.gyA.findViewById(i.aBl));
    this.gyG = this.gyA.findViewById(i.aBp);
    this.gyH = ((LinearLayout)this.gyA.findViewById(i.aBj));
    this.gyI = ((ViewGroup)this.gyA.findViewById(i.aBe));
    this.gyK = this.gyA.findViewById(i.aBg);
    this.gyJ = ((ViewGroup)this.gyA.findViewById(i.aBi));
    setCanceledOnTouchOutside(true);
  }

  public final void a(a parama)
  {
    if ((parama.title != null) && (parama.title.length() > 0))
      setTitle(parama.title);
    if (parama.gxR != null)
    {
      Drawable localDrawable2 = parama.gxR;
      this.gyG.setVisibility(0);
      this.gyE.setVisibility(0);
      this.gyE.setBackgroundDrawable(localDrawable2);
    }
    if (parama.fox != null)
    {
      this.hR = parama.fox;
      if (this.hR != null)
      {
        this.gyH.setVisibility(8);
        this.gyJ.setVisibility(0);
        this.gyJ.removeAllViews();
        this.gyJ.addView(this.hR, new LinearLayout.LayoutParams(-1, -1));
      }
      if (parama.gyb != null)
      {
        if (parama.gyd != null)
          break label591;
        View localView2 = parama.gyb;
        this.gyK.setVisibility(8);
        this.gyI.addView(localView2);
      }
      label169: if ((parama.gxV != null) && (parama.gxV.length() > 0))
      {
        CharSequence localCharSequence3 = parama.gxV;
        boolean bool = parama.gye;
        DialogInterface.OnClickListener localOnClickListener2 = parama.gxX;
        if (this.fcz != null)
        {
          this.fcz.setVisibility(0);
          this.fcz.setText(localCharSequence3);
          this.fcz.setOnClickListener(new y(this, localOnClickListener2, bool));
        }
      }
      if ((parama.gxW != null) && (parama.gxW.length() > 0))
      {
        CharSequence localCharSequence2 = parama.gxW;
        DialogInterface.OnClickListener localOnClickListener1 = parama.gxY;
        if (this.fcA != null)
        {
          this.fcA.setVisibility(0);
          this.fcA.setText(localCharSequence2);
          this.fcA.setOnClickListener(new z(this, localOnClickListener1));
        }
      }
      if ((parama.gxV != null) && (parama.gxV.length() != 0) && (parama.gxW != null) && (parama.gxW.length() != 0))
        break label626;
      this.gyL.setVisibility(8);
    }
    while (true)
    {
      if (parama.gxZ != null)
        setOnCancelListener(parama.gxZ);
      if (parama.gya != null)
        setOnDismissListener(parama.gya);
      if (parama.gyc > 0)
        mQ(parama.gyc);
      setCancelable(parama.fcB);
      this.fcB = parama.fcB;
      return;
      if (parama.gxS != null)
      {
        Drawable localDrawable1 = parama.gxS;
        if (this.hR == null)
        {
          this.gyH.setGravity(19);
          this.gyD.setGravity(3);
          this.gyC.setGravity(3);
          this.gyB.setGravity(3);
          this.gyH.setVisibility(0);
          this.gyF.setVisibility(0);
          this.gyF.setBackgroundDrawable(localDrawable1);
        }
      }
      if ((parama.gxT != null) && (parama.gxT.length() > 0))
        setMessage(parama.gxT);
      if ((parama.gxU == null) || (parama.gxU.length() <= 0))
        break;
      CharSequence localCharSequence1 = parama.gxU;
      if (this.hR != null)
        break;
      this.gyH.setVisibility(0);
      this.gyD.setVisibility(0);
      this.gyD.setText(localCharSequence1);
      break;
      label591: View localView1 = parama.gyb;
      ViewGroup.LayoutParams localLayoutParams = parama.gyd;
      this.gyK.setVisibility(8);
      this.gyI.addView(localView1, localLayoutParams);
      break label169;
      label626: this.gyL.setVisibility(0);
    }
  }

  public final void aGF()
  {
    if (this.gyD != null)
    {
      TextView localTextView2 = this.gyD;
      localTextView2.setText(b.c(this.gyD.getContext(), this.gyD.getText().toString(), (int)this.gyD.getTextSize()));
    }
    if (this.gyC != null)
    {
      TextView localTextView1 = this.gyC;
      localTextView1.setText(b.c(this.gyC.getContext(), this.gyC.getText().toString(), (int)this.gyC.getTextSize()));
    }
  }

  public final void aGG()
  {
    if (this.hR != null);
    while (this.gyD == null)
      return;
    this.gyD.setTextColor(-16777216);
  }

  public final void aGH()
  {
    this.fcA.setVisibility(8);
    this.gyL.setVisibility(8);
  }

  public final void dismiss()
  {
    try
    {
      super.dismiss();
      return;
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.MMAlertDialog", "dismiss exception, e = " + localException.getMessage());
    }
  }

  public final Button getButton(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return null;
    case -1:
      return this.fcz;
    case -2:
    }
    return this.fcA;
  }

  public final void mQ(int paramInt)
  {
    if (this.hR != null);
    while (this.gyD == null)
      return;
    this.gyD.setTextSize(paramInt);
  }

  protected final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(this.gyA);
  }

  public final void setCancelable(boolean paramBoolean)
  {
    super.setCancelable(paramBoolean);
    this.fcB = paramBoolean;
    setCanceledOnTouchOutside(this.fcB);
  }

  public final void setMessage(CharSequence paramCharSequence)
  {
    if (this.hR != null)
      return;
    this.gyH.setVisibility(0);
    this.gyC.setVisibility(0);
    this.gyC.setText(paramCharSequence);
  }

  public final void setTitle(int paramInt)
  {
    this.gyG.setVisibility(0);
    this.gyB.setVisibility(0);
    this.gyB.setText(paramInt);
  }

  public final void setTitle(CharSequence paramCharSequence)
  {
    this.gyG.setVisibility(0);
    this.gyB.setVisibility(0);
    this.gyB.setText(paramCharSequence);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.x
 * JD-Core Version:    0.6.2
 */