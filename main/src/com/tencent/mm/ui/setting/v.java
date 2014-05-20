package com.tencent.mm.ui.setting;

import android.content.Intent;
import com.tencent.mm.ui.qrcode.ShowQRCodeStep1UI;

final class v
  implements com.tencent.mm.ui.base.v
{
  v(SelfQRCodeUI paramSelfQRCodeUI, String[] paramArrayOfString)
  {
  }

  public final void bo(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= this.dJZ.length));
    while (true)
    {
      return;
      int i = -1;
      if (this.dJZ[paramInt].equals(this.heg.getString(2131168379)))
        i = 1;
      while (i > 0)
      {
        Intent localIntent = new Intent(this.heg, ShowQRCodeStep1UI.class);
        localIntent.putExtra("show_to", i);
        this.heg.startActivity(localIntent);
        return;
        if (this.dJZ[paramInt].equals(this.heg.getString(2131168380)))
          i = 2;
        else if (this.dJZ[paramInt].equals(this.heg.getString(2131168381)))
          i = 3;
        else if (this.dJZ[paramInt].equals(this.heg.getString(2131168382)))
          i = 4;
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.v
 * JD-Core Version:    0.6.2
 */