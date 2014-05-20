package com.tencent.mm.plugin.wallet.bind.ui;

import android.graphics.Bitmap;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.tencent.mm.platformtools.w;
import com.tencent.mm.sdk.platformtools.aa;

final class b
  implements w
{
  public TextView eXR = null;
  public TextView eXS = null;
  public TextView eXT = null;
  public RelativeLayout eXU = null;
  public ImageView eXV = null;
  public ImageView eXW = null;
  public TextView eXX = null;
  public com.tencent.mm.plugin.wallet.d.b eXY;

  b(a parama)
  {
  }

  public final void i(String paramString, Bitmap paramBitmap)
  {
    StringBuilder localStringBuilder = new StringBuilder().append(paramString).append(", bitmap = ");
    boolean bool;
    if (paramBitmap == null)
    {
      bool = true;
      aa.d("MicroMsg.BankcardListAdapter", bool);
      if (this.eXY != null)
        break label52;
    }
    label52: 
    do
    {
      return;
      bool = false;
      break;
      if (paramString.equals(this.eXY.logoUrl))
        this.eXW.post(new c(this, paramBitmap));
      if (paramString.equals(this.eXY.fdJ))
        this.eXV.post(new d(this, paramBitmap));
    }
    while (!paramString.equals(this.eXY.fdI));
    this.eXU.post(new e(this, paramBitmap));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.bind.ui.b
 * JD-Core Version:    0.6.2
 */