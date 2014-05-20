package com.tencent.mm.storage;

import com.tencent.mm.am.a;
import com.tencent.mm.protocal.a.mj;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

@Deprecated
public final class bi extends bz
{
  private List dtu;
  private mj giI;

  public bi(List paramList)
  {
    super(new Object[0]);
    this.dtu = paramList;
    LinkedList localLinkedList = new LinkedList();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
      localLinkedList.add(((bj)localIterator.next()).aDd());
    this.giI = new mj();
    this.giI.fAC = paramList.size();
    this.giI.fAD = localLinkedList;
  }

  public final a aDb()
  {
    return this.giI;
  }

  public final int getCmdId()
  {
    return 36;
  }

  public final String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    Iterator localIterator = this.dtu.iterator();
    while (localIterator.hasNext())
    {
      localStringBuffer.append(((bj)localIterator.next()).aDc());
      localStringBuffer.append(";");
    }
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(123);
    arrayOfObject[1] = localStringBuffer.toString();
    return av.f(arrayOfObject);
  }

  public final int zO()
  {
    return 123;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.storage.bi
 * JD-Core Version:    0.6.2
 */