package com.tencent.mm.plugin.wallet.pay.ui;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.f;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.o;
import com.tencent.mm.plugin.wallet.e.b;
import com.tencent.mm.plugin.wallet.ui.EditHintView;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.base.h;
import com.tenpay.android.wechat.MyKeyboardWindow;

public final class am extends com.tencent.mm.ui.base.ar
{
  ImageView cqS;
  private View dey;
  private Button fcA;
  private boolean fcB;
  MyKeyboardWindow fcC;
  TextView fcD;
  EditHintView fcE;
  ar fcF;
  private Button fcz;

  private am(Context paramContext)
  {
    super(paramContext, o.bIP);
    this.dey = View.inflate(paramContext, k.bbE, null);
    this.fcz = ((Button)this.dey.findViewById(i.aBn));
    this.fcA = ((Button)this.dey.findViewById(i.aBh));
    setCanceledOnTouchOutside(true);
    getWindow().setSoftInputMode(2);
    this.fcC = ((MyKeyboardWindow)this.dey.findViewById(i.aMJ));
    this.fcD = ((TextView)this.dey.findViewById(i.content));
    this.cqS = ((ImageView)this.dey.findViewById(i.apo));
    ImageView localImageView = this.cqS;
    com.tencent.mm.plugin.wallet.c.c.anX();
    com.tencent.mm.pluginsdk.ui.c.a(localImageView, com.tencent.mm.plugin.wallet.c.c.getUsername());
    this.fcE = ((EditHintView)this.dey.findViewById(i.awR));
    this.fcE.jO(paramContext.getResources().getColor(f.white));
    this.fcz.setEnabled(false);
    this.fcz.setTextColor(paramContext.getResources().getColorStateList(f.aaB));
    this.fcE.a(new an(this));
    this.fcE.requestFocus();
    EditText localEditText = (EditText)this.dey.findViewById(i.awb);
    b.a(localEditText);
    this.fcC.setInputEditText(localEditText);
  }

  public static EditHintView a(Context paramContext, String paramString, ar paramar, DialogInterface.OnClickListener paramOnClickListener)
  {
    aq localaq = new aq();
    am localam;
    if (((paramContext instanceof Activity)) && (((Activity)paramContext).isFinishing()))
      localam = null;
    while (true)
    {
      return localam.fcE;
      localam = new am(paramContext);
      if (localam.fcz != null)
      {
        localam.fcz.setVisibility(0);
        localam.fcz.setOnClickListener(new ao(localam, localaq));
      }
      if (localam.fcA != null)
      {
        localam.fcA.setVisibility(0);
        localam.fcA.setOnClickListener(new ap(localam, paramOnClickListener));
      }
      localam.setCancelable(false);
      localam.fcD.setText(paramString);
      localam.fcF = paramar;
      localam.show();
      h.a(paramContext, localam);
    }
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
      aa.e("MicroMsg.MMDialog", "dismiss exception, e = " + localException.getMessage());
    }
  }

  protected final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(this.dey);
  }

  public final void setCancelable(boolean paramBoolean)
  {
    super.setCancelable(paramBoolean);
    this.fcB = paramBoolean;
    setCanceledOnTouchOutside(this.fcB);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.pay.ui.am
 * JD-Core Version:    0.6.2
 */