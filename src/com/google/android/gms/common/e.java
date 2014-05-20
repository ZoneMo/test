package com.google.android.gms.common;

import [[B;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.util.Base64;
import android.util.Log;
import com.google.android.gms.d;
import com.google.android.gms.internal.dc;

public final class e
{
  private static final byte[][] Kh;
  private static final byte[][] Ki;
  private static final byte[][] Kj;
  private static final byte[][] Kk;
  private static final byte[][] Kl = arrayOfByte5;
  public static boolean Km = false;
  public static boolean Kn = false;
  static boolean Ko = false;

  static
  {
    byte[][] arrayOfByte1 = new byte[2][];
    arrayOfByte1[0] = Base64.decode("MIIEQzCCAyugAwIBAgIJAMLgh0ZkSjCNMA0GCSqGSIb3DQEBBAUAMHQxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpDYWxpZm9ybmlhMRYwFAYDVQQHEw1Nb3VudGFpbiBWaWV3MRQwEgYDVQQKEwtHb29nbGUgSW5jLjEQMA4GA1UECxMHQW5kcm9pZDEQMA4GA1UEAxMHQW5kcm9pZDAeFw0wODA4MjEyMzEzMzRaFw0zNjAxMDcyMzEzMzRaMHQxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpDYWxpZm9ybmlhMRYwFAYDVQQHEw1Nb3VudGFpbiBWaWV3MRQwEgYDVQQKEwtHb29nbGUgSW5jLjEQMA4GA1UECxMHQW5kcm9pZDEQMA4GA1UEAxMHQW5kcm9pZDCCASAwDQYJKoZIhvcNAQEBBQADggENADCCAQgCggEBAKtWLgDYO6IIrgqWbxJOKdoR8qtW0I9Y4sypEwPpt1TTcvZApxsdyxMJZ2JORland2qSGT2y5b+3JKkedxiLDmpHpDsz2WCbdxgxRczfey5YZnTJ4VZbH0xqWVW/8lGmPav5xVwnIiJS6HXk+BVKZF+JcWjAsb/GEuq/eFdpuzSqeYTcfi6idkyugwfYwXFU1+5fZKUaRKYCwkkFQVfcAs1fXA5V+++FGfvjJ/CxURaSxaBvGdGDhfXE28LWuT9ozCl5xw4Yq5OGazvV24mZVSoOO0yZ31j7kYvtwYK6NeADwbSxDdJEqO4k//0zOHKrUiGYXtqw/A0LFFtqoZKFjnkCAQOjgdkwgdYwHQYDVR0OBBYEFMd9jMIhF1Ylmn/Tgt9r45jk14alMIGmBgNVHSMEgZ4wgZuAFMd9jMIhF1Ylmn/Tgt9r45jk14aloXikdjB0MQswCQYDVQQGEwJVUzETMBEGA1UECBMKQ2FsaWZvcm5pYTEWMBQGA1UEBxMNTW91bnRhaW4gVmlldzEUMBIGA1UEChMLR29vZ2xlIEluYy4xEDAOBgNVBAsTB0FuZHJvaWQxEDAOBgNVBAMTB0FuZHJvaWSCCQDC4IdGZEowjTAMBgNVHRMEBTADAQH/MA0GCSqGSIb3DQEBBAUAA4IBAQBt0lLO74UwLDYKqs6Tm8/yzKkEu116FmH4rkaymUIE0P9KaMftGlMexFlaYjzmB2OxZyl6euNXEsQH8gjwyxCUKRJNexBiGcCEyj6z+a1fuHHvkiaai+KL8W1EyNmgjmyy8AW7P+LLlkR+ho5zEHatRbM/YAnqGcFh5iZBqpknHf1SKMXFh4dd239FJ1jWYfbMDMy3NS5CTMQ2XFI1MvcyUTdZPErjQfTbQe3aDQsQcafEQPD+nqActifKZ0Np0IS9L9kR/wbNvyz6ENwPiTrjV2KRkEjH78ZMcUQXg0L3BYHJ3lc69Vs5Ddf9uUGGMYldX3WfMBEmh/9iFBDAaTCK", 0);
    arrayOfByte1[1] = Base64.decode("MIIEqDCCA5CgAwIBAgIJANWFuGx90071MA0GCSqGSIb3DQEBBAUAMIGUMQswCQYDVQQGEwJVUzETMBEGA1UECBMKQ2FsaWZvcm5pYTEWMBQGA1UEBxMNTW91bnRhaW4gVmlldzEQMA4GA1UEChMHQW5kcm9pZDEQMA4GA1UECxMHQW5kcm9pZDEQMA4GA1UEAxMHQW5kcm9pZDEiMCAGCSqGSIb3DQEJARYTYW5kcm9pZEBhbmRyb2lkLmNvbTAeFw0wODA0MTUyMzM2NTZaFw0zNTA5MDEyMzM2NTZaMIGUMQswCQYDVQQGEwJVUzETMBEGA1UECBMKQ2FsaWZvcm5pYTEWMBQGA1UEBxMNTW91bnRhaW4gVmlldzEQMA4GA1UEChMHQW5kcm9pZDEQMA4GA1UECxMHQW5kcm9pZDEQMA4GA1UEAxMHQW5kcm9pZDEiMCAGCSqGSIb3DQEJARYTYW5kcm9pZEBhbmRyb2lkLmNvbTCCASAwDQYJKoZIhvcNAQEBBQADggENADCCAQgCggEBANbOLggKv+IxTdGNs8/TGFy0PTP6DHThvbbR24kT9ixcOd9W+EaBPWW+wPPKQmsHxajtWjmQwWfna8mZuSeJS48LIgAZlKkpFeVyxW0qMBujb8X8ETrWy550NaFtI6t9+u7hZeTfHwqNvacKhp1RbE6dBRGWynwMVX8XW8N1+UjFaq6GCJukT4qmpN2afb8sCjUigq0GuMwYXrFVee74bQgLHWGJwPmvmLHC69EH6kWr22ijx4OKXlSIx2xT1AsSHee70w5iDBiK4aph27yH3TxkXy9V89TDdexAcKk/cVHYNnDBapcavl7y0RiQ4biu8ymM8Ga/nmzhRKya6G0cGw8CAQOjgfwwgfkwHQYDVR0OBBYEFI0cxb6VTEM8YYY6FbBMvAPyT+CyMIHJBgNVHSMEgcEwgb6AFI0cxb6VTEM8YYY6FbBMvAPyT+CyoYGapIGXMIGUMQswCQYDVQQGEwJVUzETMBEGA1UECBMKQ2FsaWZvcm5pYTEWMBQGA1UEBxMNTW91bnRhaW4gVmlldzEQMA4GA1UEChMHQW5kcm9pZDEQMA4GA1UECxMHQW5kcm9pZDEQMA4GA1UEAxMHQW5kcm9pZDEiMCAGCSqGSIb3DQEJARYTYW5kcm9pZEBhbmRyb2lkLmNvbYIJANWFuGx90071MAwGA1UdEwQFMAMBAf8wDQYJKoZIhvcNAQEEBQADggEBABnTDPEF+3iSP0wNfdIjIz1AlnrPzgAIHVvXxunW7SBrDhEglQZBbKJEk5kT0mtKoOD1JMrSu1xuTKEBahWRbqHsXclaXjoBADb0kkjVEJu/Lh5hgYZnOjvlba8Ld7HCKePCVePoTJBdI4fvugnL8TsgK05aIskyY0hKI9L8KfqfGTl1lzOv2KoWD0KWwtAWPoGChZxmQ+nBli+gwYMzM1vAkP+aayLe0a1EQimlOalO762r0GXO0ks+UeXde2Z4e+8S/pf7pITEI/tP+MxJTALw9QUWEv9lKTk+jkbqxbsh8nfBUapfKqYn0eidpwq2AzVp3juYl7//fKnaPhJD9gs=", 0);
    Kh = arrayOfByte1;
    byte[][] arrayOfByte2 = new byte[2][];
    arrayOfByte2[0] = Base64.decode("MIICUjCCAbsCBEk0mH4wDQYJKoZIhvcNAQEEBQAwcDELMAkGA1UEBhMCVVMxCzAJBgNVBAgTAkNBMRYwFAYDVQQHEw1Nb3VudGFpbiBWaWV3MRQwEgYDVQQKEwtHb29nbGUsIEluYzEUMBIGA1UECxMLR29vZ2xlLCBJbmMxEDAOBgNVBAMTB1Vua25vd24wHhcNMDgxMjAyMDIwNzU4WhcNMzYwNDE5MDIwNzU4WjBwMQswCQYDVQQGEwJVUzELMAkGA1UECBMCQ0ExFjAUBgNVBAcTDU1vdW50YWluIFZpZXcxFDASBgNVBAoTC0dvb2dsZSwgSW5jMRQwEgYDVQQLEwtHb29nbGUsIEluYzEQMA4GA1UEAxMHVW5rbm93bjCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkCgYEAn0gDGZD5sUcmOE4EU9GPjAu/jcd7JQSksSB8TGxEurwArcZhD6a2qy2oDjPy7vFrJqP2uFua+sqQn/u+s/TJT36BIqeY4OunXO090in6c2X0FRZBWqnBYX3Vg84Zuuigu9iF/BeptL0mQIBRIarbk3fetAATOBQYiC7FIoL8WA0CAwEAATANBgkqhkiG9w0BAQQFAAOBgQBAhmae1jHaQ4Td0GHSJuBzuYzEuZ34teS+njy+l1Aeg98cb6lZwM5gXE/SrG0chM7eIEdsurGb6PIgOv93F61lLY/MiQcI0SFtqERXWSZJ4OnTxLtM9Y2hnbHU/EG8uVhPZOZfQQ0FKf1baIOMFB0Km9HbEZHLKg33kOoMsS2zpA==", 0);
    arrayOfByte2[1] = Base64.decode("MIIEqDCCA5CgAwIBAgIJAIR+T/LWtd6OMA0GCSqGSIb3DQEBBQUAMIGUMQswCQYDVQQGEwJVUzETMBEGA1UECBMKQ2FsaWZvcm5pYTEWMBQGA1UEBxMNTW91bnRhaW4gVmlldzEQMA4GA1UEChMHQW5kcm9pZDEQMA4GA1UECxMHQW5kcm9pZDEQMA4GA1UEAxMHQW5kcm9pZDEiMCAGCSqGSIb3DQEJARYTYW5kcm9pZEBhbmRyb2lkLmNvbTAeFw0xMDAxMjAwMTAxMzVaFw0zNzA2MDcwMTAxMzVaMIGUMQswCQYDVQQGEwJVUzETMBEGA1UECBMKQ2FsaWZvcm5pYTEWMBQGA1UEBxMNTW91bnRhaW4gVmlldzEQMA4GA1UEChMHQW5kcm9pZDEQMA4GA1UECxMHQW5kcm9pZDEQMA4GA1UEAxMHQW5kcm9pZDEiMCAGCSqGSIb3DQEJARYTYW5kcm9pZEBhbmRyb2lkLmNvbTCCASAwDQYJKoZIhvcNAQEBBQADggENADCCAQgCggEBANgocXw20RcP1E0Kew8HESboW7/fM7A0YABalMz7ZaXboLJD32Cxkb+dBt8dilwKM+LRY/UT3x0iU0HqPDN5IuhcAuw0ztlMuAcjpiP/S6/7tOXv5nc7PqK+uLyyAmfP54VRH4Mu+YerdZT+HinPvE0IOh8SUgB3c5byFltpewCjoME6zDCKk/IhY8FunD1KshSfNkxFwEMUMnA58doJYJPxs/wYtlYQlcYiX8cQK5h8bxOkXSTj4MVOhZ1n41tnCCcT0tbwV900V9GfxP6N3eyMOk8/lyMFGacKKDY0rDWBo0q9oX2EWgoJhfv4BgsDaid4YIFj+gw3uefyoQ52vHcCAQOjgfwwgfkwHQYDVR0OBBYEFLXH+RJveA06+8plc3M/9SJrmxc3MIHJBgNVHSMEgcEwgb6AFLXH+RJveA06+8plc3M/9SJrmxc3oYGapIGXMIGUMQswCQYDVQQGEwJVUzETMBEGA1UECBMKQ2FsaWZvcm5pYTEWMBQGA1UEBxMNTW91bnRhaW4gVmlldzEQMA4GA1UEChMHQW5kcm9pZDEQMA4GA1UECxMHQW5kcm9pZDEQMA4GA1UEAxMHQW5kcm9pZDEiMCAGCSqGSIb3DQEJARYTYW5kcm9pZEBhbmRyb2lkLmNvbYIJAIR+T/LWtd6OMAwGA1UdEwQFMAMBAf8wDQYJKoZIhvcNAQEFBQADggEBAEw+p2V9Jua71xEMjxnfH42hCX0zhg9p3r/K20ajfoflsw+7NHscdVW8uzyZVBSARpZfnHkqAtDb5aZHYbN5R6tr/7C6xqLBoM34Yvh3qWcN/W8GLkBuzhgGDGBJjfw2nycRcZjlb8uhUuYFjc6UzlkfxPSpmCszutgZbXdvVbfQGs8x3dcM7LeJeHYGZRD5SaVSSjExs8tlQc+LNUIOvMRSJVmWP0JmaQVyZmJPs5jP21IXiB0RHG4DRhb4USEY0KKmnRPXkvDNEdvVjiODWlSlSsJR59IsRGo/7hQSEOlER0tAYwe7JoQrT2vTVYIcc5ZR/6JgWwXiJJXXFdh6kfY=", 0);
    Ki = arrayOfByte2;
    byte[][] arrayOfByte3 = new byte[1][];
    arrayOfByte3[0] = Base64.decode("MIICpzCCAmWgAwIBAgIEUAV8QjALBgcqhkjOOAQDBQAwNzELMAkGA1UEBhMCVVMxEDAOBgNVBAoTB0FuZHJvaWQxFjAUBgNVBAMTDUFuZHJvaWQgRGVidWcwHhcNMTIwNzE3MTQ1MjUwWhcNMjIwNzE1MTQ1MjUwWjA3MQswCQYDVQQGEwJVUzEQMA4GA1UEChMHQW5kcm9pZDEWMBQGA1UEAxMNQW5kcm9pZCBEZWJ1ZzCCAbcwggEsBgcqhkjOOAQBMIIBHwKBgQD9f1OBHXUSKVLfSpwu7OTn9hG3UjzvRADDHj+AtlEmaUVdQCJR+1k9jVj6v8X1ujD2y5tVbNeBO4AdNG/yZmC3a5lQpaSfn+gEexAiwk+7qdf+t8Yb+DtX58aophUPBPuD9tPFHsMCNVQTWhaRMvZ1864rYdcq7/IiAxmd0UgBxwIVAJdgUI8VIwvMspK5gqLrhAvwWBz1AoGBAPfhoIXWmz3ey7yrXDa4V7l5lK+7+jrqgvlXTAs9B4JnUVlXjrrUWU/mcQcQgYC0SRZxI+hMKBYTt88JMozIpuE8FnqLVHyNKOCjrh4rs6Z1kW6jfwv6ITVi8ftiegEkO8yk8b6oUZCJqIPf4VrlnwaSi2ZegHtVJWQBTDv+z0kqA4GEAAKBgGrRG9fVZtJ69DnALkForP1FtL6FvJmMe5uOHHdUaT+MDUKKpPzhEISBOEJPpozRMFJO7/bxNzhjgi+mNymL/k1GoLhmZe7wQRc5AQNbHIBqoxgYDTA6qMyeWSPgam+r+nVoPEU7sgd3fPL958+xmxQwOBSqHfe0PVsiK1cGtIuUMAsGByqGSM44BAMFAAMvADAsAhQJ0tGwRwIptb7SkCZh0RLycMXmHQIUZ1ACBqeAULp4rscXTxYEf4Tqovc=", 0);
    Kj = arrayOfByte3;
    byte[][][] arrayOfByte = new byte[3][][];
    arrayOfByte[0] = Kh;
    arrayOfByte[1] = Ki;
    arrayOfByte[2] = Kj;
    int i = arrayOfByte.length;
    int j = 0;
    int k = 0;
    while (j < i)
    {
      k += arrayOfByte[j].length;
      j++;
    }
    byte[][] arrayOfByte4 = new byte[k][];
    int m = arrayOfByte.length;
    int n = 0;
    int i1 = 0;
    while (i1 < m)
    {
      [[B local[[B = arrayOfByte[i1];
      int i2 = n;
      int i3 = 0;
      while (i3 < local[[B.length)
      {
        int i4 = i2 + 1;
        arrayOfByte4[i2] = local[[B[i3];
        i3++;
        i2 = i4;
      }
      i1++;
      n = i2;
    }
    Kk = arrayOfByte4;
    byte[][] arrayOfByte5 = new byte[1][];
    arrayOfByte5[0] = Base64.decode("MIICXzCCAcigAwIBAgIESxmxnTANBgkqhkiG9w0BAQUFADB0MQswCQYDVQQGEwJVUzETMBEGA1UECBMKQ2FsaWZvcm5pYTEWMBQGA1UEBxMNTW91bnRhaW4gVmlldzEVMBMGA1UEChMMR29vZ2xlLCBJbmMuMRAwDgYDVQQLEwdVbmtub3duMQ8wDQYDVQQDEwZCYXphYXIwHhcNMDkxMjA1MDEwNDI5WhcNMzcwNDIyMDEwNDI5WjB0MQswCQYDVQQGEwJVUzETMBEGA1UECBMKQ2FsaWZvcm5pYTEWMBQGA1UEBxMNTW91bnRhaW4gVmlldzEVMBMGA1UEChMMR29vZ2xlLCBJbmMuMRAwDgYDVQQLEwdVbmtub3duMQ8wDQYDVQQDEwZCYXphYXIwgZ8wDQYJKoZIhvcNAQEBBQADgY0AMIGJAoGBAKkIiN6W4zU0dwndSyUeeimoRzdrLly6W1vVBD6DiAECmBkUlBP6M6rlRDsDU0rOSq1vUJcSSdmOdqOafkzM4dcbp74+dWdNtfEHWphzcAFGSKfOcDwtx4g0iQWSEq+cbFsoq9VPg2QRyDGin1APKALRbObRhW+GcKr8omVBg3s5AgMBAAEwDQYJKoZIhvcNAQEFBQADgYEASYTG80FHASNiOidP6eE3PXUxzA386adq5n/7cFtATL0bwRaMqxi7EcN4lb+082zBTOwdLMVRag7O1AdOtWiCiVBkAK/43MjvVAQSAv3v8f2C4PMjEHL9zN5KNovgxsP5uLOqDWg8Or/amre7iDLpvl42GbqS3TrMA2qttaYZr1A=", 0);
  }

  // ERROR //
  private static byte[] a(PackageInfo paramPackageInfo, byte[][] paramArrayOfByte)
  {
    // Byte code:
    //   0: ldc 63
    //   2: invokestatic 69	java/security/cert/CertificateFactory:getInstance	(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    //   5: astore_3
    //   6: aload_0
    //   7: getfield 75	android/content/pm/PackageInfo:signatures	[Landroid/content/pm/Signature;
    //   10: arraylength
    //   11: iconst_1
    //   12: if_icmpeq +8 -> 20
    //   15: aconst_null
    //   16: areturn
    //   17: astore_2
    //   18: aconst_null
    //   19: areturn
    //   20: new 77	java/io/ByteArrayInputStream
    //   23: dup
    //   24: aload_0
    //   25: getfield 75	android/content/pm/PackageInfo:signatures	[Landroid/content/pm/Signature;
    //   28: iconst_0
    //   29: aaload
    //   30: invokevirtual 83	android/content/pm/Signature:toByteArray	()[B
    //   33: invokespecial 87	java/io/ByteArrayInputStream:<init>	([B)V
    //   36: astore 4
    //   38: aload_3
    //   39: aload 4
    //   41: invokevirtual 91	java/security/cert/CertificateFactory:generateCertificate	(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    //   44: checkcast 93	java/security/cert/X509Certificate
    //   47: astore 6
    //   49: aload 6
    //   51: invokevirtual 96	java/security/cert/X509Certificate:checkValidity	()V
    //   54: aload_0
    //   55: getfield 75	android/content/pm/PackageInfo:signatures	[Landroid/content/pm/Signature;
    //   58: iconst_0
    //   59: aaload
    //   60: invokevirtual 83	android/content/pm/Signature:toByteArray	()[B
    //   63: astore 9
    //   65: iconst_0
    //   66: istore 10
    //   68: iload 10
    //   70: aload_1
    //   71: arraylength
    //   72: if_icmpge +40 -> 112
    //   75: aload_1
    //   76: iload 10
    //   78: aaload
    //   79: astore 12
    //   81: aload 12
    //   83: aload 9
    //   85: invokestatic 102	java/util/Arrays:equals	([B[B)Z
    //   88: ifeq +18 -> 106
    //   91: aload 12
    //   93: areturn
    //   94: astore 5
    //   96: aconst_null
    //   97: areturn
    //   98: astore 8
    //   100: aconst_null
    //   101: areturn
    //   102: astore 7
    //   104: aconst_null
    //   105: areturn
    //   106: iinc 10 1
    //   109: goto -41 -> 68
    //   112: ldc 104
    //   114: iconst_2
    //   115: invokestatic 110	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   118: ifeq +25 -> 143
    //   121: new 112	java/lang/StringBuilder
    //   124: dup
    //   125: ldc 114
    //   127: invokespecial 117	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   130: aload 9
    //   132: iconst_0
    //   133: invokestatic 121	android/util/Base64:encodeToString	([BI)Ljava/lang/String;
    //   136: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   139: invokevirtual 129	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   142: pop
    //   143: aconst_null
    //   144: areturn
    //
    // Exception table:
    //   from	to	target	type
    //   0	6	17	java/security/cert/CertificateException
    //   38	49	94	java/security/cert/CertificateException
    //   49	54	98	java/security/cert/CertificateExpiredException
    //   49	54	102	java/security/cert/CertificateNotYetValidException
  }

  public static Intent aU(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return null;
    case 1:
    case 2:
      return dc.ab("com.google.android.gms");
    case 3:
    }
    return dc.aa("com.google.android.gms");
  }

  public static int i(Context paramContext)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    try
    {
      paramContext.getResources().getString(d.JX);
      try
      {
        label16: PackageInfo localPackageInfo1 = localPackageManager.getPackageInfo("com.android.vending", 64);
        byte[] arrayOfByte = a(localPackageInfo1, Kh);
        if (arrayOfByte == null);
        while (true)
        {
          return 9;
          try
          {
            PackageInfo localPackageInfo2 = localPackageManager.getPackageInfo("com.google.android.gms", 64);
            if (a(localPackageInfo2, new byte[][] { arrayOfByte }) != null)
              if (localPackageInfo2.versionCode < 3225100)
              {
                new StringBuilder("Google Play services out of date.  Requires 3225100 but found ").append(localPackageInfo2.versionCode).toString();
                return 2;
              }
          }
          catch (PackageManager.NameNotFoundException localNameNotFoundException2)
          {
            return 1;
          }
        }
        try
        {
          ApplicationInfo localApplicationInfo = localPackageManager.getApplicationInfo("com.google.android.gms", 0);
          if (!localApplicationInfo.enabled)
            return 3;
        }
        catch (PackageManager.NameNotFoundException localNameNotFoundException3)
        {
          Log.wtf("GooglePlayServicesUtil", "Google Play services missing when getting application info.");
          return 1;
        }
        return 0;
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException1)
      {
        return 9;
      }
    }
    catch (Throwable localThrowable)
    {
      break label16;
    }
  }

  public static Context j(Context paramContext)
  {
    try
    {
      Context localContext = paramContext.createPackageContext("com.google.android.gms", 3);
      return localContext;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
    }
    return null;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.e
 * JD-Core Version:    0.6.2
 */