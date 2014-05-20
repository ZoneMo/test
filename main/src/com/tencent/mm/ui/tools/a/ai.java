package com.tencent.mm.ui.tools.a;

import java.io.File;
import java.io.FileFilter;
import java.util.regex.Pattern;

final class ai
  implements FileFilter
{
  public final boolean accept(File paramFile)
  {
    return Pattern.matches("cpu[0-9]+", paramFile.getName());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.a.ai
 * JD-Core Version:    0.6.2
 */