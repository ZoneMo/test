package com.tencent.mm.ui.tools;

import com.tencent.mm.ui.tools.gridviewheaders.GridHeadersGridView;

final class bx
  implements Runnable
{
  bx(ImageGalleryGridUI paramImageGalleryGridUI)
  {
  }

  public final void run()
  {
    if ((ImageGalleryGridUI.a(this.hjY) != null) && (ImageGalleryGridUI.a(this.hjY).getVisibility() != 4))
      ImageGalleryGridUI.a(this.hjY).setVisibility(4);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.bx
 * JD-Core Version:    0.6.2
 */