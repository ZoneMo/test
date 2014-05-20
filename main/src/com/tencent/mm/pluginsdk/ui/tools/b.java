package com.tencent.mm.pluginsdk.ui.tools;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class b
{
  List ftV = new ArrayList();

  final String auM()
  {
    if ((this.ftV == null) || (this.ftV.size() == 0))
      return "";
    StringBuffer localStringBuffer = new StringBuffer();
    Iterator localIterator = this.ftV.iterator();
    while (localIterator.hasNext())
    {
      localStringBuffer.append((String)localIterator.next());
      localStringBuffer.append(";");
    }
    return localStringBuffer.toString();
  }

  final void mz(String paramString)
  {
    this.ftV = new ArrayList();
    if ((paramString == null) || (paramString.length() == 0));
    while (true)
    {
      return;
      for (String str : paramString.split(";"))
        this.ftV.add(str);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.tools.b
 * JD-Core Version:    0.6.2
 */