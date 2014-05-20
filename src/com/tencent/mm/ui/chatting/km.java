package com.tencent.mm.ui.chatting;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface.OnCancelListener;
import android.os.Bundle;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.ui.base.f;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.widget.MMEditText;

public final class km extends f
  implements m
{
  private ProgressDialog cIr;
  private MMEditText gQT;
  private kq gQU;
  private kr gQV;
  private DialogInterface.OnCancelListener gQW;

  public km(Context paramContext)
  {
    super(paramContext);
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    if (this.gQV != null);
  }

  public final void a(kq paramkq)
  {
    this.gQU = paramkq;
  }

  public final void aKe()
  {
    if ((this.cIr != null) && (this.cIr.isShowing()))
      this.cIr.dismiss();
    this.cIr = null;
  }

  public final void b(DialogInterface.OnCancelListener paramOnCancelListener)
  {
    if ((this.cIr != null) && (this.cIr.isShowing()))
      return;
    this.gQW = paramOnCancelListener;
    Context localContext = getContext();
    getContext().getString(2131167675);
    this.cIr = h.a(localContext, null, true, this.gQW);
  }

  public final void dismiss()
  {
    SM();
    super.dismiss();
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    jdMethod_do(false);
    this.gQT = ((MMEditText)findViewById(2131361916));
    m(new kn(this));
    n(new ko(this));
    this.gQT.addTextChangedListener(new kp(this));
  }

  public final void show()
  {
    if (this.gQT != null)
      this.gQT.setText("");
    super.show();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.km
 * JD-Core Version:    0.6.2
 */