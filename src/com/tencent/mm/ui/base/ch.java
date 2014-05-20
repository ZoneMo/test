package com.tencent.mm.ui.base;

import android.content.Context;
import android.content.DialogInterface.OnCancelListener;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.o;
import com.tencent.mm.sdk.platformtools.aa;

public final class ch extends ct
{
  private int dKd;
  private TextView fen;
  private ProgressBar feo;
  private View fep;
  private Context mContext;

  private ch(Context paramContext, int paramInt1, int paramInt2)
  {
    super(paramContext, paramInt1);
    this.mContext = paramContext;
    this.dKd = paramInt2;
    int i;
    switch (this.dKd)
    {
    default:
      i = k.aXh;
    case 0:
    case 1:
    case 2:
    }
    while (true)
    {
      this.fep = View.inflate(this.mContext, i, null);
      this.fen = ((TextView)this.fep.findViewById(i.aBA));
      this.feo = ((ProgressBar)this.fep.findViewById(i.aBz));
      setCanceledOnTouchOutside(true);
      return;
      i = k.aXh;
      continue;
      i = k.aXi;
      continue;
      i = k.aXh;
    }
  }

  public static ch a(Context paramContext, CharSequence paramCharSequence, boolean paramBoolean, int paramInt, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    int i;
    switch (paramInt)
    {
    default:
      i = o.bIQ;
    case 0:
    case 1:
    case 2:
    }
    while (true)
    {
      ch localch = new ch(paramContext, i, paramInt);
      localch.setMessage(paramCharSequence);
      localch.setCancelable(paramBoolean);
      localch.setOnCancelListener(paramOnCancelListener);
      localch.setCanceledOnTouchOutside(false);
      return localch;
      i = o.bIN;
      continue;
      i = o.bIN;
      continue;
      i = o.bIN;
    }
  }

  public static ch b(Context paramContext, CharSequence paramCharSequence, boolean paramBoolean, int paramInt, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    ch localch = a(paramContext, paramCharSequence, paramBoolean, paramInt, paramOnCancelListener);
    localch.show();
    return localch;
  }

  public final void aHi()
  {
    if (this.feo != null)
      this.feo.setVisibility(8);
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
      aa.e("MicroMsg.MMProgressDialog", "dismiss exception, e = " + localException.getMessage());
    }
  }

  protected final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(this.fep, new LinearLayout.LayoutParams(-1, -1));
    WindowManager.LayoutParams localLayoutParams = getWindow().getAttributes();
    localLayoutParams.width = -1;
    localLayoutParams.height = -2;
    if (this.dKd == 2)
    {
      getWindow().addFlags(2);
      localLayoutParams.dimAmount = 0.65F;
    }
    onWindowAttributesChanged(localLayoutParams);
  }

  public final void setCancelable(boolean paramBoolean)
  {
    super.setCancelable(paramBoolean);
    setCanceledOnTouchOutside(paramBoolean);
  }

  public final void setMessage(CharSequence paramCharSequence)
  {
    this.fen.setText(paramCharSequence);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.ch
 * JD-Core Version:    0.6.2
 */