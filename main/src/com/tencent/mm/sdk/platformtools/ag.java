package com.tencent.mm.sdk.platformtools;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import junit.framework.Assert;

public final class ag
{
  private static ai bZp;
  private static boolean gdA = false;
  private static boolean gdB;
  private static int gdu;
  private static Map gdy = new HashMap();
  private final boolean fkL;
  private final int gdv;
  private long gdw = 0L;
  private long gdx = 0L;
  private final ah gdz;

  public ag(ah paramah)
  {
    Assert.assertTrue("bumper not initialized", gdA);
    this.gdz = paramah;
    this.fkL = true;
    if (gdu >= 8192)
      gdu = 0;
    int i = 1 + gdu;
    gdu = i;
    this.gdv = i;
  }

  public static void a(ai paramai)
  {
    gdA = true;
    bZp = paramai;
  }

  public static long azl()
  {
    gdB = false;
    LinkedList localLinkedList = new LinkedList();
    HashSet localHashSet = new HashSet();
    localHashSet.addAll(gdy.keySet());
    Iterator localIterator = localHashSet.iterator();
    long l1 = 9223372036854775807L;
    ag localag;
    long l3;
    if (localIterator.hasNext())
    {
      Integer localInteger = (Integer)localIterator.next();
      localag = (ag)gdy.get(localInteger);
      if (localag == null)
        break label276;
      l3 = cj.O(localag.gdw);
      if (l3 < 0L)
        l3 = 0L;
      if (l3 > localag.gdx)
      {
        if ((!localag.gdz.ok()) || (!localag.fkL))
          localLinkedList.add(localInteger);
        while (true)
        {
          localag.gdw = cj.FE();
          break;
          l1 = localag.gdx;
        }
      }
      if (localag.gdx - l3 >= l1)
        break label276;
    }
    label276: for (long l2 = localag.gdx - l3; ; l2 = l1)
    {
      l1 = l2;
      break;
      for (int i = 0; i < localLinkedList.size(); i++)
        gdy.remove(localLinkedList.get(i));
      if ((!gdB) && (l1 == 9223372036854775807L) && (bZp != null))
      {
        bZp.cancel();
        aa.v("MicroMsg.MAlarmHandler", "cancel bumper for no more handler");
      }
      return l1;
    }
  }

  public final void azm()
  {
    gdB = true;
    this.gdx = 50000L;
    this.gdw = cj.FE();
    long l1 = this.gdx;
    aa.d("MicroMsg.MAlarmHandler", "check need prepare: check=" + l1);
    Iterator localIterator = gdy.entrySet().iterator();
    long l2 = 9223372036854775807L;
    ag localag;
    long l4;
    while (localIterator.hasNext())
    {
      localag = (ag)((Map.Entry)localIterator.next()).getValue();
      if (localag == null)
        break label232;
      l4 = cj.O(localag.gdw);
      if (l4 < 0L)
        l4 = 0L;
      if (l4 > localag.gdx)
        l2 = localag.gdx;
      else
        if (localag.gdx - l4 >= l2)
          break label232;
    }
    label232: for (long l3 = localag.gdx - l4; ; l3 = l2)
    {
      l2 = l3;
      break;
      if (l2 > l1);
      for (int i = 1; ; i = 0)
      {
        azn();
        gdy.put(Integer.valueOf(this.gdv), this);
        if ((bZp != null) && (i != 0))
        {
          aa.v("MicroMsg.MAlarmHandler", "prepare bumper");
          bZp.prepare();
        }
        return;
      }
    }
  }

  public final void azn()
  {
    gdy.remove(Integer.valueOf(this.gdv));
  }

  protected final void finalize()
  {
    azn();
    super.finalize();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.platformtools.ag
 * JD-Core Version:    0.6.2
 */