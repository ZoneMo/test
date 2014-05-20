package com.tencent.mm.plugin.ext.provider;

import android.content.ContentValues;
import android.content.UriMatcher;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.net.Uri;
import com.tencent.mm.ap.e;
import com.tencent.mm.m.af;
import com.tencent.mm.m.c;
import com.tencent.mm.m.m;
import com.tencent.mm.m.p;
import com.tencent.mm.model.be;
import com.tencent.mm.pluginsdk.c.b;
import com.tencent.mm.protocal.a.mm;
import com.tencent.mm.sdk.platformtools.LBSManager;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.an;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.x;
import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

public final class ExtControlProviderNearBy extends ExtContentProviderBase
  implements p
{
  private static final String[] cs = { "nickname", "avatar", "distance", "signature", "sex" };
  private static final UriMatcher dga;
  private static boolean dgb = false;
  private static ay dgc = new ay(new f(), false);
  private LBSManager cnY;
  private int dfS;
  private List dfT;
  private e dfU;
  private Set dfV;
  private CountDownLatch dfW;
  private CountDownLatch dfX;
  private mm dfY;
  private boolean dfZ;
  private b dgd = new h(this);
  private x dge = new i(this);

  static
  {
    UriMatcher localUriMatcher = new UriMatcher(-1);
    dga = localUriMatcher;
    localUriMatcher.addURI("com.tencent.mm.plugin.ext.NearBy", "male", 1);
    dga.addURI("com.tencent.mm.plugin.ext.NearBy", "female", 2);
    dga.addURI("com.tencent.mm.plugin.ext.NearBy", "all", 0);
  }

  private void Mt()
  {
    if (this.dfV.size() > 0)
    {
      Iterator localIterator = this.dfV.iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        aa.i("MicroMsg.ExtControlProviderNearBy", "add lbsfriend has no avatar: " + str);
        this.dfY = jw(str);
        if ((this.dfY != null) && (this.dfY.eBo != null))
        {
          e locale = this.dfU;
          Object[] arrayOfObject = new Object[5];
          arrayOfObject[0] = this.dfY.fDe;
          arrayOfObject[1] = null;
          arrayOfObject[2] = this.dfY.fNo;
          arrayOfObject[3] = this.dfY.cqr;
          arrayOfObject[4] = Integer.valueOf(this.dfY.cqq);
          locale.addRow(arrayOfObject);
        }
      }
    }
    aa.i("MicroMsg.ExtControlProviderNearBy", "all user has got avatar");
  }

  private void a(mm parammm)
  {
    if ((parammm == null) || (parammm.eBo == null))
      aa.e("MicroMsg.ExtControlProviderNearBy", "lbsContactInfo is null or lbsContactInfo's userName is null");
    Bitmap localBitmap;
    do
    {
      return;
      this.dfV.add(parammm.eBo);
      localBitmap = c.a(parammm.eBo, false, -1);
      aa.i("MicroMsg.ExtControlProviderNearBy", "countDownLatchGet now count: " + this.dfX.getCount());
    }
    while (localBitmap == null);
    aa.i("MicroMsg.ExtControlProviderNearBy", "countDownLatchGet countDown now");
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    byte[] arrayOfByte = new byte[0];
    if (localBitmap.compress(Bitmap.CompressFormat.PNG, 100, localByteArrayOutputStream))
      arrayOfByte = localByteArrayOutputStream.toByteArray();
    this.dfV.remove(parammm.eBo);
    e locale = this.dfU;
    Object[] arrayOfObject = new Object[5];
    arrayOfObject[0] = parammm.fDe;
    arrayOfObject[1] = arrayOfByte;
    arrayOfObject[2] = parammm.fNo;
    arrayOfObject[3] = parammm.cqr;
    arrayOfObject[4] = Integer.valueOf(parammm.cqq);
    locale.addRow(arrayOfObject);
    localBitmap.recycle();
  }

  private static void at(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      dgb = true;
      dgc.bO(15000L);
      return;
    }
    dgc.bO(0L);
  }

  private mm jw(String paramString)
  {
    if ((paramString == null) || (paramString.length() <= 0))
    {
      aa.e("MicroMsg.ExtControlProviderNearBy", "username is null or nill");
      return null;
    }
    Iterator localIterator = this.dfT.iterator();
    while (localIterator.hasNext())
    {
      mm localmm = (mm)localIterator.next();
      if (localmm.eBo.equals(paramString))
        return localmm;
    }
    return null;
  }

  public final int delete(Uri paramUri, String paramString, String[] paramArrayOfString)
  {
    return 0;
  }

  public final void ei(String paramString)
  {
    aa.i("MicroMsg.ExtControlProviderNearBy", "notifyChanged: " + paramString);
    if (this.dfZ)
    {
      aa.i("MicroMsg.ExtControlProviderNearBy", "has finished");
      return;
    }
    a(jw(paramString));
    this.dfX.countDown();
  }

  public final String getType(Uri paramUri)
  {
    this.dfS = -1;
    switch (dga.match(paramUri))
    {
    default:
      this.dfS = -1;
    case 0:
    case 1:
    case 2:
    }
    while (true)
    {
      return null;
      this.dfS = 1;
      continue;
      this.dfS = 3;
      continue;
      this.dfS = 4;
    }
  }

  public final Uri insert(Uri paramUri, ContentValues paramContentValues)
  {
    return null;
  }

  public final boolean onCreate()
  {
    return true;
  }

  public final Cursor query(Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2)
  {
    aa.i("MicroMsg.ExtControlProviderNearBy", "query() " + paramUri);
    a(paramUri, getContext(), 15);
    if (paramUri == null)
    {
      fT(3);
      return null;
    }
    if ((cj.hX(Mp())) || (cj.hX(Mq())))
    {
      fT(3);
      return null;
    }
    if (dgb)
    {
      aa.w("MicroMsg.ExtControlProviderNearBy", "isDoingRequest, return null");
      fT(5);
      return null;
    }
    at(true);
    if (!ID())
    {
      at(false);
      fT(1);
      return this.dft;
    }
    if (!ao(getContext()))
    {
      aa.w("MicroMsg.ExtControlProviderNearBy", "invalid appid ! return null");
      at(false);
      fT(2);
      return null;
    }
    aa.i("MicroMsg.ExtControlProviderNearBy", "find type = " + this.dfS);
    getType(paramUri);
    if (this.dfS < 0)
    {
      aa.e("MicroMsg.ExtControlProviderNearBy", "unkown uri, return null");
      at(false);
      fT(3);
      return null;
    }
    try
    {
      this.dfT = new ArrayList();
      this.dfU = new e(cs, (byte)0);
      this.dfW = new CountDownLatch(1);
      this.dfX = null;
      this.dfV = new HashSet();
      this.dfT = new ArrayList();
      this.dfZ = false;
      aa.v("MicroMsg.ExtControlProviderNearBy", "start()");
      if (!be.se())
        aa.i("MicroMsg.ExtControlProviderNearBy", "!MMCore.hasSetUin()");
      while (true)
      {
        aa.i("MicroMsg.ExtControlProviderNearBy", "wait for get lbs info");
        if (!this.dfW.await(15000L, TimeUnit.MILLISECONDS))
          aa.w("MicroMsg.ExtControlProviderNearBy", "countDownLatchWait time out");
        if (this.dfX == null)
          break;
        aa.i("MicroMsg.ExtControlProviderNearBy", "get lbs info success, wait for get lbs friend");
        if (!this.dfX.await(15000L, TimeUnit.MILLISECONDS))
          aa.w("MicroMsg.ExtControlProviderNearBy", "countDownLatchGet time out");
        at(false);
        af.vJ().b(this);
        this.dfZ = true;
        Mt();
        if ((this.dfU == null) || (this.dfU.getCount() <= 0))
          break label477;
        fT(0);
        aa.i("MicroMsg.ExtControlProviderNearBy", "return now");
        return this.dfU;
        b.a("NetSceneLbsFind", this.dgd);
        an.i(new g(this));
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        aa.w("MicroMsg.ExtControlProviderNearBy", localException.getMessage());
        fT(4);
        continue;
        aa.i("MicroMsg.ExtControlProviderNearBy", "not init countDownGet. return null");
        continue;
        label477: fT(4);
      }
    }
  }

  public final int update(Uri paramUri, ContentValues paramContentValues, String paramString, String[] paramArrayOfString)
  {
    return 0;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.ext.provider.ExtControlProviderNearBy
 * JD-Core Version:    0.6.2
 */