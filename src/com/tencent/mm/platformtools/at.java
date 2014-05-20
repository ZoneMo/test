package com.tencent.mm.platformtools;

import java.util.HashMap;
import java.util.concurrent.ConcurrentLinkedQueue;

public final class at
{
  public static boolean cHA = false;
  public static boolean cHB = false;
  public static int cHC = 0;
  public static int cHD = 0;
  public static boolean cHE = false;
  public static String cHF = null;
  public static String cHG = null;
  public static boolean cHH = false;
  public static int cHI = 0;
  public static int cHJ = 0;
  public static int cHK = 0;
  public static String cHL = "";
  public static String cHM = null;
  public static String cHN = null;
  public static boolean cHO = false;
  public static boolean cHP = false;
  private static HashMap cHQ = new HashMap();
  public static boolean cHa = false;
  public static boolean cHb = false;
  public static boolean cHc = false;
  public static boolean cHd = false;
  public static boolean cHe = false;
  public static boolean cHf = false;
  public static boolean cHg = false;
  public static boolean cHh = false;
  public static boolean cHi = false;
  public static boolean cHj = false;
  public static boolean cHk = false;
  public static String cHl = "";
  public static boolean cHm = false;
  public static boolean cHn = false;
  public static boolean cHo = false;
  public static boolean cHp = false;
  public static int cHq = 0;
  public static boolean cHr = false;
  public static boolean cHs = false;
  public static boolean cHt = false;
  public static String cHu = "";
  public static String cHv = "";
  public static boolean cHw = false;
  public static boolean cHx = false;
  public static boolean cHy = false;
  public static boolean cHz = false;

  public static void Q(int paramInt1, int paramInt2)
  {
    synchronized (cHQ)
    {
      ConcurrentLinkedQueue localConcurrentLinkedQueue = (ConcurrentLinkedQueue)cHQ.get(Integer.valueOf(paramInt1));
      if (localConcurrentLinkedQueue == null)
      {
        localConcurrentLinkedQueue = new ConcurrentLinkedQueue();
        cHQ.put(Integer.valueOf(paramInt1), localConcurrentLinkedQueue);
      }
      localConcurrentLinkedQueue.add(Integer.valueOf(paramInt2));
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.platformtools.at
 * JD-Core Version:    0.6.2
 */