package com.tencent.mm.ui.tools;

import android.content.Intent;
import android.content.SharedPreferences;
import android.view.View;
import com.tencent.mm.sdk.platformtools.al;

final class ah
  implements Runnable
{
  ah(CropImageNewUI paramCropImageNewUI)
  {
  }

  public final void run()
  {
    if (!CropImageNewUI.a(this.hhZ));
    do
    {
      do
      {
        return;
        if ((CropImageNewUI.b(this.hhZ)) || (CropImageNewUI.c(this.hhZ)) || (!this.hhZ.getIntent().getBooleanExtra("CropImage_DirectlyIntoFilter", false)))
          break;
        CropImageNewUI.d(this.hhZ);
      }
      while (this.hhZ.getSharedPreferences(al.azs(), 0).getBoolean("CropImage_Filter_Show", true));
      CropImageNewUI.e(this.hhZ).findViewById(2131362462).setVisibility(4);
      return;
    }
    while (1 != CropImageNewUI.f(this.hhZ));
    CropImageNewUI.g(this.hhZ);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.ah
 * JD-Core Version:    0.6.2
 */