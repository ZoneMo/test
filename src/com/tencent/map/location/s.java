package com.tencent.map.location;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.location.Location;
import android.os.Handler;
import android.os.Message;
import com.tencent.map.a.a.b;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

public final class s
  implements aa, d, n, r
{
  private static s UF = null;
  private static boolean Uk = false;
  private c TN = null;
  private boolean TW = false;
  private String TX = "";
  private f TY = null;
  private long TZ = 5000L;
  private g UA = null;
  private b UB = null;
  private x UC = null;
  private w UD = null;
  private v UE = null;
  private long UG = -1L;
  private z UH = null;
  private com.tencent.map.a.a.d UI = null;
  private com.tencent.map.a.a.d UJ = null;
  private String UK = "";
  private String UL = "";
  private String UM = "";
  private boolean UN = false;
  private long UO = 0L;
  private Handler UP = null;
  private Runnable UQ = new t(this);
  private final BroadcastReceiver UR = new u(this);
  private int Uc;
  private int Ud;
  private m Uh = null;
  private byte[] Ui = new byte[0];
  private byte[] Uj = new byte[0];
  private j Ul = null;
  private int Um;
  private int Un = 0;
  private int Uo = 1;
  private q Ux = null;
  private o Uy = null;
  private int jdField_a_of_type_Int = 1024;
  private Context jdField_a_of_type_AndroidContentContext = null;
  private int jdField_b_of_type_Int = 4;
  private String jdField_b_of_type_JavaLangString = "";
  private boolean c = false;
  private String d = "";
  private int g = 0;

  private void F(boolean paramBoolean)
  {
    if ((this.Ux != null) && (this.Ux.lZ()))
    {
      Location localLocation = this.Ux.ma();
      this.UI = new com.tencent.map.a.a.d();
      this.UI.Tl = ac.a(localLocation.getLatitude(), 6);
      this.UI.Tm = ac.a(localLocation.getLongitude(), 6);
      this.UI.To = ac.a(localLocation.getAltitude(), 1);
      this.UI.Tp = ac.a(localLocation.getAccuracy(), 1);
      this.UI.Tq = ac.a(localLocation.getSpeed(), 1);
      this.UI.Tr = ac.a(localLocation.getBearing(), 1);
      this.UI.Tn = 0;
      this.UI.TI = false;
      if (paramBoolean)
        break label237;
    }
    label237: for (this.UI.TJ = 0; ; this.UI.TJ = 1)
    {
      this.UI.TK = 0;
      this.UJ = new com.tencent.map.a.a.d(this.UI);
      this.Un = 0;
      if ((System.currentTimeMillis() - this.UG >= this.TZ) && (this.UB != null) && (this.Uc == 1))
      {
        this.UB.a(this.UI);
        this.UG = System.currentTimeMillis();
      }
      return;
    }
  }

  private static ArrayList a(JSONArray paramJSONArray)
  {
    int i = paramJSONArray.length();
    ArrayList localArrayList = new ArrayList();
    for (int j = 0; j < i; j++)
    {
      JSONObject localJSONObject = paramJSONArray.getJSONObject(j);
      localArrayList.add(new com.tencent.map.a.a.c(localJSONObject.getString("name"), localJSONObject.getString("addr"), localJSONObject.getString("catalog"), localJSONObject.getDouble("dist"), Double.parseDouble(localJSONObject.getString("latitude")), Double.parseDouble(localJSONObject.getString("longitude"))));
    }
    return localArrayList;
  }

  private void aj(String paramString)
  {
    try
    {
      this.UI = new com.tencent.map.a.a.d();
      JSONObject localJSONObject1 = new JSONObject(paramString);
      JSONObject localJSONObject2 = localJSONObject1.getJSONObject("location");
      this.UI.Tn = 1;
      this.UI.Tl = ac.a(localJSONObject2.getDouble("latitude"), 6);
      this.UI.Tm = ac.a(localJSONObject2.getDouble("longitude"), 6);
      this.UI.To = ac.a(localJSONObject2.getDouble("altitude"), 1);
      this.UI.Tp = ac.a(localJSONObject2.getDouble("accuracy"), 1);
      com.tencent.map.a.a.d locald1 = this.UI;
      boolean bool;
      int i;
      int j;
      double d1;
      double d2;
      label238: int n;
      JSONObject localJSONObject4;
      if (this.Um == 1)
      {
        bool = true;
        locald1.TI = bool;
        String str = localJSONObject1.getString("bearing");
        i = -100;
        j = 0;
        if (str != null)
        {
          int k = str.split(",").length;
          j = 0;
          if (k > 1)
            j = Integer.parseInt(str.split(",")[1]);
        }
        if (this.Uh != null)
          i = this.Uh.Un;
        com.tencent.map.a.a.d locald2 = this.UI;
        d1 = this.UI.Tp;
        if (j < 6)
          break label678;
        d2 = 40.0D;
        locald2.Tp = d2;
        this.UI.TK = 0;
        if (((this.Ud == 3) || (this.Ud == 4)) && (this.Um == 1))
        {
          JSONObject localJSONObject5 = localJSONObject1.getJSONObject("details").getJSONObject("subnation");
          this.UI.ah(localJSONObject5.getString("name"));
          this.UI.Tx = localJSONObject5.getString("town");
          this.UI.Ty = localJSONObject5.getString("village");
          this.UI.Tz = localJSONObject5.getString("street");
          this.UI.TA = localJSONObject5.getString("street_no");
          this.UI.TK = 3;
          this.UI.Ts = 0;
        }
        if ((this.Ud == 4) && (this.Um == 1))
        {
          JSONArray localJSONArray = localJSONObject1.getJSONObject("details").getJSONArray("poilist");
          this.UI.TH = a(localJSONArray);
          this.UI.TK = 4;
        }
        if ((this.Ud == 7) && (this.Um == 1))
        {
          JSONObject localJSONObject3 = localJSONObject1.getJSONObject("details");
          n = localJSONObject3.getInt("stat");
          localJSONObject4 = localJSONObject3.getJSONObject("subnation");
          if (n != 0)
            break label854;
          this.UI.ah(localJSONObject4.getString("name"));
          this.UI.Tx = localJSONObject4.getString("town");
          this.UI.Ty = localJSONObject4.getString("village");
          this.UI.Tz = localJSONObject4.getString("street");
          this.UI.TA = localJSONObject4.getString("street_no");
        }
      }
      while (true)
      {
        this.UI.Ts = n;
        this.UI.TK = 7;
        this.UI.TJ = 0;
        this.UJ = new com.tencent.map.a.a.d(this.UI);
        this.Un = 0;
        if (this.TY != null)
          this.TY.ai(paramString);
        if ((this.UB != null) && (this.Uc == 1) && ((this.Ux == null) || (!this.Ux.lZ())))
        {
          this.UB.a(this.UI);
          this.UG = System.currentTimeMillis();
        }
        return;
        bool = false;
        break;
        label678: if (j == 5)
        {
          d2 = 60.0D;
          break label238;
        }
        if (j == 4)
        {
          d2 = 70.0D;
          break label238;
        }
        if (j == 3)
        {
          d2 = 90.0D;
          break label238;
        }
        if (j == 2)
        {
          d2 = 110.0D;
          break label238;
        }
        int m;
        if ((i >= -72) && (j == 0))
          m = 10 * (int)(0.45D * d1 / 10.0D);
        while (true)
        {
          d2 = m;
          break;
          if (d1 <= 100.0D)
            m = 10 * (int)(1.0D + (d1 - 1.0D) / 10.0D);
          else if ((d1 > 100.0D) && (d1 <= 800.0D))
            m = 10 * (int)(0.85D * d1 / 10.0D);
          else
            m = 10 * (int)(0.8D * d1 / 10.0D);
        }
        label854: if (n == 1)
        {
          this.UI.Tt = localJSONObject4.getString("nation");
          this.UI.TB = localJSONObject4.getString("admin_level_1");
          this.UI.TC = localJSONObject4.getString("admin_level_2");
          this.UI.TD = localJSONObject4.getString("admin_level_3");
          this.UI.TE = localJSONObject4.getString("locality");
          this.UI.TF = localJSONObject4.getString("sublocality");
          this.UI.TG = localJSONObject4.getString("route");
        }
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        this.UI = new com.tencent.map.a.a.d();
        this.UI.TK = -1;
        this.UI.TJ = 2;
        this.Un = 2;
      }
    }
  }

  public static s mb()
  {
    try
    {
      if (UF == null)
        UF = new s();
      s locals = UF;
      return locals;
    }
    finally
    {
    }
  }

  private void md()
  {
    if (this.UE != null)
      return;
    this.UE = new v(this, this.Ux, this.Uh, this.UH);
    this.UE.start();
  }

  private void me()
  {
    this.UI = new com.tencent.map.a.a.d();
    this.Un = 1;
    this.UI.TJ = 1;
    this.UI.TK = -1;
    this.UI.Tn = 1;
    if ((this.UB != null) && (this.Uc == 1))
      this.UB.a(this.UI);
  }

  public final void a(double paramDouble1, double paramDouble2)
  {
    synchronized (this.Uj)
    {
      Message localMessage = this.UC.obtainMessage(6);
      Location localLocation = new Location("Deflect");
      localLocation.setLatitude(paramDouble1);
      localLocation.setLongitude(paramDouble2);
      localMessage.obj = localLocation;
      this.UC.sendMessage(localMessage);
      return;
    }
  }

  public final void a(m paramm)
  {
    synchronized (this.Uj)
    {
      Message localMessage = this.UC.obtainMessage(2, paramm);
      this.UC.sendMessage(localMessage);
      return;
    }
  }

  public final void a(q paramq)
  {
    synchronized (this.Uj)
    {
      Message localMessage = this.UC.obtainMessage(1, paramq);
      this.UC.sendMessage(localMessage);
      return;
    }
  }

  public final void a(z paramz)
  {
    synchronized (this.Uj)
    {
      Message localMessage = this.UC.obtainMessage(3, paramz);
      this.UC.sendMessage(localMessage);
      return;
    }
  }

  public final boolean a(String paramString1, String paramString2)
  {
    synchronized (this.Ui)
    {
      if (a.lU().a(paramString1, paramString2))
      {
        this.UM = paramString1;
        return true;
      }
      return false;
    }
  }

  // ERROR //
  public final boolean b(Context paramContext, b paramb)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 108	com/tencent/map/location/s:Ui	[B
    //   4: astore_3
    //   5: aload_3
    //   6: monitorenter
    //   7: aload_1
    //   8: ifnull +7 -> 15
    //   11: aload_2
    //   12: ifnonnull +7 -> 19
    //   15: aload_3
    //   16: monitorexit
    //   17: iconst_0
    //   18: ireturn
    //   19: aload_0
    //   20: getfield 152	com/tencent/map/location/s:UM	Ljava/lang/String;
    //   23: invokestatic 652	com/tencent/map/location/ac:ak	(Ljava/lang/String;)Z
    //   26: ifne +7 -> 33
    //   29: aload_3
    //   30: monitorexit
    //   31: iconst_0
    //   32: ireturn
    //   33: aload_0
    //   34: new 609	com/tencent/map/location/x
    //   37: dup
    //   38: aload_0
    //   39: invokespecial 653	com/tencent/map/location/x:<init>	(Lcom/tencent/map/location/s;)V
    //   42: putfield 114	com/tencent/map/location/s:UC	Lcom/tencent/map/location/x;
    //   45: aload_0
    //   46: new 655	android/os/Handler
    //   49: dup
    //   50: invokestatic 661	android/os/Looper:getMainLooper	()Landroid/os/Looper;
    //   53: invokespecial 664	android/os/Handler:<init>	(Landroid/os/Looper;)V
    //   56: putfield 160	com/tencent/map/location/s:UP	Landroid/os/Handler;
    //   59: aload_0
    //   60: aload_1
    //   61: putfield 90	com/tencent/map/location/s:jdField_a_of_type_AndroidContentContext	Landroid/content/Context;
    //   64: aload_0
    //   65: aload_2
    //   66: putfield 106	com/tencent/map/location/s:UB	Lcom/tencent/map/a/a/b;
    //   69: invokestatic 670	com/tencent/a/a/b:na	()Lcom/tencent/a/a/b;
    //   72: aload_0
    //   73: getfield 90	com/tencent/map/location/s:jdField_a_of_type_AndroidContentContext	Landroid/content/Context;
    //   76: invokevirtual 676	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   79: invokevirtual 679	com/tencent/a/a/b:r	(Landroid/content/Context;)V
    //   82: aload_1
    //   83: ldc_w 681
    //   86: invokevirtual 685	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   89: checkcast 687	android/net/ConnectivityManager
    //   92: astore 9
    //   94: aload 9
    //   96: ifnull +23 -> 119
    //   99: aload 9
    //   101: invokevirtual 691	android/net/ConnectivityManager:getActiveNetworkInfo	()Landroid/net/NetworkInfo;
    //   104: ifnull +15 -> 119
    //   107: aload_0
    //   108: aload 9
    //   110: invokevirtual 691	android/net/ConnectivityManager:getActiveNetworkInfo	()Landroid/net/NetworkInfo;
    //   113: invokevirtual 696	android/net/NetworkInfo:isRoaming	()Z
    //   116: putfield 154	com/tencent/map/location/s:c	Z
    //   119: aload_0
    //   120: getfield 90	com/tencent/map/location/s:jdField_a_of_type_AndroidContentContext	Landroid/content/Context;
    //   123: aload_0
    //   124: getfield 172	com/tencent/map/location/s:UR	Landroid/content/BroadcastReceiver;
    //   127: new 698	android/content/IntentFilter
    //   130: dup
    //   131: ldc_w 700
    //   134: invokespecial 701	android/content/IntentFilter:<init>	(Ljava/lang/String;)V
    //   137: invokevirtual 705	android/content/Context:registerReceiver	(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    //   140: pop
    //   141: aload_0
    //   142: aload_0
    //   143: getfield 106	com/tencent/map/location/s:UB	Lcom/tencent/map/a/a/b;
    //   146: invokevirtual 708	com/tencent/map/a/a/b:lR	()I
    //   149: putfield 265	com/tencent/map/location/s:Uc	I
    //   152: aload_0
    //   153: aload_0
    //   154: getfield 106	com/tencent/map/location/s:UB	Lcom/tencent/map/a/a/b;
    //   157: invokevirtual 711	com/tencent/map/a/a/b:lS	()I
    //   160: putfield 333	com/tencent/map/location/s:Ud	I
    //   163: aload_0
    //   164: aload_0
    //   165: getfield 106	com/tencent/map/location/s:UB	Lcom/tencent/map/a/a/b;
    //   168: invokevirtual 714	com/tencent/map/a/a/b:lT	()I
    //   171: putfield 426	com/tencent/map/location/s:Um	I
    //   174: aload_0
    //   175: ldc2_w 119
    //   178: putfield 122	com/tencent/map/location/s:UG	J
    //   181: aload_0
    //   182: iconst_0
    //   183: putfield 156	com/tencent/map/location/s:UN	Z
    //   186: aload_0
    //   187: iconst_1
    //   188: putfield 138	com/tencent/map/location/s:Uo	I
    //   191: aload_0
    //   192: getfield 92	com/tencent/map/location/s:Uy	Lcom/tencent/map/location/o;
    //   195: aload_0
    //   196: aload_0
    //   197: getfield 90	com/tencent/map/location/s:jdField_a_of_type_AndroidContentContext	Landroid/content/Context;
    //   200: invokevirtual 717	com/tencent/map/location/o:a	(Lcom/tencent/map/location/r;Landroid/content/Context;)Z
    //   203: istore 6
    //   205: aload_0
    //   206: getfield 94	com/tencent/map/location/s:Ul	Lcom/tencent/map/location/j;
    //   209: aload_0
    //   210: getfield 90	com/tencent/map/location/s:jdField_a_of_type_AndroidContentContext	Landroid/content/Context;
    //   213: aload_0
    //   214: invokevirtual 720	com/tencent/map/location/j:a	(Landroid/content/Context;Lcom/tencent/map/location/n;)Z
    //   217: istore 7
    //   219: aload_0
    //   220: getfield 96	com/tencent/map/location/s:UA	Lcom/tencent/map/location/g;
    //   223: aload_0
    //   224: getfield 90	com/tencent/map/location/s:jdField_a_of_type_AndroidContentContext	Landroid/content/Context;
    //   227: aload_0
    //   228: invokevirtual 723	com/tencent/map/location/g:a	(Landroid/content/Context;Lcom/tencent/map/location/aa;)Z
    //   231: istore 8
    //   233: aload_0
    //   234: invokestatic 727	com/tencent/map/location/f:lW	()Lcom/tencent/map/location/f;
    //   237: putfield 102	com/tencent/map/location/s:TY	Lcom/tencent/map/location/f;
    //   240: aload_0
    //   241: invokestatic 731	com/tencent/map/location/c:lV	()Lcom/tencent/map/location/c;
    //   244: putfield 104	com/tencent/map/location/s:TN	Lcom/tencent/map/location/c;
    //   247: aload_0
    //   248: aconst_null
    //   249: putfield 124	com/tencent/map/location/s:Ux	Lcom/tencent/map/location/q;
    //   252: aload_0
    //   253: aconst_null
    //   254: putfield 126	com/tencent/map/location/s:Uh	Lcom/tencent/map/location/m;
    //   257: aload_0
    //   258: aconst_null
    //   259: putfield 128	com/tencent/map/location/s:UH	Lcom/tencent/map/location/z;
    //   262: aload_0
    //   263: aconst_null
    //   264: putfield 130	com/tencent/map/location/s:UI	Lcom/tencent/map/a/a/d;
    //   267: aload_0
    //   268: aconst_null
    //   269: putfield 132	com/tencent/map/location/s:UJ	Lcom/tencent/map/a/a/d;
    //   272: aload_0
    //   273: iconst_0
    //   274: putfield 134	com/tencent/map/location/s:Un	I
    //   277: aload_0
    //   278: getfield 102	com/tencent/map/location/s:TY	Lcom/tencent/map/location/f;
    //   281: ifnull +10 -> 291
    //   284: aload_0
    //   285: getfield 102	com/tencent/map/location/s:TY	Lcom/tencent/map/location/f;
    //   288: invokevirtual 734	com/tencent/map/location/f:lX	()V
    //   291: aload_0
    //   292: iconst_1
    //   293: putfield 136	com/tencent/map/location/s:g	I
    //   296: iload 6
    //   298: ifeq +14 -> 312
    //   301: aload_0
    //   302: getfield 426	com/tencent/map/location/s:Um	I
    //   305: ifne +7 -> 312
    //   308: aload_3
    //   309: monitorexit
    //   310: iconst_1
    //   311: ireturn
    //   312: iload 7
    //   314: ifne +8 -> 322
    //   317: iload 8
    //   319: ifeq +7 -> 326
    //   322: aload_3
    //   323: monitorexit
    //   324: iconst_1
    //   325: ireturn
    //   326: aload_3
    //   327: monitorexit
    //   328: iconst_0
    //   329: ireturn
    //   330: astore 4
    //   332: aload_3
    //   333: monitorexit
    //   334: aload 4
    //   336: athrow
    //   337: astore 5
    //   339: goto -198 -> 141
    //
    // Exception table:
    //   from	to	target	type
    //   19	31	330	finally
    //   33	82	330	finally
    //   82	94	330	finally
    //   99	119	330	finally
    //   119	141	330	finally
    //   141	291	330	finally
    //   291	296	330	finally
    //   301	310	330	finally
    //   82	94	337	java/lang/Exception
    //   99	119	337	java/lang/Exception
    //   119	141	337	java/lang/Exception
  }

  public final void bb(int paramInt)
  {
    synchronized (this.Uj)
    {
      Message localMessage = this.UC.obtainMessage(4, paramInt, 0);
      this.UC.sendMessage(localMessage);
      return;
    }
  }

  public final void bc(int paramInt)
  {
    synchronized (this.Uj)
    {
      Message localMessage = this.UC.obtainMessage(5, paramInt, 0);
      this.UC.sendMessage(localMessage);
      return;
    }
  }

  public final void lX()
  {
    try
    {
      synchronized (this.Ui)
      {
        if (this.UB != null)
        {
          this.UB = null;
          this.UP.removeCallbacks(this.UQ);
          this.jdField_a_of_type_AndroidContentContext.unregisterReceiver(this.UR);
          this.Uy.lX();
          this.Ul.lX();
          this.UA.lX();
        }
        label62: return;
      }
    }
    catch (Exception localException)
    {
      break label62;
    }
  }

  public final void mc()
  {
    if ((2000L >= 1000L) && (2000L <= 20000L))
      this.TZ = 2000L;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.map.location.s
 * JD-Core Version:    0.6.2
 */