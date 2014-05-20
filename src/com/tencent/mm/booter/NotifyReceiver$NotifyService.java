package com.tencent.mm.booter;

import android.app.Notification;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import android.os.IBinder;
import android.os.RemoteException;
import com.tencent.mm.ai.z;
import com.tencent.mm.app.WorkerProfile;
import com.tencent.mm.c.a.bx;
import com.tencent.mm.c.a.cg;
import com.tencent.mm.c.a.ci;
import com.tencent.mm.c.a.cj;
import com.tencent.mm.c.a.dw;
import com.tencent.mm.c.a.dx;
import com.tencent.mm.c.a.gj;
import com.tencent.mm.c.a.gy;
import com.tencent.mm.c.a.ha;
import com.tencent.mm.c.a.ia;
import com.tencent.mm.c.a.p;
import com.tencent.mm.compatible.c.s;
import com.tencent.mm.jni.platformcomm.WakerLock;
import com.tencent.mm.model.b;
import com.tencent.mm.modelsimple.t;
import com.tencent.mm.modelvoice.bc;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.av;
import com.tencent.mm.platformtools.an;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.plugin.voicereminder.a.u;
import com.tencent.mm.pluginsdk.model.app.aw;
import com.tencent.mm.pointers.PByteArray;
import com.tencent.mm.pointers.PInt;
import com.tencent.mm.protocal.MMProtocalJni;
import com.tencent.mm.protocal.a.pe;
import com.tencent.mm.protocal.as;
import com.tencent.mm.protocal.bk;
import com.tencent.mm.protocal.y;
import com.tencent.mm.sdk.b.a;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.e;
import com.tencent.mm.w.ag;
import com.tencent.mm.z.g;

public class NotifyReceiver$NotifyService extends Service
{
  public final int caE = -1212;

  private static void E(Context paramContext)
  {
    NotifyReceiver.a(new WakerLock(paramContext));
    NotifyReceiver.oO().lock(14000L);
  }

