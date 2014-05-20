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

final class gm
  implements ar
{
  Bitmap bitmap;
  String crH;

  gm(RegByMobileRegAIOUI paramRegByMobileRegAIOUI)
  {
  }

  public final boolean ve()
  {
    this.crH = e.R(this.gsL);
    this.bitmap = e.S(this.gsL);
    if ((this.bitmap != null) && (!this.bitmap.isRecycled()));
    try
    {
      com.tencent.mm.sdk.platformtools.h.a(this.bitmap, 100, Bitmap.CompressFormat.PNG, com.tencent.mm.storage.h.ggB + "temp.avatar", false);
      return true;
    }
    catch (Exception localException)
    {
      while (true)
        aa.e("MicroMsg.RegByMobileRegUI", "save avatar fail." + localException.getMessage());
    }
  }

  public final boolean vf()
  {
    if ((!cj.hX(this.crH)) && (cj.hX(RegByMobileRegAIOUI.e(this.gsL).getText().trim())))
      RegByMobileRegAIOUI.e(this.gsL).setText(this.crH);
    if (!i.qd())
    {
      aa.e("MicroMsg.RegByMobileRegUI", "SDcard is not available");
      return false;
    }
    if ((this.bitmap != null) && (!this.bitmap.isRecycled()) && (!RegByMobileRegAIOUI.p(this.gsL)))
    {
      RegByMobileRegAIOUI.q(this.gsL).setImageBitmap(this.bitmap);
      RegByMobileRegAIOUI.r(this.gsL).setVisibility(8);
      RegByMobileRegAIOUI.s(this.gsL);
    }
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.gm
 * JD-Core Version:    0.6.2
 */