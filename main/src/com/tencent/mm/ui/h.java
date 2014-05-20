package com.tencent.mm.ui;

import android.content.Context;
import android.util.SparseArray;
import android.widget.BaseAdapter;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import info.guardianproject.database.CursorDataItem;
import info.guardianproject.database.IHeapCursor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;

public abstract class h extends BaseAdapter
{
  public String TAG = "MicroMsg.CursorDataAdapter";
  protected Context context;
  private int duO = 0;
  private boolean gkD = true;
  private m gkE;
  private HashMap gkF;
  protected k gkG;
  public int gkH = 1000;
  public int gkI = 3000;
  private boolean gkJ = true;
  int gkK = 0;
  private boolean gkL;
  private boolean gkM;
  private o gkN;
  public Object gkO = null;
  private int pageSize;

  public h(Context paramContext)
  {
    this(paramContext, (byte)0);
    this.pageSize = 5000;
    String str = this.TAG;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(5000);
    aa.d(str, "newCursor setPageSize %d", arrayOfObject);
  }

  private h(Context paramContext, byte paramByte)
  {
    this.context = paramContext;
    this.gkL = true;
  }

  private h(Context paramContext, char paramChar)
  {
    this.context = paramContext;
    this.gkL = true;
    this.gkM = false;
    this.gkH = 800;
    this.gkI = 2000;
  }

  public h(Context paramContext, short paramShort)
  {
    this(paramContext, '\000');
  }

  private void N(String paramString, boolean paramBoolean)
  {
    if (this.duO == 0);
    for (int i = 1; ; i = 0)
    {
      if ((i == 0) && ((paramBoolean | this.gkJ)))
      {
        if (!paramBoolean)
        {
          String str = this.TAG;
          Object[] arrayOfObject = new Object[3];
          arrayOfObject[0] = Boolean.valueOf(this.gkJ);
          arrayOfObject[1] = paramString;
          arrayOfObject[2] = cj.azV();
          aa.d(str, "newcursor cache needRefresh : needRefreshInfront :%b from : %s %s", arrayOfObject);
        }
        cY(false);
      }
      return;
    }
  }

  private void a(m paramm)
  {
    cZ(false);
    this.gkE = paramm;
    this.gkE.getCount();
    aDV();
  }

