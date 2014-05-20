package com.tencent.mm.pluginsdk.ui.tools;

import java.io.File;
import java.io.FileFilter;

final class i
  implements FileFilter
{
  i(h paramh)
  {
  }

  public final boolean accept(File paramFile)
  {
    return !paramFile.isHidden();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.tools.i
 * JD-Core Version:    0.6.2
 */