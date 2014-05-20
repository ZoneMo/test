package com.tencent.mm.plugin.search.model;

import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.ak;
import java.util.List;

final class am extends af
{
  private ak[] ehZ;

  public am(ag paramag, List paramList)
  {
    this.ehZ = new ak[paramList.size()];
    if (!paramList.isEmpty())
      paramList.toArray(this.ehZ);
  }

  public final boolean execute()
  {
    if ((this.ehZ == null) || (this.ehZ.length == 0))
      return true;
    ag.a(this.ehV).beginTransaction();
    for (ak localak : this.ehZ)
    {
      if (Thread.interrupted())
      {
        aa.d("MicroMsg.SearchMessageLogic", "Inserting message index interrupted.");
        ag.a(this.ehV).commit();
        throw new InterruptedException();
      }
      if (localak.getType() == 1)
      {
        String str1 = localak.aCl();
        String str2 = localak.getContent();
        if ((str1 != null) && (str2 != null))
        {
          String str3 = ag.al(str1, str2);
          ag.a(this.ehV).a(65536, 0, localak.Bo(), str1, localak.DL(), str3);
        }
      }
    }
    ag.a(this.ehV).commit();
    return true;
  }

  public final String toString()
  {
    return "InsertMessage(\"" + this.ehZ + "\")";
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.search.model.am
 * JD-Core Version:    0.6.2
 */