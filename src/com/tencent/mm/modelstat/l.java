package com.tencent.mm.modelstat;

import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Process;
import android.telephony.TelephonyManager;
import com.tencent.mm.jni.platformcomm.PlatformComm.C2Java;
import com.tencent.mm.jni.platformcomm.c;
import com.tencent.mm.network.a.a;
import com.tencent.mm.network.a.b;
import com.tencent.mm.network.a.f;
import com.tencent.mm.network.bk;
import com.tencent.mm.network.bp;
import com.tencent.mm.platformtools.i;
import com.tencent.mm.protocal.a.vv;
import com.tencent.mm.protocal.bj;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.an;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.sdk.platformtools.ba;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.h;
import java.io.File;
import java.io.FileDescriptor;
import java.io.RandomAccessFile;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.LinkedList;
import java.util.Queue;

public final class l
  implements a
{
  private static int czA = 0;
  private static int czB = 0;
  private static int czW = -61167;
  static final String czt = h.ggy;
  private an czC = new an();
  private ay czD;
  Queue czE;
  private int czF;
  private boolean czG;
  private vv czH;
  private long czI;
  private long czJ;
  private long czK;
  private long czL;
  private long czM;
  private vv czN;
  private vv czO;
  private boolean czP;
  private long czQ;
  private int czR;
  private int czS;
  private int czT;
  private int czU;
  private int czV;
  private q czu = new q();
  private RandomAccessFile czv = null;
  private long czw = 0L;
  private String czx = "";
  private WifiManager czy = null;
  private TelephonyManager czz = null;

  public l()
  {
    this.czD = new ay(this.czC.getLooper(), new m(this), bool);
    this.czE = new LinkedList();
    this.czF = 0;
    this.czG = false;
    this.czH = null;
    this.czI = 0L;
    this.czJ = 0L;
    this.czK = 0L;
    this.czL = 0L;
    this.czM = 0L;
    this.czN = null;
    this.czO = null;
    this.czP = false;
    this.czQ = 0L;
    this.czR = 0;
    this.czS = 0;
    this.czT = 0;
    this.czU = 0;
    this.czV = 0;
    File localFile = new File(czt);
    if (!localFile.exists())
      localFile.mkdirs();
    Da();
    if (cj.hX(this.czx));
    while (true)
    {
      Y(bool);
      a(10001, "", null);
      this.czD.bO(60000L);
      if (bk.getContext() != null)
      {
        this.czy = ((WifiManager)bk.getContext().getSystemService("wifi"));
        this.czz = ((TelephonyManager)bk.getContext().getSystemService("phone"));
        this.czz.listen(new p((byte)0), 256);
      }
      return;
      bool = false;
    }
  }

  private void Db()
  {
    if (this.czv == null)
      return;
    try
    {
      this.czv.close();
      label15: this.czv = null;
      return;
    }
    catch (Exception localException)
    {
      break label15;
    }
  }

  private void Dc()
  {
    if (this.czv == null)
    {
      aa.w("MicroMsg.NetStatWatchDog", "file operator closed at commitFile");
      Y(true);
    }
    this.czu.b(this.czv);
    try
    {
      this.czv.seek(this.czv.length());
      while (this.czE.size() > 0)
      {
        byte[] arrayOfByte = (byte[])this.czE.poll();
        if (!cj.A(arrayOfByte))
        {
          this.czv.writeInt(arrayOfByte.length);
          this.czv.write(arrayOfByte);
        }
      }
      this.czv.getFD().sync();
      return;
    }
    catch (Exception localException)
    {
    }
  }

  private void Y(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.czx = cj.FD();
      i.k(czt + "wd.ini", "LastFile", this.czx);
    }
    try
    {
      this.czv = new RandomAccessFile(gx(this.czx), "rw");
      if ((paramBoolean) && (this.czv.length() != 0L))
      {
        aa.e("MicroMsg.NetStatWatchDog", "already exist , clean up file:" + this.czx);
        this.czv.setLength(0L);
      }
      while (this.czv.length() > 0L)
      {
        this.czu.a(this.czv);
        return;
        if ((!paramBoolean) && (this.czv.length() < 160L))
        {
          aa.e("MicroMsg.NetStatWatchDog", "length error , clean up file:" + this.czx);
          this.czv.setLength(0L);
        }
      }
    }
    catch (Exception localException)
    {
      if (this.czv != null)
      {
        Db();
        return;
        this.czu.b(this.czv);
      }
    }
  }

  private int a(int paramInt, vv paramvv, Object paramObject)
  {
    switch (paramInt)
    {
    default:
      aa.w("MicroMsg.NetStatWatchDog", "report: IGNORE stat:" + paramInt);
      return 0;
    case 10501:
      aa.i("MicroMsg.NetStatWatchDog", "dkdog net change connected");
      this.czG = true;
      return 0;
    case 4:
      int i9 = cj.c((Integer)paramObject);
      Object[] arrayOfObject7 = new Object[1];
      arrayOfObject7[0] = Integer.valueOf(i9);
      aa.d("MicroMsg.NetStatWatchDog", "dkdog received:%d", arrayOfObject7);
      this.czu.M(4, i9);
      return 0;
    case 5:
      int i8 = cj.c((Integer)paramObject);
      Object[] arrayOfObject6 = new Object[1];
      arrayOfObject6[0] = Integer.valueOf(i8);
      aa.d("MicroMsg.NetStatWatchDog", "dkdog send:%d", arrayOfObject6);
      this.czu.M(3, i8);
      return 0;
    case 1103:
      this.czu.er(7);
      this.czK = (1L + this.czK);
      return 0;
    case 1104:
      this.czu.er(11);
      this.czL = (1L + this.czL);
      return 0;
    case 10001:
      aa.d("MicroMsg.NetStatWatchDog", "dkdog push start");
      this.czI = cj.FD();
      paramvv.fWu = 10001;
      paramvv.fWv = ((int)(this.czI / 1000L));
      paramvv.fWT = Process.myPid();
      return 1;
    case 10002:
      long l5 = this.czI;
      this.czI = 0L;
      long l6 = cj.FD();
      paramvv.fWu = 10002;
      paramvv.fWT = Process.myPid();
      if (!a(true, 0L, l5, l6, paramvv))
        return 0;
      Object[] arrayOfObject5 = new Object[1];
      arrayOfObject5[0] = Integer.valueOf(paramvv.fWC);
      aa.e("MicroMsg.NetStatWatchDog", "dkdog push stop alive:%d", arrayOfObject5);
      Dc();
      return 1;
    case 10003:
      aa.d("MicroMsg.NetStatWatchDog", "dkdog worker start");
      this.czJ = cj.FD();
      paramvv.fWu = 10003;
      paramvv.fWT = Process.myPid();
      paramvv.fWv = ((int)(this.czJ / 1000L));
      return 1;
    case 10004:
      long l3 = this.czJ;
      this.czJ = 0L;
      long l4 = cj.FD();
      paramvv.fWu = 10004;
      paramvv.fWT = Process.myPid();
      if (!a(true, 0L, l3, l4, paramvv))
        return 0;
      Object[] arrayOfObject4 = new Object[1];
      arrayOfObject4[0] = Integer.valueOf(paramvv.fWC);
      aa.e("MicroMsg.NetStatWatchDog", "dkdog worker start alive:%d", arrayOfObject4);
      Dc();
      return 1;
    case 1102:
      b localb11 = (b)paramObject;
      if (localb11 == null)
      {
        aa.w("MicroMsg.NetStatWatchDog", "report cgi info null");
        return 0;
      }
      if (localb11.cFK == null)
      {
        aa.w("MicroMsg.NetStatWatchDog", "report cgi info addrs null");
        return 0;
      }
      paramvv.fWT = Process.myPid();
      if (localb11.cFJ == 38L)
      {
        this.czM = (1L + this.czM);
        this.czu.er(5);
        if (localb11.bLI != 0)
          this.czu.er(6);
      }
      this.czu.er(8);
      if (localb11.bLI != 0)
        this.czu.er(9);
      int i5 = bj.get((int)localb11.cFJ);
      if (i5 == 250)
        return 0;
      if (!a(false, localb11.cyG, localb11.cyD, localb11.endTime, paramvv))
        return 0;
      int i6 = localb11.bLI;
      if ((i6 == 0) && (localb11.bLJ != 0))
        i6 = 4;
      Object[] arrayOfObject3 = new Object[10];
      arrayOfObject3[0] = Integer.valueOf(i5);
      arrayOfObject3[1] = Integer.valueOf(i6);
      arrayOfObject3[2] = Integer.valueOf(localb11.bLJ);
      arrayOfObject3[3] = localb11.cFK;
      arrayOfObject3[4] = Boolean.valueOf(localb11.cFL);
      arrayOfObject3[5] = Long.valueOf(localb11.cyG);
      arrayOfObject3[6] = Long.valueOf(localb11.cFN);
      arrayOfObject3[7] = Long.valueOf(localb11.cFO);
      arrayOfObject3[8] = Integer.valueOf(localb11.cFM);
      arrayOfObject3[9] = Integer.valueOf(localb11.cFR);
      aa.d("MicroMsg.NetStatWatchDog", "dkdog FUNC:%d [%d,%d] [%s] sock:%b cost:%d tx:%d rx:%d net:%d retry:%d", arrayOfObject3);
      paramvv.fWC = ((int)localb11.cFX);
      paramvv.fWA = i5;
      paramvv.fWu = 1102;
      paramvv.fUN = localb11.cFM;
      paramvv.fWM = ba.bm(bk.getContext());
      paramvv.fWN = ba.bn(bk.getContext());
      paramvv.fWw = f.a(localb11.cFK);
      paramvv.fWy = localb11.cFK.type();
      paramvv.fWx = localb11.cFK.Fn();
      paramvv.fWO = localb11.cFR;
      int i7;
      if (localb11.cFL)
      {
        i7 = 1;
        paramvv.fWK = i7;
        if (localb11.cFK != null)
          paramvv.fWJ = localb11.cFK.type();
        paramvv.fWz = localb11.bLI;
        paramvv.fWD = ((int)localb11.cFN);
        paramvv.fWE = ((int)localb11.cFO);
        paramvv.fDy = localb11.bLJ;
        paramvv.fWL = ((int)localb11.cFW);
        paramvv.fWU = gy(localb11.cFY);
        paramvv.fWV = ((int)localb11.cFZ);
        if (i5 != 110)
          break label1267;
        this.czN = paramvv;
      }
      while (true)
      {
        if ((this.czP) && (380 == i5))
        {
          localb11.cFT = this.czS;
          localb11.cFU = this.czR;
          localb11.cFV = this.czU;
          localb11.cFX = this.czT;
          localb11.cFZ = this.czV;
          a(10640, null, localb11);
          this.czP = false;
          this.czV = 0;
          this.czU = 0;
          this.czT = 0;
          this.czS = 0;
          this.czR = 0;
        }
        return 1;
        i7 = 0;
        break;
        if (i5 == 109)
          this.czO = paramvv;
      }
    case 10640:
      b localb10 = (b)paramObject;
      if (localb10 == null)
      {
        aa.w("MicroMsg.NetStatWatchDog", "report cgi info null");
        return 0;
      }
      if (localb10.cFK == null)
      {
        aa.w("MicroMsg.NetStatWatchDog", "report cgi info addrs null");
        return 0;
      }
      int i3 = bj.get((int)localb10.cFJ);
      if (!a(false, localb10.cyG, localb10.cyD, localb10.endTime, paramvv))
        return 0;
      paramvv.fWC = ((int)localb10.cFX);
      paramvv.fWA = i3;
      paramvv.fWu = 10640;
      paramvv.fUN = localb10.cFM;
      paramvv.fWM = ba.bm(bk.getContext());
      paramvv.fWN = ba.bn(bk.getContext());
      paramvv.fWw = f.a(localb10.cFK);
      paramvv.fWx = localb10.cFK.Fn();
      paramvv.fWO = localb10.cFR;
      if (localb10.cFL);
      for (int i4 = 1; ; i4 = 0)
      {
        paramvv.fWK = i4;
        if (localb10.cFK != null)
          paramvv.fWJ = localb10.cFK.type();
        paramvv.fWz = localb10.bLI;
        paramvv.fDy = localb10.bLJ;
        paramvv.fWD = ((int)localb10.cFN);
        paramvv.fWE = ((int)localb10.cFO);
        paramvv.fDy = localb10.bLJ;
        paramvv.fWL = ((int)localb10.cFW);
        paramvv.fWU = gy(localb10.cFY);
        paramvv.fWV = ((int)localb10.cFZ);
        paramvv.fWW = ((int)localb10.cFU);
        paramvv.fWX = ((int)localb10.cFT);
        paramvv.fWY = ((int)localb10.cFX);
        paramvv.fWZ = ((int)localb10.cFV);
        return 1;
      }
    case 10401:
      b localb9 = (b)paramObject;
      if (localb9 == null)
      {
        aa.w("MicroMsg.NetStatWatchDog", "report multi scene info null");
        return 0;
      }
      if (localb9.cFJ == 110L)
        paramvv.fWu = 10401;
      while (true)
      {
        paramvv.fWT = Process.myPid();
        if (a(false, localb9.cyG, localb9.cyD, localb9.endTime, paramvv))
          break;
        return 0;
        if (localb9.cFJ == 109L)
          paramvv.fWu = 10402;
      }
      if (paramvv.fWu == 10401)
      {
        if (this.czN == null)
          return 0;
        paramvv.fWK = this.czN.fWK;
        paramvv.fWw = this.czN.fWw;
        paramvv.fWx = this.czN.fWx;
        paramvv.fWJ = this.czN.fWJ;
        paramvv.fUN = this.czN.fUN;
        ba.bt(bk.getContext());
        c.rY();
        paramvv.fWL = 0;
        paramvv.fWM = this.czN.fWM;
      }
      for (paramvv.fWN = this.czN.fWN; ; paramvv.fWN = this.czO.fWN)
      {
        paramvv.fAC = ((int)localb9.cFP);
        paramvv.fWD = ((int)localb9.cFN);
        paramvv.fWE = ((int)localb9.cFO);
        paramvv.fWU = gy(localb9.cFY);
        return 1;
        if (this.czO == null)
          return 0;
        paramvv.fWK = this.czO.fWK;
        paramvv.fWw = this.czO.fWw;
        paramvv.fWx = this.czO.fWx;
        paramvv.fWJ = this.czO.fWJ;
        paramvv.fUN = this.czO.fUN;
        ba.bt(bk.getContext());
        c.rY();
        paramvv.fWL = 0;
        paramvv.fWM = this.czO.fWM;
      }
    case 10101:
    case 10105:
      b localb8 = (b)paramObject;
      if (localb8 == null)
      {
        aa.w("MicroMsg.NetStatWatchDog", "report connect ip info null or nettype error");
        return 0;
      }
      paramvv.fWT = Process.myPid();
      Object[] arrayOfObject2 = new Object[8];
      if (paramInt == 10105);
      for (String str = "synccheckconnect"; ; str = "connect")
      {
        arrayOfObject2[0] = str;
        arrayOfObject2[1] = localb8.cFK;
        arrayOfObject2[2] = Boolean.valueOf(localb8.cFL);
        arrayOfObject2[3] = Integer.valueOf(localb8.cFM);
        arrayOfObject2[4] = Long.valueOf(localb8.cyG);
        arrayOfObject2[5] = Integer.valueOf(localb8.bLJ);
        arrayOfObject2[6] = Long.valueOf(localb8.cFN);
        arrayOfObject2[7] = Long.valueOf(localb8.cFO);
        aa.d("MicroMsg.NetStatWatchDog", "dkdog %s:[%s] sock:%b net:%d cost:%d ret:%d tx:%d rx:%d", arrayOfObject2);
        if (localb8.bLJ == 0)
          break;
        this.czF = (1 + this.czF);
        if (this.czF < 10)
          break label2151;
        return 0;
      }
      this.czF = 0;
      this.czM = 0L;
      this.czK = 0L;
      this.czL = 0L;
      paramvv.fWu = paramInt;
      paramvv.fUN = localb8.cFM;
      paramvv.fWL = ((int)localb8.cFW);
      paramvv.fWM = ba.bm(bk.getContext());
      paramvv.fWN = ba.bn(bk.getContext());
      paramvv.fWw = f.a(localb8.cFK);
      paramvv.fWx = localb8.cFK.Fn();
      paramvv.fWy = localb8.cFK.type();
      paramvv.fWD = ((int)localb8.cFN);
      paramvv.fWE = ((int)localb8.cFO);
      int n;
      int i2;
      if (localb8.cFL)
      {
        n = 1;
        paramvv.fWK = n;
        if (localb8.cFK != null)
          paramvv.fWJ = localb8.cFK.type();
        if (paramvv.fUN == 1)
        {
          if (!this.czG)
            break label2389;
          i2 = 1;
          paramvv.fWF = i2;
        }
        this.czG = false;
        if (localb8.bLJ != 0)
          break label2395;
      }
      for (int i1 = 0; ; i1 = 1)
      {
        paramvv.fWz = i1;
        paramvv.fDy = localb8.bLJ;
        if (a(false, localb8.cyG, localb8.cyD, localb8.endTime, paramvv))
          break label2401;
        return 0;
        n = 0;
        break;
        i2 = 0;
        break label2321;
      }
      if (localb8.cFL)
        this.czH = paramvv;
      paramvv.fWU = gy(localb8.cFY);
      if ((this.czP) && (localb8.cyD > this.czQ) && (10101 == paramInt))
      {
        this.czU = ((int)(this.czU + localb8.cyG));
        this.czT = (1 + this.czT);
      }
      return 1;
    case 10428:
      b localb7 = (b)paramObject;
      if (localb7 == null)
      {
        aa.w("MicroMsg.NetStatWatchDog", "report nslookup info null");
        return 0;
      }
      if (!a(false, localb7.cyG, localb7.cyD, localb7.endTime, paramvv))
        return 0;
      paramvv.fWT = Process.myPid();
      paramvv.fWu = 10428;
      paramvv.fUN = localb7.cFM;
      int j = paramvv.fUN;
      int k;
      if (j == 1)
      {
        if ((this.czy == null) && (bk.getContext() != null))
          this.czy = ((WifiManager)bk.getContext().getSystemService("wifi"));
        if (this.czy == null)
          break label2921;
        k = Math.abs(this.czy.getConnectionInfo().getRssi());
        paramvv.fWL = k;
        paramvv.fWQ = ((int)localb7.cFX);
        paramvv.fWz = localb7.bLI;
        paramvv.fWP = localb7.cEu;
        if (localb7.cFX > 0L)
          paramvv.fWw = f.a(localb7.cFK);
        if (!localb7.cFL)
          break label2927;
      }
      for (int m = 1; ; m = 0)
      {
        paramvv.fWK = m;
        paramvv.fWM = ba.bm(bk.getContext());
        paramvv.fWN = ba.bn(bk.getContext());
        paramvv.fDy = localb7.bLJ;
        paramvv.fWy = localb7.cFK.type();
        paramvv.fWU = gy(localb7.cFY);
        if ((this.czP) && (localb7.cyD > this.czQ))
        {
          this.czS = ((int)(this.czS + localb7.cyG));
          this.czR = (1 + this.czR);
        }
        return 1;
        if (j == 4)
        {
          if ((this.czz == null) && (bk.getContext() != null))
          {
            this.czz = ((TelephonyManager)bk.getContext().getSystemService("phone"));
            this.czz.listen(new p((byte)0), 256);
          }
          if (this.czz == null)
            break label2921;
          k = czA;
          break;
        }
        if (j == 3)
        {
          if ((this.czz == null) && (bk.getContext() != null))
          {
            this.czz = ((TelephonyManager)bk.getContext().getSystemService("phone"));
            this.czz.listen(new p((byte)0), 256);
          }
          if (this.czz != null)
          {
            k = czB;
            break;
          }
        }
        k = 0;
        break;
      }
    case 10102:
      b localb6 = (b)paramObject;
      if (localb6 == null)
      {
        aa.w("MicroMsg.NetStatWatchDog", "report disconnect ip info null or nettype error");
        return 0;
      }
      paramvv.fWT = Process.myPid();
      Object[] arrayOfObject1 = new Object[4];
      arrayOfObject1[0] = localb6.cFK;
      arrayOfObject1[1] = Integer.valueOf(localb6.cFM);
      arrayOfObject1[2] = Long.valueOf(localb6.endTime - localb6.cyD);
      arrayOfObject1[3] = Integer.valueOf(localb6.bLJ);
      aa.d("MicroMsg.NetStatWatchDog", "dkdog DISconnect:[%s] net:%d alive:%d err:%d ", arrayOfObject1);
      long l1 = localb6.cyD;
      paramvv.fWt = ((int)this.czL);
      paramvv.fWo = ((int)this.czM);
      paramvv.fWI = ((int)this.czK);
      this.czM = 0L;
      this.czL = 0L;
      this.czK = 0L;
      long l2 = localb6.endTime;
      paramvv.fWu = 10102;
      if (!a(true, 0L, l1, l2, paramvv))
        return 0;
      if (localb6.bLJ == 0);
      for (int i = 0; ; i = 1)
      {
        paramvv.fWz = i;
        paramvv.fWK = 1;
        paramvv.fWw = f.a(localb6.cFK);
        paramvv.fWx = localb6.cFK.Fn();
        paramvv.fWy = localb6.cFK.type();
        paramvv.fUN = localb6.cFM;
        paramvv.fWA = 0;
        paramvv.fDy = localb6.bLJ;
        paramvv.fWL = ((int)localb6.cFW);
        paramvv.fWM = this.czH.fWM;
        paramvv.fWN = this.czH.fWN;
        paramvv.fWR = localb6.cFX;
        paramvv.fWU = gy(localb6.cFY);
        return 1;
      }
    case 9999002:
      b localb5 = (b)paramObject;
      if (localb5 == null)
      {
        aa.w("MicroMsg.NetStatWatchDog", "report ESS_FOR_IPXX_READ_TICKET info null");
        return 0;
      }
      paramvv.fWu = 9999002;
      paramvv.fWP = localb5.cEu;
      return 1;
    case 9999001:
      b localb4 = (b)paramObject;
      if (localb4 == null)
      {
        aa.w("MicroMsg.NetStatWatchDog", "report ESS_FOR_IPXX_SAVE_TICKET info null");
        return 0;
      }
      paramvv.fWu = 9999001;
      paramvv.fWP = localb4.cEu;
      return 1;
    case 10103:
      b localb3 = (b)paramObject;
      if (localb3 == null)
      {
        aa.w("MicroMsg.NetStatWatchDog", "report build connect info null or nettype error");
        return 0;
      }
      if (!a(true, localb3.cyG, localb3.cyD, localb3.endTime, paramvv))
        return 0;
      paramvv.fWu = 10103;
      paramvv.fDy = localb3.bLJ;
      paramvv.fWL = ((int)localb3.cFW);
      paramvv.fUN = localb3.cFM;
      paramvv.fWU = gy(localb3.cFY);
      return 1;
    case 10104:
      b localb2 = (b)paramObject;
      if (localb2 == null)
      {
        aa.w("MicroMsg.NetStatWatchDog", "report build connect info null or nettype error");
        return 0;
      }
      if (!a(true, localb2.cyG, localb2.cyD, localb2.endTime, paramvv))
        return 0;
      paramvv.fWu = 10104;
      paramvv.fWL = ((int)localb2.cFW);
      paramvv.fUN = localb2.cFM;
      paramvv.fWU = gy(localb2.cFY);
      return 1;
    case -1:
      if ((b)paramObject == null)
      {
        aa.w("MicroMsg.NetStatWatchDog", "report build connect info null or nettype error");
        return 0;
      }
      paramvv.fWu = -1;
      paramvv.fWG = (System.currentTimeMillis() / 1000L);
      paramvv.fWH = (bp.Fj() / 1000L);
      paramvv.fWB = ((int)bp.Fk());
      return 1;
    case -2:
      label1267: if ((b)paramObject == null)
      {
        aa.w("MicroMsg.NetStatWatchDog", "report build connect info null or nettype error");
        return 0;
      }
      label2151: label2921: label2927: paramvv.fWu = -2;
      label2321: label2389: label2395: label2401: Context localContext = bk.getContext();
      if (localContext != null)
      {
        paramvv.fUN = PlatformComm.C2Java.getStatisticsNetType();
        paramvv.fWy = ba.bm(localContext);
        if (!ba.bt(localContext))
          break label3629;
      }
      label3629: for (paramvv.fWL = ((int)c.sa()); ; paramvv.fWL = ((int)c.rZ()))
        return 1;
    case -3:
    }
    b localb1 = (b)paramObject;
    if (localb1 == null)
    {
      aa.w("MicroMsg.NetStatWatchDog", "report build connect info null or nettype error");
      return 0;
    }
    if (!a(true, localb1.cyG, localb1.cyD, localb1.endTime, paramvv))
      return 0;
    paramvv.fUN = PlatformComm.C2Java.getStatisticsNetType();
    paramvv.fWu = -3;
    paramvv.fWP = localb1.cFY;
    paramvv.fWw = f.a(localb1.cFK);
    return 1;
  }

  private static boolean a(boolean paramBoolean, long paramLong1, long paramLong2, long paramLong3, vv paramvv)
  {
    long l1 = paramLong3 - paramLong2;
    long l2 = cj.FD();
    if ((paramLong3 < 0L) || (paramLong2 < 0L) || (l1 < 0L) || (paramLong1 < 0L))
    {
      aa.w("MicroMsg.NetStatWatchDog", "dkreport fixItemTimes beg:" + paramLong2 + " end:" + paramLong3 + " now:" + l2 + " t:" + l1 + " cost:" + paramLong1);
      return false;
    }
    paramvv.fWv = ((int)(l2 / 1000L));
    paramvv.fWH = paramLong3;
    paramvv.fWG = paramLong2;
    if (paramBoolean)
      paramvv.fWC = ((int)l1);
    while (true)
    {
      return true;
      paramvv.fWB = ((int)Math.min(paramLong1, l1));
    }
  }

  static String gx(String paramString)
  {
    if (cj.hX(paramString))
      return czt + "wd_" + cj.FD() + ".bin";
    return czt + "wd_" + paramString + ".bin";
  }

  private static int gy(String paramString)
  {
    if (paramString.length() == 0)
      return 0;
    try
    {
      byte[] arrayOfByte = InetAddress.getByName(paramString).getAddress();
      int i = 0xFF & arrayOfByte[3] | 0xFF00 & arrayOfByte[2] << 8 | 0xFF0000 & arrayOfByte[1] << 16;
      int j = arrayOfByte[0];
      return i | 0xFF000000 & j << 24;
    }
    catch (UnknownHostException localUnknownHostException)
    {
    }
    return 0;
  }

  public final void Da()
  {
    this.czw = i.a(czt + "wd.ini", "NextReportTime", -1L);
    if (this.czw <= 0L)
      this.czw = (43200L + cj.FC());
    this.czx = i.getValue(czt + "wd.ini", "LastFile");
    aa.d("MicroMsg.NetStatWatchDog", "readConfig: nextTime:" + this.czw + " file:" + this.czx);
  }

  public final void a(int paramInt, String paramString, Object paramObject)
  {
    try
    {
      this.czC.o(new n(this, paramInt, paramString, paramObject));
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void eo(int paramInt)
  {
    if (380 == paramInt)
    {
      this.czP = true;
      this.czV = 0;
      this.czU = 0;
      this.czT = 0;
      this.czS = 0;
      this.czR = 0;
      this.czQ = System.currentTimeMillis();
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelstat.l
 * JD-Core Version:    0.6.2
 */