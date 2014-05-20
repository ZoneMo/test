package com.google.android.gms.a;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;

public final class b
{
  public static final String KEY_ANDROID_PACKAGE_NAME = "androidPackageName";
  public static final String KEY_CALLER_UID = "callerUid";
  private static final ComponentName Kb = new ComponentName("com.google.android.gms", "com.google.android.gms.auth.GetToken");
  private static final ComponentName Kc = new ComponentName("com.google.android.gms", "com.google.android.gms.recovery.RecoveryService");
  private static final Intent Kd = new Intent().setComponent(Kb);
  private static final Intent Ke = new Intent().setComponent(Kc);

  public static String a(Context paramContext, String paramString1, String paramString2)
  {
    return a(paramContext, paramString1, paramString2, new Bundle());
  }

  // ERROR //
  private static String a(Context paramContext, String paramString1, String paramString2, Bundle paramBundle)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 75	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   4: astore 4
    //   6: invokestatic 81	android/os/Looper:myLooper	()Landroid/os/Looper;
    //   9: astore 5
    //   11: aload 5
    //   13: ifnull +23 -> 36
    //   16: aload 5
    //   18: aload 4
    //   20: invokevirtual 84	android/content/Context:getMainLooper	()Landroid/os/Looper;
    //   23: if_acmpne +13 -> 36
    //   26: new 86	java/lang/IllegalStateException
    //   29: dup
    //   30: ldc 88
    //   32: invokespecial 91	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   35: athrow
    //   36: aload 4
    //   38: invokestatic 97	com/google/android/gms/common/e:i	(Landroid/content/Context;)I
    //   41: istore 6
    //   43: iload 6
    //   45: ifeq +58 -> 103
    //   48: iload 6
    //   50: invokestatic 101	com/google/android/gms/common/e:aU	(I)Landroid/content/Intent;
    //   53: astore 19
    //   55: new 103	java/lang/StringBuilder
    //   58: dup
    //   59: ldc 105
    //   61: invokespecial 106	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   64: iload 6
    //   66: invokevirtual 110	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   69: invokevirtual 114	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   72: astore 20
    //   74: aload 19
    //   76: ifnonnull +13 -> 89
    //   79: new 116	com/google/android/gms/a/a
    //   82: dup
    //   83: aload 20
    //   85: invokespecial 117	com/google/android/gms/a/a:<init>	(Ljava/lang/String;)V
    //   88: athrow
    //   89: new 119	com/google/android/gms/a/c
    //   92: dup
    //   93: iload 6
    //   95: ldc 121
    //   97: aload 19
    //   99: invokespecial 124	com/google/android/gms/a/c:<init>	(ILjava/lang/String;Landroid/content/Intent;)V
    //   102: athrow
    //   103: aload_3
    //   104: ifnonnull +106 -> 210
    //   107: new 61	android/os/Bundle
    //   110: dup
    //   111: invokespecial 62	android/os/Bundle:<init>	()V
    //   114: astore 7
    //   116: aload 7
    //   118: getstatic 29	com/google/android/gms/a/b:KEY_ANDROID_PACKAGE_NAME	Ljava/lang/String;
    //   121: invokevirtual 128	android/os/Bundle:containsKey	(Ljava/lang/String;)Z
    //   124: ifne +15 -> 139
    //   127: aload 7
    //   129: getstatic 29	com/google/android/gms/a/b:KEY_ANDROID_PACKAGE_NAME	Ljava/lang/String;
    //   132: aload_0
    //   133: invokevirtual 131	android/content/Context:getPackageName	()Ljava/lang/String;
    //   136: invokevirtual 134	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   139: new 136	com/google/android/gms/internal/cm
    //   142: dup
    //   143: invokespecial 137	com/google/android/gms/internal/cm:<init>	()V
    //   146: astore 8
    //   148: aload_0
    //   149: getstatic 55	com/google/android/gms/a/b:Kd	Landroid/content/Intent;
    //   152: aload 8
    //   154: iconst_1
    //   155: invokevirtual 141	android/content/Context:bindService	(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    //   158: ifeq +281 -> 439
    //   161: aload 8
    //   163: invokevirtual 145	com/google/android/gms/internal/cm:kX	()Landroid/os/IBinder;
    //   166: invokestatic 151	com/google/android/gms/internal/b:b	(Landroid/os/IBinder;)Lcom/google/android/gms/internal/a;
    //   169: aload_1
    //   170: aload_2
    //   171: aload 7
    //   173: invokeinterface 156 4 0
    //   178: astore 12
    //   180: aload 12
    //   182: ldc 158
    //   184: invokevirtual 162	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   187: astore 13
    //   189: aload 13
    //   191: invokestatic 168	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   194: istore 14
    //   196: iload 14
    //   198: ifne +25 -> 223
    //   201: aload_0
    //   202: aload 8
    //   204: invokevirtual 172	android/content/Context:unbindService	(Landroid/content/ServiceConnection;)V
    //   207: aload 13
    //   209: areturn
    //   210: new 61	android/os/Bundle
    //   213: dup
    //   214: aload_3
    //   215: invokespecial 175	android/os/Bundle:<init>	(Landroid/os/Bundle;)V
    //   218: astore 7
    //   220: goto -104 -> 116
    //   223: aload 12
    //   225: ldc 177
    //   227: invokevirtual 162	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   230: astore 15
    //   232: aload 12
    //   234: ldc 179
    //   236: invokevirtual 183	android/os/Bundle:getParcelable	(Ljava/lang/String;)Landroid/os/Parcelable;
    //   239: checkcast 47	android/content/Intent
    //   242: astore 16
    //   244: ldc 185
    //   246: aload 15
    //   248: invokevirtual 191	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   251: ifne +199 -> 450
    //   254: ldc 193
    //   256: aload 15
    //   258: invokevirtual 191	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   261: ifne +189 -> 450
    //   264: ldc 195
    //   266: aload 15
    //   268: invokevirtual 191	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   271: ifne +179 -> 450
    //   274: ldc 197
    //   276: aload 15
    //   278: invokevirtual 191	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   281: ifne +169 -> 450
    //   284: ldc 199
    //   286: aload 15
    //   288: invokevirtual 191	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   291: ifne +159 -> 450
    //   294: ldc 201
    //   296: aload 15
    //   298: invokevirtual 191	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   301: ifne +149 -> 450
    //   304: ldc 203
    //   306: aload 15
    //   308: invokevirtual 191	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   311: ifeq +46 -> 357
    //   314: goto +136 -> 450
    //   317: iload 17
    //   319: ifeq +44 -> 363
    //   322: new 205	com/google/android/gms/a/d
    //   325: dup
    //   326: aload 15
    //   328: aload 16
    //   330: invokespecial 208	com/google/android/gms/a/d:<init>	(Ljava/lang/String;Landroid/content/Intent;)V
    //   333: athrow
    //   334: astore 11
    //   336: new 210	java/io/IOException
    //   339: dup
    //   340: ldc 212
    //   342: invokespecial 213	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   345: athrow
    //   346: astore 10
    //   348: aload_0
    //   349: aload 8
    //   351: invokevirtual 172	android/content/Context:unbindService	(Landroid/content/ServiceConnection;)V
    //   354: aload 10
    //   356: athrow
    //   357: iconst_0
    //   358: istore 17
    //   360: goto -43 -> 317
    //   363: ldc 215
    //   365: aload 15
    //   367: invokevirtual 191	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   370: ifne +86 -> 456
    //   373: ldc 217
    //   375: aload 15
    //   377: invokevirtual 191	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   380: ifne +76 -> 456
    //   383: ldc 219
    //   385: aload 15
    //   387: invokevirtual 191	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   390: ifeq +33 -> 423
    //   393: goto +63 -> 456
    //   396: iload 18
    //   398: ifeq +31 -> 429
    //   401: new 210	java/io/IOException
    //   404: dup
    //   405: aload 15
    //   407: invokespecial 213	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   410: athrow
    //   411: astore 9
    //   413: new 116	com/google/android/gms/a/a
    //   416: dup
    //   417: ldc 221
    //   419: invokespecial 117	com/google/android/gms/a/a:<init>	(Ljava/lang/String;)V
    //   422: athrow
    //   423: iconst_0
    //   424: istore 18
    //   426: goto -30 -> 396
    //   429: new 116	com/google/android/gms/a/a
    //   432: dup
    //   433: aload 15
    //   435: invokespecial 117	com/google/android/gms/a/a:<init>	(Ljava/lang/String;)V
    //   438: athrow
    //   439: new 205	com/google/android/gms/a/d
    //   442: dup
    //   443: ldc 203
    //   445: aconst_null
    //   446: invokespecial 208	com/google/android/gms/a/d:<init>	(Ljava/lang/String;Landroid/content/Intent;)V
    //   449: athrow
    //   450: iconst_1
    //   451: istore 17
    //   453: goto -136 -> 317
    //   456: iconst_1
    //   457: istore 18
    //   459: goto -63 -> 396
    //
    // Exception table:
    //   from	to	target	type
    //   161	196	334	android/os/RemoteException
    //   223	314	334	android/os/RemoteException
    //   322	334	334	android/os/RemoteException
    //   363	393	334	android/os/RemoteException
    //   401	411	334	android/os/RemoteException
    //   429	439	334	android/os/RemoteException
    //   161	196	346	finally
    //   223	314	346	finally
    //   322	334	346	finally
    //   336	346	346	finally
    //   363	393	346	finally
    //   401	411	346	finally
    //   413	423	346	finally
    //   429	439	346	finally
    //   161	196	411	java/lang/InterruptedException
    //   223	314	411	java/lang/InterruptedException
    //   322	334	411	java/lang/InterruptedException
    //   363	393	411	java/lang/InterruptedException
    //   401	411	411	java/lang/InterruptedException
    //   429	439	411	java/lang/InterruptedException
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.a.b
 * JD-Core Version:    0.6.2
 */