package oicq.wlogin_sdk.a;

import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import oicq.wlogin_sdk.c.f;
import oicq.wlogin_sdk.sharemem.WloginSigInfo;

public final class d
{
  private k hxa = new k();
  private l hxb = new l(this.hxa);
  private h hxc = new h(this.hxa);
  private i hxd = new i(this.hxa);
  private j hxe = new j(this.hxa);
  private g hxf = null;
  private int hxg = 66560;
  private int hxh = 124;
  private int hxi = 116;
  private Context mContext = null;

  public d(Context paramContext, int paramInt)
  {
    this.mContext = paramContext;
    this.hxa.z(paramContext, paramInt);
    aQq();
  }

  private int aQq()
  {
    while (true)
    {
      String str1;
      try
      {
        byte[] arrayOfByte1 = f.cs(this.mContext);
        if ((arrayOfByte1 == null) || (arrayOfByte1.length <= 0))
        {
          arrayOfByte1 = f.cl(this.mContext);
          if ((arrayOfByte1 == null) || (arrayOfByte1.length <= 0))
          {
            arrayOfByte1 = new String("%4;7t>;28<fc.5*6").getBytes();
            this.hxa.hyb = 0;
            f.b(this.mContext, arrayOfByte1);
            this.hxa.hya = 1;
            this.hxa.hyc = 1;
            this.hxa.hxQ = new byte[arrayOfByte1.length];
            System.arraycopy(arrayOfByte1, 0, this.hxa.hxQ, 0, arrayOfByte1.length);
            byte[] arrayOfByte2 = new byte[1 + arrayOfByte1.length];
            arrayOfByte2[0] = 35;
            System.arraycopy(arrayOfByte1, 0, arrayOfByte2, 1, arrayOfByte1.length);
            k localk1 = this.hxa;
            localk1.hxH = f.cL(arrayOfByte2);
            k.hxR = (byte[])this.hxa.hxQ.clone();
            this.hxa.hxS = f.cm(this.mContext);
            int i = f.co(this.mContext);
            this.hxa.hxT = f.cn(this.mContext);
            if (i != this.hxa.hxT)
            {
              f.cp(this.mContext);
              f.A(this.mContext, this.hxa.hxT);
            }
            this.hxa.hxV = f.cq(this.mContext).getBytes();
            this.hxa.hyd = f.cr(this.mContext);
            this.hxa.hxU = f.ct(this.mContext);
            this.hxa.hxX = f.au(this.mContext, new String(this.hxa.hxU));
            k localk2 = this.hxa;
            new String(this.hxa.hxU);
            localk2.hxY = f.aQY();
            str1 = Build.MODEL;
            if (str1 != null)
              break label456;
            this.hxa.hxZ = new byte[0];
            String str2 = Build.VERSION.RELEASE;
            if (str2 == null)
              str2 = "";
            f.yh("WtloginHelper init ok: android version:" + str2 + " release time:" + f.aRa());
            return 0;
          }
          this.hxa.hyb = 1;
          continue;
        }
      }
      finally
      {
      }
      this.hxa.hyb = 1;
      this.hxa.hya = 0;
      this.hxa.hyc = 0;
      continue;
      label456: this.hxa.hxZ = str1.getBytes();
    }
  }

