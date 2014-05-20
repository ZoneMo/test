package com.tencent.mm.ui.account;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.widget.EditText;
import android.widget.ImageView;
import com.tencent.mm.compatible.g.i;
import com.tencent.mm.modelsimple.e;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ar;
import com.tencent.mm.sdk.platformtools.cj;

final class kf
  implements ar
{
  Bitmap dnn;
  String guj;

  kf(RegSetInfoUI paramRegSetInfoUI)
  {
  }

  public final boolean ve()
  {
    try
    {
      this.guj = e.R(this.gtZ);
      this.dnn = e.S(this.gtZ);
      if ((this.dnn == null) || (this.dnn.isRecycled()));
    }
    catch (Exception localException1)
    {
      try
      {
        com.tencent.mm.sdk.platformtools.h.a(this.dnn, 100, Bitmap.CompressFormat.PNG, com.tencent.mm.storage.h.ggB + "temp.avatar", false);
        return true;
        localException1 = localException1;
        aa.e("MiroMsg.RegSetInfoUI", "getName or getBitmap err : " + localException1.getMessage());
      }
      catch (Exception localException2)
      {
        while (true)
          aa.e("MiroMsg.RegSetInfoUI", "save avatar fail." + localException2.getMessage());
      }
    }
  }

  public final boolean vf()
  {
    if ((!cj.hX(this.guj)) && (cj.hX(RegSetInfoUI.b(this.gtZ).getText().trim())))
      RegSetInfoUI.b(this.gtZ).setText(this.guj);
    if (!i.qd())
    {
      aa.e("MiroMsg.RegSetInfoUI", "SDcard is not available");
      return false;
    }
    if ((this.dnn != null) && (!this.dnn.isRecycled()) && (!RegSetInfoUI.j(this.gtZ)))
    {
      RegSetInfoUI.i(this.gtZ).setImageBitmap(this.dnn);
      RegSetInfoUI.k(this.gtZ);
      RegSetInfoUI.l(this.gtZ).setVisibility(0);
    }
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.kf
 * JD-Core Version:    0.6.2
 */