package com.tencent.mm.ui.tools;

import android.content.Intent;
import android.widget.ImageView;
import android.widget.LinearLayout;

final class bf
  implements Runnable
{
  bf(CropImageNewUI paramCropImageNewUI)
  {
  }

  public final void run()
  {
    if (this.hhZ.getIntent().getBooleanExtra("CropImage_DirectlyIntoFilter", false))
    {
      this.hhZ.finish();
      return;
    }
    CropImageNewUI.e(this.hhZ).setVisibility(8);
    CropImageNewUI.p(this.hhZ).setVisibility(0);
    CropImageNewUI.q(this.hhZ).setVisibility(((Integer)CropImageNewUI.q(this.hhZ).getTag()).intValue());
    CropImageNewUI.j(this.hhZ).setVisibility(0);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.bf
 * JD-Core Version:    0.6.2
 */