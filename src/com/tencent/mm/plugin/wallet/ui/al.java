package com.tencent.mm.plugin.wallet.ui;

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
import com.tencent.mm.ui.base.ct;

public final class al extends ct
{
  private TextView fen;
  private ProgressBar feo;
  private View fep;
  private Context mContext;

  private al(Context paramContext, int paramInt)
  {
    super(paramContext, paramInt);
    this.mContext = paramContext;
    int i = k.bbQ;
    this.fep = View.inflate(this.mContext, i, null);
    this.fen = ((TextView)this.fep.findViewById(i.aBA));
    this.feo = ((ProgressBar)this.fep.findViewById(i.aBz));
    setCanceledOnTouchOutside(true);
  }

  private static al a(Context paramContext, CharSequence paramCharSequence, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    al localal = new al(paramContext, o.bIN);
    localal.setMessage(paramCharSequence);
    localal.setCancelable(true);
    localal.setOnCancelListener(paramOnCancelListener);
    localal.setCanceledOnTouchOutside(false);
    return localal;
  }

  public static al b(Context paramContext, CharSequence paramCharSequence, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    al localal = a(paramContext, paramCharSequence, paramOnCancelListener);
    localal.show();
    return localal;
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
      aa.e("MicroMsg.WalletProgressDialog", "dismiss exception, e = " + localException.getMessage());
    }
  }

  protected final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(this.fep, new LinearLayout.LayoutParams(-1, -1));
    WindowManager.LayoutParams localLayoutParams = getWindow().getAttributes();
    localLayoutParams.width = -2;
    localLayoutParams.height = -2;
    getWindow().addFlags(2);
    localLayoutParams.dimAmount = 0.65F;
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
 * Qualified Name:     com.tencent.mm.plugin.wallet.ui.al
 * JD-Core Version:    0.6.2
 */