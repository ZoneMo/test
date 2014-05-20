package com.tencent.mm.ac;

import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Queue;
import java.util.Set;

final class e
{
  public String cwC;
  public Queue cwD;

  e(String paramString)
  {
    this.cwC = paramString;
    this.cwD = new LinkedList();
    aa.d("MicroMsg.PushMessageExtension", "DoSceneStruct:" + paramString);
    ArrayList localArrayList = b.o(al.getContext(), paramString);
    if ((localArrayList == null) || (localArrayList.size() <= 0))
      aa.e("MicroMsg.PushMessageExtension", "Parse Message Failed !");
    while (true)
    {
      return;
      for (int i = 0; i < localArrayList.size(); i++)
      {
        Map localMap = ((b)localArrayList.get(i)).BP();
        if (localMap != null)
        {
          Iterator localIterator = localMap.entrySet().iterator();
          while (localIterator.hasNext())
            this.cwD.offer(((Map.Entry)localIterator.next()).getValue());
        }
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ac.e
 * JD-Core Version:    0.6.2
 */