package com.tencent.mm.model;

import android.database.Cursor;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.k;
import com.tencent.mm.storage.n;
import com.tencent.mm.storage.o;
import java.io.File;
import java.io.FileInputStream;
import java.io.ObjectInputStream;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public final class ag
{
  public static void c(b paramb)
  {
    File localFile = new File(paramb.sW() + "chatstate.cfg");
    try
    {
      if (localFile.exists())
      {
        if (localFile.length() == 0L)
          return;
        FileInputStream localFileInputStream = new FileInputStream(localFile);
        ObjectInputStream localObjectInputStream = new ObjectInputStream(localFileInputStream);
        Map localMap = (Map)localObjectInputStream.readObject();
        localObjectInputStream.close();
        localFileInputStream.close();
        if ((localMap != null) && (localMap.size() > 0))
        {
          Iterator localIterator = localMap.keySet().iterator();
          while (localIterator.hasNext())
          {
            String str = (String)localIterator.next();
            Integer localInteger = (Integer)localMap.get(str);
            if (localInteger != null)
            {
              n localn = paramb.sx().tZ(str);
              if ((localn != null) && (str.equals(localn.getUsername())) && (localn.rP() != localInteger.intValue()))
              {
                localn.ca(localInteger.intValue());
                paramb.sx().a(localn, str);
              }
            }
          }
          localFile.delete();
          return;
        }
      }
    }
    catch (Exception localException)
    {
    }
  }

  public static void d(b paramb)
  {
    Cursor localCursor = paramb.su().aAy();
    if (localCursor.moveToFirst())
      do
      {
        i locali = new i();
        locali.convertFrom(localCursor);
        locali.qS();
        paramb.su().a(locali.getUsername(), locali);
      }
      while (localCursor.moveToNext());
    localCursor.close();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.model.ag
 * JD-Core Version:    0.6.2
 */