  private static void c(Intent paramIntent)
  {
    int i = 1;
    if (paramIntent == null)
      aa.e("MicroMsg.NotifyReceiver", "receiveImp receiveIntent == null");
    label368: byte[] arrayOfByte2;
    label1085: label1110: label1122: 
    do
    {
      do
      {
        String str1;
        long l1;
        while (true)
        {
          return;
          WorkerProfile.nM().nO();
          int j = paramIntent.getIntExtra("notify_option_type", 0);
          if (j == 0)
          {
            aa.e("MicroMsg.NotifyReceiver", "receiveImp invalid opcode.");
            return;
          }
          if (com.tencent.mm.model.be.uC())
            com.tencent.mm.model.be.uE();
          if ((!com.tencent.mm.model.be.se()) || (com.tencent.mm.model.be.uG()))
          {
            Object[] arrayOfObject1 = new Object[3];
            arrayOfObject1[0] = Boolean.valueOf(com.tencent.mm.model.be.se());
            arrayOfObject1[i] = Boolean.valueOf(com.tencent.mm.model.be.uG());
            arrayOfObject1[2] = Integer.valueOf(j);
            aa.b("MicroMsg.NotifyReceiver", "receiveImp hasSetuin:%b  isHold:%b  opcode:%d", arrayOfObject1);
            return;
          }
          if (com.tencent.mm.model.be.uA().uN() == null)
          {
            Object[] arrayOfObject4 = new Object[i];
            arrayOfObject4[0] = Integer.valueOf(j);
            aa.c("MicroMsg.NotifyReceiver", "receiveImp  opcode:%d  getDispatcher == null", arrayOfObject4);
            com.tencent.mm.model.be.uA().T(i);
          }
          switch (j)
          {
          case 99:
          default:
            aa.e("MicroMsg.NotifyReceiver", "invald opCode:" + j);
            return;
          case 1:
            E(com.tencent.mm.sdk.platformtools.al.getContext());
            Context localContext = com.tencent.mm.sdk.platformtools.al.getContext();
            aa.i("MicroMsg.NotifyReceiver", "dealWithLooper");
            if ((!com.tencent.mm.model.be.se()) || (com.tencent.mm.model.be.uG()))
            {
              aa.w("MicroMsg.NotifyReceiver", "receiveImp hasSetuin:" + com.tencent.mm.model.be.se() + " isHold:" + com.tencent.mm.model.be.uG());
              return;
            }
            if (!com.tencent.mm.model.be.uA().wR())
            {
              if ((localContext != null) && (!com.tencent.mm.sdk.platformtools.ba.br(localContext)))
                if (i != 0)
                  break label368;
            }
            else
              com.tencent.mm.model.be.uA().d(new com.tencent.mm.z.i(3));
            while (true)
            {
              bc.Et().run();
              com.tencent.mm.ai.m.DF().run();
              ag.AY().run();
              com.tencent.mm.pluginsdk.model.app.ba.aqi().run();
              com.tencent.mm.plugin.voicereminder.a.f.alj().run();
              a.ayH().f(new gj());
              return;
              i = 0;
              break;
              com.tencent.mm.model.be.uA().d(new g());
            }
          case 2:
            E(com.tencent.mm.sdk.platformtools.al.getContext());
            aa.i("MicroMsg.NotifyReceiver", "dealWithNotify");
            int m = paramIntent.getIntExtra("notify_respType", 0);
            arrayOfByte2 = paramIntent.getByteArrayExtra("notify_respBuf");
            str1 = paramIntent.getStringExtra("notify_skey");
            l1 = paramIntent.getLongExtra("notfiy_recv_time", -1L);
            switch (m)
            {
            default:
              return;
            case 10:
              aa.d("MicroMsg.NotifyReceiver", "on direct send notify");
              y localy = new y();
              localy.ex(s.pV());
              av localav = new av(localy, 10);
              try
              {
                if (localav.a(10, arrayOfByte2, null))
                {
                  com.tencent.mm.model.be.uA().a(0, 0, "", new t(localy));
                  return;
                }
              }
              catch (RemoteException localRemoteException)
              {
                return;
              }
            case 268369921:
            case 38:
            case 1000000205:
            case 39:
            case 170:
            case 174:
            case 192:
            case 268369923:
            case 241:
            case 242:
            case 244:
            }
            break;
          case 3:
          }
        }
        if (au.hX(str1))
        {
          aa.e("MicroMsg.NotifyReceiver", "dkpush dealWithNotify session:" + str1);
          return;
        }
        if ((au.A(arrayOfByte2)) || (arrayOfByte2.length <= 8))
        {
          aa.e("MicroMsg.NotifyReceiver", "dkpush dealWithNotify respBuf error ");
          return;
        }
        int i1 = com.tencent.mm.a.i.b(arrayOfByte2, 0);
        int i2 = com.tencent.mm.a.i.b(arrayOfByte2, 4);
        aa.d("MicroMsg.NotifyReceiver", "dkpush: flag:" + i1 + " bufLen:" + i2 + " dump:" + au.z(arrayOfByte2));
        if (i2 != -8 + arrayOfByte2.length)
        {
          aa.e("MicroMsg.NotifyReceiver", "dkpush: respBuf length error len:" + arrayOfByte2.length);
          return;
        }
        byte[] arrayOfByte5 = new byte[i2];
        System.arraycopy(arrayOfByte2, 8, arrayOfByte5, 0, i2);
        as localas = new as();
        PByteArray localPByteArray1 = new PByteArray();
        PByteArray localPByteArray2 = new PByteArray();
        PInt localPInt = new PInt();
        try
        {
          if (!MMProtocalJni.unpack(localPByteArray2, arrayOfByte5, str1.getBytes(), localPByteArray1, localPInt))
          {
            aa.e("MicroMsg.NewSyncMgr", "unpack push resp failed");
            return;
          }
        }
        catch (Exception localException2)
        {
          Object[] arrayOfObject3 = new Object[i];
          arrayOfObject3[0] = localException2;
          aa.b("MicroMsg.NewSyncMgr", "unpack push resp failed: %s", arrayOfObject3);
          return;
        }
        if (localPInt.value == -13)
        {
          localas.cS(localPInt.value);
          aa.e("MicroMsg.NewSyncMgr", "unpack push resp failed session timeout");
          return;
        }
        int i3 = localas.s(localPByteArray2.value);
        aa.d("MicroMsg.NewSyncMgr", "bufToResp using protobuf ok");
        localas.cS(i3);
        localas.bG(arrayOfByte5.length);
        byte[] arrayOfByte6 = au.ib(au.hW((String)com.tencent.mm.model.be.uz().sr().get(8195)));
        byte[] arrayOfByte7 = an.a(localas.fyt.fIx);
        if ((au.A(arrayOfByte7)) || (!bk.d(arrayOfByte6, arrayOfByte7)))
        {
          aa.e("MicroMsg.NewSyncMgr", "compareKeybuf syncKey failed");
          return;
        }
        com.tencent.mm.model.be.uA().d(new com.tencent.mm.z.i(localas, i1, l1));
        return;
        StringBuilder localStringBuilder2 = new StringBuilder("dkpush on sync notify, notify=");
        boolean bool;
        long l2;
        if (arrayOfByte2 != null)
        {
          bool = i;
          aa.d("MicroMsg.NotifyReceiver", bool);
          if (arrayOfByte2 != null)
            break label1110;
          l2 = 7L;
          if (arrayOfByte2 != null)
            break label1122;
        }
        for (int n = 3; ; n = 7)
        {
          com.tencent.mm.z.m.a(l2, n, "");
          return;
          bool = false;
          break;
          l2 = com.tencent.mm.a.i.b(arrayOfByte2, 0);
          break label1085;
        }
        StringBuilder localStringBuilder1 = new StringBuilder("oreh on newsynccheck2 notify, notify=");
        if (arrayOfByte2 != null);
        while (true)
        {
          aa.d("MicroMsg.NotifyReceiver", i);
          com.tencent.mm.protocal.be localbe = new com.tencent.mm.protocal.be();
          try
          {
            localbe.s(arrayOfByte2);
            com.tencent.mm.z.m.a(localbe.awT(), 7, localbe.awU());
            return;
          }
          catch (Exception localException1)
          {
            return;
          }
          i = 0;
        }
        com.tencent.mm.model.be.uA().d(new g());
        return;
        gy localgy1 = new gy();
        localgy1.bQS.bQU = i;
        a.ayH().f(localgy1);
        String str3 = localgy1.bQT.bQW;
        if (!au.hX(str3))
        {
          aa.v("MicroMsg.NotifyReceiver", "voipinvite, exit talkroom first: " + str3);
          gy localgy2 = new gy();
          localgy2.bQS.bQV = i;
          a.ayH().f(localgy2);
        }
        ia localia2 = new ia();
        localia2.bRw.bNk = 3;
        localia2.bRw.bRy = arrayOfByte2;
        a.ayH().f(localia2);
        return;
        ia localia1 = new ia();
        localia1.bRw.bNk = 6;
        a.ayH().f(localia1);
        return;
        bx localbx = new bx();
        localbx.bNC.bMd = arrayOfByte2;
        a.ayH().f(localbx);
        return;
      }
      while (au.A(arrayOfByte2));
      String str2 = new String(arrayOfByte2);
      com.tencent.mm.c.a.m localm = new com.tencent.mm.c.a.m();
      localm.bLU.type = 3;
      localm.bLU.bLW = str2;
      a.ayH().f(localm);
      return;
      aa.i("MicroMsg.NotifyReceiver", "jacks do voice notify UI");
    }
    while (arrayOfByte2.length < 8);
    byte[] arrayOfByte3 = new byte[4];
    byte[] arrayOfByte4 = new byte[4];
    System.arraycopy(arrayOfByte2, 0, arrayOfByte3, 0, 4);
    System.arraycopy(arrayOfByte2, 4, arrayOfByte4, 0, 4);
    dw localdw = new dw();
    localdw.bOO.bOP = com.tencent.mm.a.i.b(arrayOfByte3, 0);
    localdw.bOO.bOQ = com.tencent.mm.a.i.b(arrayOfByte4, 0);
    Object[] arrayOfObject2 = new Object[2];
    arrayOfObject2[0] = Integer.valueOf(localdw.bOO.bOP);
    arrayOfObject2[i] = Integer.valueOf(localdw.bOO.bOQ);
    aa.d("MicroMsg.NotifyReceiver", "notifyId: %d, sequence: %d", arrayOfObject2);
    a.ayH().f(localdw);
    return;
    p localp = new p();
    localp.bMc.bMd = arrayOfByte2;
    a.ayH().f(localp);
    return;
    cj localcj = new cj();
    localcj.bNM.bMd = arrayOfByte2;
    localcj.bNM.bNN = i;
    a.ayH().f(localcj);
    return;
    aa.d("MicroMsg.NotifyReceiver", "handleCommand, shoot netscene action");
    int k = paramIntent.getIntExtra("remote_netscene_funcid_key", 0);
    aa.d("MicroMsg.NotifyReceiver", "edw onReceive, funcId = " + k);
    if (k == 0)
    {
      aa.e("MicroMsg.NotifyReceiver", "edw onReceive fail, funcId is 0");
      return;
    }
    byte[] arrayOfByte1 = paramIntent.getByteArrayExtra("remote_netscene_req_buffer_key");
    if (au.A(arrayOfByte1))
    {
      aa.e("MicroMsg.NotifyReceiver", "onReceive, reqBuffer is null");
      return;
    }
    cg localcg = new cg();
    localcg.bNI.bNL = arrayOfByte1;
    switch (k)
    {
    default:
      aa.e("MicroMsg.NotifyReceiver", "onReceive fail, unknown type = " + k);
      return;
    case 444:
      localcg.bNI.bNK = 0;
    case 445:
    case 441:
    case 447:
    case 440:
    case 450:
    case 446:
    case 516:
    }
    while (true)
    {
      a.ayH().f(localcg);
      aa.d("MicroMsg.NotifyReceiver", "edw onReceive, ret = " + localcg.bNJ.bMh);
      return;
      localcg.bNI.bNK = i;
      continue;
      localcg.bNI.bNK = 2;
      continue;
      localcg.bNI.bNK = 3;
      continue;
      localcg.bNI.bNK = 4;
      continue;
      localcg.bNI.bNK = 5;
      continue;
      localcg.bNI.bNK = 6;
      continue;
      localcg.bNI.bNK = 7;
    }
  }

  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }

  public void onCreate()
  {
    if (Build.VERSION.SDK_INT < 18)
      startForeground(-1212, new Notification());
    super.onCreate();
  }

  public void onStart(Intent paramIntent, int paramInt)
  {
    c(paramIntent);
  }

  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    aa.v("MicroMsg.INIT", "NotifyService onStartCommand flags :" + paramInt1 + "startId :" + paramInt2 + " intent " + paramIntent);
    c(paramIntent);
    return 1;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.booter.NotifyReceiver.NotifyService
 * JD-Core Version:    0.6.2
 */