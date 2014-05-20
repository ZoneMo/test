package com.tencent.mm.network;

import java.io.InputStream;
import java.net.URL;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;

public final class be
{
  private SSLContext cFi;
  private bf cFj;
  private SSLSocketFactory cFk;
  private HttpsURLConnection cFl;

  public be(String paramString)
  {
    this(new URL(paramString));
  }

  // ERROR //
  private be(URL paramURL)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 34	java/lang/Object:<init>	()V
    //   4: aload_0
    //   5: aconst_null
    //   6: putfield 36	com/tencent/mm/network/be:cFl	Ljavax/net/ssl/HttpsURLConnection;
    //   9: aload_0
    //   10: new 38	com/tencent/mm/network/bf
    //   13: dup
    //   14: invokespecial 39	com/tencent/mm/network/bf:<init>	()V
    //   17: putfield 41	com/tencent/mm/network/be:cFj	Lcom/tencent/mm/network/bf;
    //   20: aload_0
    //   21: ldc 43
    //   23: invokestatic 49	javax/net/ssl/SSLContext:getInstance	(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    //   26: putfield 51	com/tencent/mm/network/be:cFi	Ljavax/net/ssl/SSLContext;
    //   29: iconst_1
    //   30: anewarray 53	javax/net/ssl/X509TrustManager
    //   33: astore 10
    //   35: aload 10
    //   37: iconst_0
    //   38: aload_0
    //   39: getfield 41	com/tencent/mm/network/be:cFj	Lcom/tencent/mm/network/bf;
    //   42: aastore
    //   43: aload_0
    //   44: getfield 51	com/tencent/mm/network/be:cFi	Ljavax/net/ssl/SSLContext;
    //   47: aconst_null
    //   48: aload 10
    //   50: new 55	java/security/SecureRandom
    //   53: dup
    //   54: invokespecial 56	java/security/SecureRandom:<init>	()V
    //   57: invokevirtual 60	javax/net/ssl/SSLContext:init	([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    //   60: aload_0
    //   61: aload_0
    //   62: getfield 51	com/tencent/mm/network/be:cFi	Ljavax/net/ssl/SSLContext;
    //   65: invokevirtual 64	javax/net/ssl/SSLContext:getSocketFactory	()Ljavax/net/ssl/SSLSocketFactory;
    //   68: putfield 66	com/tencent/mm/network/be:cFk	Ljavax/net/ssl/SSLSocketFactory;
    //   71: aload_0
    //   72: aload_1
    //   73: invokevirtual 70	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   76: checkcast 72	javax/net/ssl/HttpsURLConnection
    //   79: putfield 36	com/tencent/mm/network/be:cFl	Ljavax/net/ssl/HttpsURLConnection;
    //   82: aload_0
    //   83: getfield 36	com/tencent/mm/network/be:cFl	Ljavax/net/ssl/HttpsURLConnection;
    //   86: aload_0
    //   87: getfield 66	com/tencent/mm/network/be:cFk	Ljavax/net/ssl/SSLSocketFactory;
    //   90: invokevirtual 76	javax/net/ssl/HttpsURLConnection:setSSLSocketFactory	(Ljavax/net/ssl/SSLSocketFactory;)V
    //   93: return
    //   94: astore 9
    //   96: ldc 78
    //   98: new 80	java/lang/StringBuilder
    //   101: dup
    //   102: ldc 82
    //   104: invokespecial 83	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   107: aload 9
    //   109: invokevirtual 87	java/security/NoSuchAlgorithmException:getMessage	()Ljava/lang/String;
    //   112: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   115: invokevirtual 94	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   118: invokestatic 100	com/tencent/mm/sdk/platformtools/aa:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   121: goto -50 -> 71
    //   124: astore 8
    //   126: ldc 78
    //   128: new 80	java/lang/StringBuilder
    //   131: dup
    //   132: ldc 102
    //   134: invokespecial 83	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   137: aload 8
    //   139: invokevirtual 103	java/security/KeyManagementException:getMessage	()Ljava/lang/String;
    //   142: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   145: invokevirtual 94	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   148: invokestatic 100	com/tencent/mm/sdk/platformtools/aa:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   151: goto -80 -> 71
    //   154: astore_2
    //   155: ldc 78
    //   157: new 80	java/lang/StringBuilder
    //   160: dup
    //   161: ldc 105
    //   163: invokespecial 83	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   166: aload_2
    //   167: invokevirtual 106	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   170: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   173: invokevirtual 94	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   176: invokestatic 100	com/tencent/mm/sdk/platformtools/aa:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   179: goto -108 -> 71
    //   182: astore 6
    //   184: iconst_1
    //   185: anewarray 4	java/lang/Object
    //   188: astore 7
    //   190: aload 7
    //   192: iconst_0
    //   193: aload 6
    //   195: invokevirtual 107	java/net/MalformedURLException:getMessage	()Ljava/lang/String;
    //   198: aastore
    //   199: ldc 78
    //   201: ldc 109
    //   203: aload 7
    //   205: invokestatic 113	com/tencent/mm/sdk/platformtools/aa:b	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   208: return
    //   209: astore 4
    //   211: iconst_1
    //   212: anewarray 4	java/lang/Object
    //   215: astore 5
    //   217: aload 5
    //   219: iconst_0
    //   220: aload 4
    //   222: invokevirtual 114	java/io/IOException:getMessage	()Ljava/lang/String;
    //   225: aastore
    //   226: ldc 78
    //   228: ldc 116
    //   230: aload 5
    //   232: invokestatic 113	com/tencent/mm/sdk/platformtools/aa:b	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   235: return
    //   236: astore_3
    //   237: ldc 78
    //   239: new 80	java/lang/StringBuilder
    //   242: dup
    //   243: ldc 105
    //   245: invokespecial 83	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   248: aload_3
    //   249: invokevirtual 106	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   252: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   255: invokevirtual 94	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   258: invokestatic 100	com/tencent/mm/sdk/platformtools/aa:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   261: return
    //
    // Exception table:
    //   from	to	target	type
    //   20	71	94	java/security/NoSuchAlgorithmException
    //   20	71	124	java/security/KeyManagementException
    //   20	71	154	java/lang/Exception
    //   71	93	182	java/net/MalformedURLException
    //   71	93	209	java/io/IOException
    //   71	93	236	java/lang/Exception
  }

  public final void disconnect()
  {
    this.cFl.disconnect();
  }

  public final InputStream getInputStream()
  {
    return this.cFl.getInputStream();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.network.be
 * JD-Core Version:    0.6.2
 */