package com.tencent.mm.ui.tools;

public final class cc
{
  private volatile int hjZ = 1;

  public cc(ImageGalleryGridUI paramImageGalleryGridUI)
  {
  }

  public final boolean isLocked()
  {
    return this.hjZ == 0;
  }

  final void release()
  {
    try
    {
      this.hjZ = 1;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  final boolean tryLock()
  {
    int i = 1;
    try
    {
      if (this.hjZ == i)
      {
        this.hjZ = 0;
        return i;
      }
      int j = 0;
    }
    finally
    {
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.cc
 * JD-Core Version:    0.6.2
 */