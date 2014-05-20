package com.tencent.mm.ui.tools;

import com.tencent.mm.ui.tools.gridviewheaders.GridHeadersGridView;

final class by
  implements Runnable
{
  by(ImageGalleryGridUI paramImageGalleryGridUI)
  {
  }

  public final void run()
  {
    if ((ImageGalleryGridUI.a(this.hjY) != null) && (ImageGalleryGridUI.a(this.hjY).getVisibility() != 0))
      ImageGalleryGridUI.a(this.hjY).setVisibility(0);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.by
 * JD-Core Version:    0.6.2
 */