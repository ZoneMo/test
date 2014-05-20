package com.tencent.mm.model;

import android.content.Context;
import android.content.SharedPreferences;
import com.tencent.mm.sdk.platformtools.al;

public class cm
{
  private static cm cjD;
  private final SharedPreferences chz = al.getContext().getSharedPreferences(al.azs(), 0);

  public static cm vs()
  {
    try
    {
      if (cjD == null)
        cjD = new cm();
      return cjD;
    }
    finally
    {
    }
  }

  public final int getId()
  {
    return this.chz.getInt("MicroMsg.RegStyleStoragestyle_id", 21);
  }

  public final int vt()
  {
    return this.chz.getInt("MicroMsg.RegStyleStoragenew_flow", 0);
  }

  public final int vu()
  {
    return this.chz.getInt("MicroMsg.RegStyleStoragehas_password", 0);
  }

  public final int vv()
  {
    return this.chz.getInt("MicroMsg.RegStyleStoragehas_AVATAR", 0);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.model.cm
 * JD-Core Version:    0.6.2
 */