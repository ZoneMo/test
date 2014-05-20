package com.tencent.mm.ar;

import android.os.Debug;
import android.os.Handler;
import android.os.Message;
import com.tencent.mm.a.k;
import com.tencent.mm.compatible.g.l;
import com.tencent.mm.model.v;
import com.tencent.mm.platformtools.aq;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.ba;
import com.tencent.mm.sdk.platformtools.cj;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.EventListener;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;

public final class a
  implements EventListener
{
  static Handler ctk = new c();
  public static a gjO;
  private static int gjP = 5242880;
  public static final String gjR = l.getExternalStorageDirectory() + "/tencent/MicroMsg/tracedog/";
  private volatile boolean cxO;
  private volatile boolean gjQ;
  private LinkedBlockingQueue gjS;
  ExecutorService gjT;
  private WeakReference gjU;

  private void a(e parame)
  {
    if (this.gjQ);
    do
    {
      return;
      if (!l.qd())
      {
        aa.i("MicroMsg.TraceDebugManager", "TRACE sdcard is invalid");
        return;
      }
      aDE();
      try
      {
        File localFile = new File(gjR);
        if ((parame.bRd != 6) && (localFile.exists()))
        {
          aa.i("MicroMsg.TraceDebugManager", "TRACE delete all file ");
          j(localFile);
        }
        localFile.mkdirs();
        String str = parame.gjZ;
        if (parame.gjX <= 0);
        int i;
        for (int j = gjP; ; j = 1024 * (i * 1024))
        {
          Debug.startMethodTracing(str, j);
          this.gjQ = true;
          if (parame.bRd != 6)
            break;
          aa.i("MicroMsg.TraceDebugManager", "TRACE startTrace uploadType is CLIENT ");
          return;
          i = parame.gjX;
        }
      }
      catch (Throwable localThrowable)
      {
        while (true)
        {
          this.gjQ = false;
          aa.e("MicroMsg.TraceDebugManager", "TRACE startMethodTracing ERROR ");
        }
      }
    }
    while (!this.gjQ);
    Message localMessage = Message.obtain();
    localMessage.what = 0;
    localMessage.obj = parame;
    if ((cj.hX(parame.className)) || (parame.bRd == 5))
    {
      ctk.sendMessageDelayed(localMessage, 15000L);
      return;
    }
    ctk.sendMessageDelayed(localMessage, 10000L);
  }

  public static a aDD()
  {
    if (gjO == null)
      gjO = new a();
    return gjO;
  }

  private static void aDE()
  {
    ctk.removeMessages(0);
    ctk.removeMessages(2);
    ctk.removeMessages(1);
  }

  private static void j(File paramFile)
  {
    if (paramFile.isFile())
      paramFile.delete();
    while (!paramFile.isDirectory())
      return;
    File[] arrayOfFile = paramFile.listFiles();
    if ((arrayOfFile == null) || (arrayOfFile.length == 0))
    {
      paramFile.delete();
      return;
    }
    int i = arrayOfFile.length;
    for (int j = 0; j < i; j++)
      j(arrayOfFile[j]);
    paramFile.delete();
  }

  private static String k(File paramFile)
  {
    ArrayList localArrayList = new ArrayList();
    if (paramFile.isDirectory())
    {
      aa.i("MicroMsg.TraceDebugManager", "TRACE currentPath is dir");
      File[] arrayOfFile = paramFile.listFiles();
      if (arrayOfFile == null)
      {
        aa.e("MicroMsg.TraceDebugManager", " get file list failed");
        return null;
      }
      for (int j = 0; j < arrayOfFile.length; j++)
        localArrayList.add(arrayOfFile[j]);
    }
    localArrayList.add(paramFile);
    File localFile = new File(gjR + cj.FD() + ".zip");
    try
    {
      k.a(localArrayList, localFile);
      for (int i = 0; i < localArrayList.size(); i++)
        ((File)localArrayList.get(i)).delete();
    }
    catch (Exception localException)
    {
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = localException.getMessage();
      aa.b("MicroMsg.TraceDebugManager", "zip file failed msg:%s ", arrayOfObject1);
      return null;
    }
    if (localFile.length() > 3145728L)
    {
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Long.valueOf(localFile.length());
      aa.b("MicroMsg.TraceDebugManager", "trace file is too large:%d ", arrayOfObject2);
      return null;
    }
    return localFile.getAbsolutePath();
  }

  private void vQ(String paramString)
  {
    if (paramString == null)
      return;
    this.cxO = true;
    if (cj.hX(paramString))
      aa.b("MicroMsg.TraceDebugManager", "TRACE error uploadPath %s ", new Object[] { paramString });
    while (true)
    {
      this.cxO = false;
      return;
      if (!l.qd())
      {
        aa.e("MicroMsg.TraceDebugManager", "TRACE sdcard invalid.");
      }
      else
      {
        File localFile = new File(paramString);
        if (!localFile.exists())
        {
          aa.e("MicroMsg.TraceDebugManager", "TRACE upload file is not exist");
        }
        else
        {
          if (localFile.isDirectory())
            paramString = k(localFile);
          if ((paramString != null) && (new File(paramString).length() >= 131072L))
          {
            boolean bool = aq.a(paramString, v.th(), true, false);
            Object[] arrayOfObject = new Object[1];
            arrayOfObject[0] = Boolean.valueOf(bool);
            aa.d("MicroMsg.TraceDebugManager", "TRACE upload : %b", arrayOfObject);
            if (bool)
              com.tencent.mm.a.c.a(new File(gjR));
          }
        }
      }
    }
  }

  public final void a(f paramf)
  {
    this.gjU = new WeakReference(paramf);
  }

  public final void ao(String paramString, int paramInt)
  {
    e locale;
    if ((this.gjS != null) && (this.gjS.size() > 0))
    {
      Object[] arrayOfObject = new Object[4];
      arrayOfObject[0] = Boolean.valueOf(this.cxO);
      arrayOfObject[1] = Boolean.valueOf(this.gjQ);
      arrayOfObject[2] = paramString;
      arrayOfObject[3] = Integer.valueOf(paramInt);
      aa.d("MicroMsg.TraceDebugManager", "TRACE gatherData : isUploading : %b  hasStart :%b currentClass : %s currentCode %d ", arrayOfObject);
      if ((!this.cxO) && (!this.gjQ))
      {
        Iterator localIterator = this.gjS.iterator();
        while (localIterator.hasNext())
        {
          locale = (e)localIterator.next();
          if (locale.className == null)
            break label153;
          if ((locale.className.equals(paramString)) && (locale.bRd == paramInt))
          {
            a(locale);
            this.gjS.remove(locale);
          }
        }
      }
    }
    return;
    label153: a(null);
    this.gjS.remove(locale);
  }

  public final boolean b(e parame)
  {
    aDE();
    if ((!this.gjQ) || (this.cxO))
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Boolean.valueOf(this.gjQ);
      arrayOfObject[1] = Boolean.valueOf(this.cxO);
      aa.d("MicroMsg.TraceDebugManager", "TRACE stopTrace hasStartTrace : %b ,isUploading :%b  ", arrayOfObject);
      return false;
    }
    if (!l.qd())
    {
      aa.i("MicroMsg.TraceDebugManager", "TRACE stopTrace sdcard invalid");
      return false;
    }
    this.gjT.execute(new b(this, parame));
    return true;
  }

  public final void c(e parame)
  {
    if (parame.bRd <= 0)
      return;
    if (this.gjT == null)
      this.gjT = Executors.newSingleThreadExecutor();
    if ((this.cxO) || (this.gjQ))
    {
      Object[] arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = Boolean.valueOf(this.cxO);
      arrayOfObject1[1] = Boolean.valueOf(this.gjQ);
      aa.d("MicroMsg.TraceDebugManager", "TRACE isUloading or hasStartTrace %b %b", arrayOfObject1);
      return;
    }
    ctk.removeMessages(0);
    if ((parame.gjY == 4) || (parame.gjY == 5))
    {
      int i = parame.gjY;
      this.gjT.execute(new d(this, i));
    }
    while (true)
    {
      Object[] arrayOfObject2 = new Object[3];
      arrayOfObject2[0] = parame.className;
      arrayOfObject2[1] = Integer.valueOf(parame.bRd);
      arrayOfObject2[2] = Integer.valueOf(parame.gjY);
      aa.d("MicroMsg.TraceDebugManager", "TRACE PUSH : class : %s  code :%s type :%s", arrayOfObject2);
      return;
      if ((parame.bRd == 6) || (parame.bRd == 5))
      {
        Message localMessage = Message.obtain();
        localMessage.what = 2;
        localMessage.obj = parame;
        if (parame.bRd == 5)
          ctk.sendMessage(localMessage);
        else
          ctk.sendMessageDelayed(localMessage, 500L);
      }
      else
      {
        if (this.gjS == null)
          this.gjS = new LinkedBlockingQueue();
        this.gjS.clear();
        this.gjS.add(parame);
      }
    }
  }

  public final void u(int paramInt, String paramString)
  {
    if ((paramInt == 1) || ((paramInt == 3) && (ba.bt(al.getContext()))))
      vQ(paramString);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ar.a
 * JD-Core Version:    0.6.2
 */