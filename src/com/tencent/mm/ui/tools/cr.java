package com.tencent.mm.ui.tools;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Callable;

final class cr
{
  Map hkv = new HashMap();

  private cr(ImageGalleryUI paramImageGalleryUI)
  {
  }

  final cr a(String paramString, Callable paramCallable)
  {
    this.hkv.put(paramString, paramCallable);
    return this;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.cr
 * JD-Core Version:    0.6.2
 */