  private void a(m paramm, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramBoolean1)
    {
      if ((this.gkN != null) && (this.gkN.aEj()))
        this.gkN.aEh();
      if (this.gkF != null)
        this.gkF.clear();
    }
    if (paramBoolean2)
    {
      a(new j(this, paramm));
      return;
    }
    a(paramm);
  }

  private void a(n paramn)
  {
    long l = System.currentTimeMillis();
    if (this.gkG != null)
      this.gkG.FX();
    if (paramn != null)
      paramn.aEe();
    notifyDataSetChanged();
    if (this.gkG != null)
      this.gkG.FW();
    if (this.gkN != null)
      o.b(this.gkN);
    String str = this.TAG;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Long.valueOf(System.currentTimeMillis() - l);
    aa.d(str, "newcursor update callback last :%d ", arrayOfObject);
  }

  private void a(IHeapCursor paramIHeapCursor)
  {
    cZ(true);
    if ((this.gkE == null) || (this.gkE.getInnerCursor() != paramIHeapCursor))
    {
      if ((this.gkE != null) && (!this.gkE.isClosed()))
      {
        this.gkE.close();
        this.gkE = null;
      }
      this.gkE = new m(this, paramIHeapCursor);
      this.gkE.getCount();
      aDV();
      notifyDataSetChanged();
    }
  }

  private void aDV()
  {
    if (this.gkL)
      if (!this.gkE.hasLoadAllData())
        break label99;
    label99: for (int i = 1; ; i = 2)
    {
      if ((i != this.gkK) && (this.gkK != 0))
      {
        if ((this.gkN != null) && (this.gkN.aEj()))
          a(new m(this, aDX()), true, false);
        String str = this.TAG;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(i);
        aa.d(str, "newcursor change update stats  %d ", arrayOfObject);
      }
      this.gkK = i;
      return;
    }
  }

  private void aDZ()
  {
    this.gkF.clear();
    this.gkF.put(this.gkO, null);
  }

  private int aEa()
  {
    if ((this.gkF == null) || (this.gkF.size() == 0))
      return 0;
    if (this.gkF.containsKey(this.gkO))
      return 2;
    return 1;
  }

  private void aEc()
  {
    if ((this.gkE != null) && (!this.gkE.isClosed()) && (this.gkF.size() == 0))
    {
      aa.i(this.TAG, "events size is 0  ");
      return;
    }
    a(new i(this));
  }

  private void cY(boolean paramBoolean)
  {
    int i;
    int j;
    int k;
    if ((this.gkM) || (paramBoolean))
      if (((this.gkN != null) && (this.gkN.aEj())) || (aEa() != 0))
      {
        i = 1;
        if (i != 0)
        {
          j = aEa();
          if (this.gkN == null)
            break label264;
          k = o.a(this.gkN);
          String str2 = this.TAG;
          Object[] arrayOfObject2 = new Object[1];
          arrayOfObject2[0] = Integer.valueOf(k);
          aa.d(str2, "newcursor mWorkerHandler.isHandingMsg,type is %d ", arrayOfObject2);
          if (k != 0)
            this.gkN.aEh();
          if (j == 2)
            break label264;
        }
      }
    while (true)
    {
      String str1 = this.TAG;
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Integer.valueOf(k);
      aa.d(str1, "newcursor ensureNewState  refreshstatus is %d ", arrayOfObject1);
      this.duO = 0;
      if (k == 2)
        a(new m(this, aDX()), true, true);
      while (true)
      {
        this.duO = 0;
        return;
        i = 0;
        break;
        aEc();
        continue;
        int m = aEa();
        if (m == 0)
        {
          aa.i(this.TAG, "newcursor need not change ");
          return;
        }
        if (m == 2)
        {
          aa.i(this.TAG, "newcursor enqueueMessage resetcursor ");
          this.gkF.clear();
        }
        if (this.gkN == null)
          this.gkN = new o(this);
        o.a(this.gkN, m);
      }
      label264: k = j;
    }
  }

  private void cZ(boolean paramBoolean)
  {
    if (this.gkE != null)
    {
      this.gkE.close();
      this.gkE = null;
    }
    if ((paramBoolean) && (this.gkN != null))
    {
      this.gkN.quit();
      this.gkN = null;
      if (this.gkF != null)
      {
        this.gkF.clear();
        aa.i(this.TAG, "newcursor closeCursor,clear events");
      }
    }
    this.duO = 0;
    this.gkK = 0;
  }

  public final void a(k paramk)
  {
    this.gkG = paramk;
  }

  public final void a(SparseArray[] paramArrayOfSparseArray)
  {
    SparseArray[] arrayOfSparseArray = this.gkE.getPosistionMaps();
    for (int i = 0; i < arrayOfSparseArray.length; i++)
    {
      arrayOfSparseArray[i].clear();
      for (int j = 0; j < paramArrayOfSparseArray[i].size(); j++)
        arrayOfSparseArray[i].put(j, paramArrayOfSparseArray[i].get(j));
    }
  }

  public abstract SparseArray[] a(HashSet paramHashSet, SparseArray[] paramArrayOfSparseArray);

  public final void aDU()
  {
    this.gkG = null;
  }

  public final int aDW()
  {
    if (this.gkE == null)
      return 0;
    return this.gkE.aDW();
  }

  public abstract IHeapCursor aDX();

  public final SparseArray[] aDY()
  {
    if (this.gkE == null)
      return null;
    SparseArray[] arrayOfSparseArray1 = this.gkE.getPosistionMaps();
    SparseArray[] arrayOfSparseArray2 = new SparseArray[arrayOfSparseArray1.length];
    for (int i = 0; i < arrayOfSparseArray2.length; i++)
    {
      arrayOfSparseArray2[i] = new SparseArray();
      for (int j = 0; j < arrayOfSparseArray1[i].size(); j++)
        arrayOfSparseArray2[i].put(j, arrayOfSparseArray1[i].get(j));
    }
    return arrayOfSparseArray2;
  }

  public final void aEb()
  {
    aa.i(this.TAG, "newcursor resume syncNow ");
    this.gkD = true;
    cY(true);
  }

  public final void aEd()
  {
    this.gkJ = false;
  }

  public final void closeCursor()
  {
    cZ(true);
  }

  public abstract CursorDataItem createItem();

  public int getCount()
  {
    if (this.gkE == null)
    {
      long l = System.currentTimeMillis();
      a(aDX());
      String str = this.TAG;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Long.valueOf(System.currentTimeMillis() - l);
      aa.d(str, "newcursor createCursor last : %d", arrayOfObject);
    }
    N("getcount", false);
    return this.gkE.getCount();
  }

  public final CursorDataItem getItem(int paramInt)
  {
    if (this.gkE == null)
      a(aDX());
    N("getItem", false);
    this.gkE.moveToPosition(paramInt);
    CursorDataItem localCursorDataItem = this.gkE.getItem(paramInt);
    if (localCursorDataItem != null)
    {
      this.gkE.getInnerCursor();
      localCursorDataItem.onItemShow();
      return localCursorDataItem;
    }
    String str = this.TAG;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    aa.b(str, "newcursor getItem error %d", arrayOfObject);
    return localCursorDataItem;
  }

  public final CursorDataItem getItemByKey(Object paramObject)
  {
    if (this.gkE == null)
      return null;
    return this.gkE.getItemByKey(paramObject);
  }

  public long getItemId(int paramInt)
  {
    return 0L;
  }

  protected boolean hasLoadAllData()
  {
    if (this.gkE == null)
      return false;
    return this.gkE.hasLoadAllData();
  }

  public void i(Object paramObject, int paramInt)
  {
    boolean bool1;
    if (this.gkE != null)
    {
      if (this.gkF == null)
        this.gkF = new HashMap();
      bool1 = this.gkF.containsKey(this.gkO);
      if ((paramInt != 5) && (this.gkL) && (paramInt != 1))
        break label211;
      if (paramInt == 5)
        break label186;
      aDZ();
    }
    label96: label741: 
    do
    {
      break label185;
      String str1 = this.TAG;
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Integer.valueOf(paramInt);
      aa.d(str1, "newcursor syncHandle is true ,changeType is %d  ", arrayOfObject1);
      int i = 1;
      this.duO = aEa();
      String str2 = this.TAG;
      Object[] arrayOfObject2 = new Object[3];
      arrayOfObject2[0] = Integer.valueOf(this.duO);
      if (this.gkK == 1);
      for (boolean bool2 = true; ; bool2 = false)
      {
        arrayOfObject2[1] = Boolean.valueOf(bool2);
        arrayOfObject2[2] = Integer.valueOf(paramInt);
        aa.d(str2, "newcursor refreshStatus: %d ,hasLoadedAllDataStatus %b changeType :%d ", arrayOfObject2);
        if (i == 0)
          break label741;
        aa.i(this.TAG, "newcursor event is refresh sync ");
        cY(true);
        return;
        if (bool1)
          break;
        this.gkF.put(paramObject, new l(paramObject, paramInt));
        break;
        if (bool1)
        {
          aa.i(this.TAG, "newcursor need reset ,return ");
          return;
        }
        if (this.gkK == 1)
        {
          if ((this.gkE.containKey(paramObject)) || (paramInt == 2))
          {
            HashMap localHashMap = this.gkF;
            l locall1 = new l(paramObject, paramInt);
            if ((locall1.gkR == 2) && (this.gkE.containKey(locall1.fc)))
              locall1.gkR = 3;
            l locall2 = (l)localHashMap.get(paramObject);
            int j;
            if (locall2 != null)
            {
              j = 1;
              if (j == 0)
                break label697;
              localHashMap.remove(locall2);
              switch (locall1.gkR)
              {
              case 3:
              case 4:
              default:
                switch (locall2.gkR)
                {
                case 3:
                case 4:
                default:
                  locall1.gkR = 3;
                  localHashMap.put(paramObject, locall1);
                case 5:
                case 2:
                }
                break;
              case 5:
              case 2:
              }
            }
            while (true)
            {
              if (!this.gkE.checkIsCacheUseful(localHashMap.size()))
              {
                String str4 = this.TAG;
                Object[] arrayOfObject4 = new Object[1];
                arrayOfObject4[0] = Integer.valueOf(localHashMap.size());
                aa.d(str4, "newcursor events size exceed limit :size is :  %d", arrayOfObject4);
                localHashMap.clear();
                localHashMap.put(this.gkO, null);
              }
              String str3 = this.TAG;
              Object[] arrayOfObject3 = new Object[1];
              arrayOfObject3[0] = Integer.valueOf(this.gkF.size());
              aa.d(str3, "newcursor add event events size %d", arrayOfObject3);
              i = 0;
              break;
              j = 0;
              break label316;
              switch (locall2.gkR)
              {
              case 2:
              case 3:
              case 4:
              default:
                locall1.gkR = 5;
                break;
              case 5:
                aa.i(this.TAG, "newcursor processEvent last delete, now delete, impossible");
                locall1.gkR = 5;
                break;
                switch (locall2.gkR)
                {
                case 3:
                case 4:
                default:
                  aa.i(this.TAG, "newcursor processEvent last update, now insert, impossible");
                  locall1.gkR = 2;
                  break;
                case 5:
                  locall1.gkR = 3;
                  break;
                case 2:
                  aa.i(this.TAG, "newcursor processEvent last insert, now insert, impossible");
                  locall1.gkR = 2;
                  break;
                  aa.i(this.TAG, "newcursor processEvent last delete, now update, impossible");
                  break label400;
                  locall1.gkR = 2;
                  break;
                  localHashMap.put(paramObject, locall1);
                }
                break;
              }
            }
          }
          aa.i(this.TAG, "newcursor event pass ");
          i = 0;
          break label96;
        }
        aDZ();
        i = 0;
        break label96;
      }
    }
    while ((!this.gkD) || (!this.gkJ));
    label185: label186: label211: cY(false);
    label316:
  }

  public void pause()
  {
    this.gkD = false;
    aa.i(this.TAG, "new cursor pasue");
  }

  public abstract ArrayList rebulidAllChangeData(ArrayList paramArrayList);

  public final void resume()
  {
    aa.i(this.TAG, "newcursor resume ");
    this.gkD = true;
    N("resume", true);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.h
 * JD-Core Version:    0.6.2
 */