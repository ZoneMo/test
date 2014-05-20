package com.tencent.mm.ui.tools;

import android.net.Uri;
import com.tencent.mm.storage.ak;
import com.tencent.mm.ui.tools.a.l;
import java.io.File;

public final class ee extends l
{
  public ee(ak paramak, String paramString)
  {
    super(paramak, "MsgInfo" + paramString);
  }

  public final Uri aNz()
  {
    ak localak = (ak)aOG();
    String str = bs.c(localak, bs.S(localak));
    if ((str == null) || (str.length() <= 0))
      return Uri.parse("android.resource://com.tencent.mm/2130838946");
    return Uri.fromFile(new File(str));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.ee
 * JD-Core Version:    0.6.2
 */