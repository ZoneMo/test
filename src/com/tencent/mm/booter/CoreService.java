package com.tencent.mm.booter;

import android.app.Notification;
import android.app.Service;
import android.content.ContentResolver;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Process;
import com.tencent.mm.jni.platformcomm.Alarm;
import com.tencent.mm.jni.platformcomm.PlatformComm;
import com.tencent.mm.jni.platformcomm.WakerLock;
import com.tencent.mm.modelfriend.AddrBookObserver;
import com.tencent.mm.modelstat.WatchDogPushReceiver;
import com.tencent.mm.network.af;
import com.tencent.mm.network.ao;
import com.tencent.mm.network.bg;
import com.tencent.mm.network.bh;
import com.tencent.mm.network.bi;
import com.tencent.mm.network.bk;
import com.tencent.mm.network.bl;
import com.tencent.mm.network.bm;
import com.tencent.mm.network.bn;
import com.tencent.mm.platformtools.m;
import com.tencent.mm.pluginsdk.c;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ag;
import com.tencent.mm.sdk.platformtools.ai;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.at;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.sdk.platformtools.cj;

public class CoreService extends Service
  implements com.tencent.mm.jni.platformcomm.f, af, bl
{
  private ao bZl;
  private ac bZm = new ac();
  private boolean bZn = true;
  public final int bZo = -1213;
  private final ai bZp = new e(this);
  private com.tencent.mm.modelstat.l bZq = null;
  private AddrBookObserver bZr;
  private WatchDogPushReceiver bZs;
  private WakerLock bZt = null;
  private m bZu = new m();
  private ay bZv = new ay(new g(this), false);

  private void oj()
  {
    aa.w("MicroMsg.CoreService", "[COMPLETE EXIT]");
    bk.Fg().d(3, 10000, "");
    bg.onDestroy();
    try
    {
      MMReceivers.AlarmReceiver.D(getApplicationContext());
      MMReceivers.AlarmReceiver.B(getApplicationContext());
      Alarm.H(getApplicationContext());
      label43: aa.appenderClose();
      Process.killProcess(Process.myPid());
      return;
    }
    catch (Exception localException)
    {
      break label43;
    }
  }

  public final void H(boolean paramBoolean)
  {
    if (!paramBoolean)
    {
      aa.w("MicroMsg.CoreService", "[NETWORK LOST]");
      bk.Fc().cFB = false;
      bk.Fd().eJ(0);
      bk.Fb().a(10502, "", null);
      this.bZn = false;
      return;
    }
    aa.w("MicroMsg.CoreService", "[NETWORK CONNECTED]");
    bk.Fc().cFB = true;
    boolean bool = this.bZm.oM();
    if ((this.bZn) && (!bool))
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Boolean.valueOf(this.bZn);
      aa.d("MicroMsg.CoreService", "network not change or can't get network info, lastStatus connect:%b", arrayOfObject);
      return;
    }
    if (bool)
      bk.Ff().EN();
    this.bZn = true;
    bk.Fd().eJ(1);
    bk.Fb().a(10501, "", null);
    if (this.bZt == null)
      this.bZt = new WakerLock(getApplicationContext());
    if (!this.bZt.isLocking())
      this.bZt.lock(14000L);
    aa.i("MicroMsg.CoreService", "checking ready, start in 7000ms");
    this.bZv.bO(7000L);
  }

  public final boolean a(int paramInt, byte[] paramArrayOfByte)
  {
    if (getSharedPreferences("system_config_prefs", com.tencent.mm.compatible.g.l.qi()).getBoolean("settings_fully_exit", true))
    {
      aa.i("MicroMsg.CoreService", "fully exited, no need to notify worker");
      return false;
    }
    Intent localIntent = new Intent(this, NotifyReceiver.class);
    localIntent.putExtra("notify_option_type", 2);
    localIntent.putExtra("notify_uin", this.bZl.ES().sd());
    localIntent.putExtra("notify_respType", paramInt);
    localIntent.putExtra("notify_respBuf", paramArrayOfByte);
    localIntent.putExtra("notfiy_recv_time", cj.FD());
    localIntent.putExtra("notify_skey", this.bZl.ES().uo());
    aa.i("MicroMsg.CoreService", "notify broadcast:" + localIntent.getAction() + ", type=" + paramInt);
    try
    {
      sendBroadcast(localIntent);
      return true;
    }
    catch (Exception localException)
    {
      while (true)
      {
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = localException.toString();
        aa.a("MicroMsg.CoreService", "onNotify hasDestroyed %s", arrayOfObject);
      }
    }
  }

  public IBinder onBind(Intent paramIntent)
  {
    aa.d("MicroMsg.CoreService", "onBind~~~ threadID:" + Thread.currentThread());
    return this.bZl;
  }

  public void onCreate()
  {
    aa.d("MicroMsg.CoreService", "onCreate~~~threadID:" + Thread.currentThread());
    super.onCreate();
    if (Build.VERSION.SDK_INT < 18)
      startForeground(-1213, new Notification());
    Handler localHandler = new Handler(Looper.getMainLooper());
    PlatformComm.a(al.getContext(), localHandler);
    i locali = new i(this);
    locali.om();
    ag.a(this.bZp);
    if (PlatformComm.cgz == null)
      PlatformComm.cgz = this;
    bk.a(localHandler);
    bk.setContext(getApplicationContext());
    bk.a(new bm());
    bk.a(new bn());
    bk.a(this);
    if (this.bZq == null)
      this.bZq = new com.tencent.mm.modelstat.l();
    bk.a(this.bZq);
    this.bZl = bk.Ff();
    if (this.bZl == null)
    {
      aa.i("MicroMsg.CoreService", "autoAuth is null and new one");
      this.bZl = new ao(bk.getHandler());
      bk.e(this.bZl);
      bg.onCreate();
      if (bk.Fg() != null)
        break label465;
      aa.i("MicroMsg.CoreService", "NetTaskAdapter is null and new one");
      bk.a(new bi());
      label228: if (bk.Fh() == null)
      {
        aa.i("MicroMsg.CoreService", "NetTaskAdapter is null and new one");
        bk.a(new bh());
        bk.Fh().cFn = this;
      }
      at.azE().a(new f(this), null);
      String str1 = locali.getString(".com.tencent.mm.debug.server.host.http");
      String str2 = locali.getString(".com.tencent.mm.debug.server.ports.http");
      String str3 = locali.getString(".com.tencent.mm.debug.server.host.socket");
      String str4 = locali.getString(".com.tencent.mm.debug.server.ports.socket");
      this.bZl.d(str1, str2, str3, str4);
      MMReceivers.AlarmReceiver.D(getApplicationContext());
      MMReceivers.AlarmReceiver.C(getApplicationContext());
      NetworkInfo localNetworkInfo = ((ConnectivityManager)getSystemService("connectivity")).getActiveNetworkInfo();
      if ((localNetworkInfo != null) && (localNetworkInfo.getState() == NetworkInfo.State.CONNECTED))
        break label482;
      bk.Fc().cFB = false;
      bk.Fd().eJ(0);
    }
    while (true)
    {
      this.bZr = new AddrBookObserver(this, new Handler());
      getContentResolver().registerContentObserver(c.aph(), true, this.bZr);
      this.bZs = new WatchDogPushReceiver();
      registerReceiver(this.bZs, new IntentFilter("com.tencent.mm.WatchDogPushReceiver"));
      return;
      aa.w("MicroMsg.CoreService", "autoAuth is not null and reset");
      this.bZl.reset();
      break;
      label465: aa.w("MicroMsg.CoreService", "NetTaskAdapter is not null and reset");
      bk.Fg().reset();
      break label228;
      label482: bk.Fc().cFB = true;
      bk.Fd().eJ(1);
    }
  }

  public void onDestroy()
  {
    aa.d("MicroMsg.CoreService", "onDestroy~~~ threadID:" + Thread.currentThread());
    this.bZq.a(10002, null, null);
    getContentResolver().unregisterContentObserver(this.bZr);
    unregisterReceiver(this.bZs);
    super.onDestroy();
    oj();
  }

  public void onRebind(Intent paramIntent)
  {
    aa.d("MicroMsg.CoreService", "onRebind~~~ threadID:" + Thread.currentThread());
    super.onRebind(paramIntent);
  }

  public boolean onUnbind(Intent paramIntent)
  {
    aa.d("MicroMsg.CoreService", "onUnbind~~~ threadID:" + Thread.currentThread());
    bk.Fc().a(null);
    return super.onUnbind(paramIntent);
  }

  public final void restartProcess()
  {
    aa.w("MicroMsg.CoreService", "restartProcess");
    oj();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.booter.CoreService
 * JD-Core Version:    0.6.2
 */