  public final byte[] a(long paramLong, e parame, String paramString)
  {
    f.yh("wtlogin login with GetStWithPasswd:user:" + paramLong + " appid:522017402 dwSigMap:8256 ...");
    if ((paramString != null) && (paramString.length() > 16))
      paramString = paramString.substring(0, 16);
    while (true)
    {
      try
      {
        int i = aQr()[parame.ordinal()];
        Object localObject2;
        Object localObject3;
        switch (i)
        {
        default:
          return null;
        case 1:
          if ((paramString == null) || (paramString.length() == 0))
          {
            f.yh("USER_WITH_PWD userPasswd null");
            return null;
          }
          localObject2 = oicq.wlogin_sdk.c.d.yf(paramString);
          j = 0;
          this.hxa.hxT = f.cn(this.mContext);
          this.hxa.hxV = f.cq(this.mContext).getBytes();
          this.hxa.hwZ = paramLong;
          this.hxa.hxM = 522017402L;
          this.hxa.hxN = 8256;
          this.hxa.aQv();
          this.hxf = this.hxb;
          if (j == 0)
            continue;
          localObject3 = this.hxb.a(paramLong, this.hxa.hyg, (byte[])localObject2, this.hxh, this.hxg, this.hxa.hyd);
          f.yh("wtlogin login with GetStWithPasswd:user:" + paramLong + " appid:522017402 dwSigMap:8256 end");
          return localObject3;
        case 2:
          if ((paramString == null) || (paramString.length() == 0))
          {
            f.yh("USER_WITH_MD5 userPasswd null");
            return null;
          }
          try
          {
            byte[] arrayOfByte5 = (byte[])paramString.getBytes("ISO-8859-1").clone();
            localObject2 = arrayOfByte5;
            j = 0;
          }
          catch (Exception localException)
          {
            return null;
          }
        case 3:
        }
        WloginSigInfo localWloginSigInfo = this.hxa.cs(paramLong);
        if ((localWloginSigInfo == null) || (localWloginSigInfo.hyo == null) || (localWloginSigInfo.hyo.length <= 0))
        {
          f.yh("userAccount:" + paramLong + " appid:522017402 GetA1ByAccount return: null");
          localObject2 = null;
          if ((localObject2 == null) || (localObject2.length < 16))
          {
            f.yh("USER_WITH_A1 tmp_pwd null");
            return null;
          }
        }
        else
        {
          f.yh("userAccount:" + paramLong + " appid:522017402 GetA1ByAccount return: not null");
          localObject2 = (byte[])localWloginSigInfo.hyo.clone();
          continue;
          byte[] arrayOfByte1 = new byte[4];
          f.b(arrayOfByte1, 0, k.aQu());
          l locall = this.hxb;
          byte[] arrayOfByte2 = this.hxa.hyg;
          int k = this.hxh;
          int m = this.hxg;
          byte[] arrayOfByte3 = this.hxa.hyd;
          byte[] arrayOfByte4 = locall.a(paramLong, arrayOfByte2, arrayOfByte1, (byte[])localObject2, k, m, arrayOfByte3);
          localObject3 = arrayOfByte4;
          continue;
        }
      }
      finally
      {
      }
      int j = 1;
    }
  }

  public final byte[] c(long paramLong, byte[] paramArrayOfByte)
  {
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length == 0))
      return null;
    f.yh("user:" + paramLong + " CheckPicture ...");
    try
    {
      this.hxf = this.hxd;
      byte[] arrayOfByte = this.hxd.cC(paramArrayOfByte);
      f.yh("user:" + paramLong + " CheckPicture end");
      return arrayOfByte;
    }
    finally
    {
    }
  }

  public final byte[] co(long paramLong)
  {
    while (true)
    {
      byte[] arrayOfByte;
      try
      {
        arrayOfByte = this.hxa.hxL.aQz();
        StringBuilder localStringBuilder = new StringBuilder("user:").append(paramLong).append(" GetPicture data len:");
        if (arrayOfByte == null)
        {
          i = 0;
          f.yh(i);
          return arrayOfByte;
        }
      }
      finally
      {
      }
      int i = arrayOfByte.length;
    }
  }

  public final b cp(long paramLong)
  {
    WloginSigInfo localWloginSigInfo = this.hxa.cs(paramLong);
    if (localWloginSigInfo == null)
      return null;
    b localb = new b();
    localb.a(localWloginSigInfo);
    return localb;
  }

  public final void cq(long paramLong)
  {
    f.yh("user:" + paramLong + " ClearUserSigInfo");
    this.hxa.c(Long.valueOf(paramLong));
  }

  public final int cz(byte[] paramArrayOfByte)
  {
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length == 0) || (this.hxf == null))
      return -1017;
    f.yh("user:" + this.hxa.hwZ + " ResolveSvrData ...");
    int i = this.hxf.o(paramArrayOfByte, paramArrayOfByte.length);
    if (i == 1)
      cq(this.hxa.hwZ);
    f.yh("user:" + this.hxa.hwZ + " ResolveSvrData ret=" + i);
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     oicq.wlogin_sdk.a.d
 * JD-Core Version:    0.6.2
 */