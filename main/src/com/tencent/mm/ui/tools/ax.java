package com.tencent.mm.ui.tools;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;

final class ax
  implements MenuItem.OnMenuItemClickListener
{
  ax(CropImageNewUI paramCropImageNewUI, boolean paramBoolean1, boolean paramBoolean2)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    if ((this.hic) && (this.hid))
    {
      CropImageNewUI.a(this.hhZ, true);
      return true;
    }
    switch (CropImageNewUI.f(this.hhZ))
    {
    default:
      return true;
    case 1:
      if (CropImageNewUI.e(this.hhZ) != null)
      {
        CropImageNewUI.a(this.hhZ, CropImageNewUI.e(this.hhZ).aNg(), CropImageNewUI.i(this.hhZ));
        return true;
      }
      CropImageNewUI.a(this.hhZ, CropImageNewUI.j(this.hhZ), CropImageNewUI.i(this.hhZ));
      return true;
    case 2:
      CropImageNewUI.k(this.hhZ);
      return true;
    case 3:
      CropImageNewUI.l(this.hhZ);
      return true;
    case 4:
      CropImageNewUI.m(this.hhZ);
      return true;
    case 5:
    }
    CropImageNewUI.n(this.hhZ);
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.ax
 * JD-Core Version:    0.6.2
 */