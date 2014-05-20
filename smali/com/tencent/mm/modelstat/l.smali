.class public final Lcom/tencent/mm/modelstat/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/network/a/a;


# static fields
.field private static czA:I

.field private static czB:I

.field private static czW:I

.field static final czt:Ljava/lang/String;


# instance fields
.field private czC:Lcom/tencent/mm/sdk/platformtools/an;

.field private czD:Lcom/tencent/mm/sdk/platformtools/ay;

.field czE:Ljava/util/Queue;

.field private czF:I

.field private czG:Z

.field private czH:Lcom/tencent/mm/protocal/a/vv;

.field private czI:J

.field private czJ:J

.field private czK:J

.field private czL:J

.field private czM:J

.field private czN:Lcom/tencent/mm/protocal/a/vv;

.field private czO:Lcom/tencent/mm/protocal/a/vv;

.field private czP:Z

.field private czQ:J

.field private czR:I

.field private czS:I

.field private czT:I

.field private czU:I

.field private czV:I

.field private czu:Lcom/tencent/mm/modelstat/q;

.field private czv:Ljava/io/RandomAccessFile;

.field private czw:J

.field private czx:Ljava/lang/String;

.field private czy:Landroid/net/wifi/WifiManager;

.field private czz:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    sget-object v0, Lcom/tencent/mm/storage/h;->ggy:Ljava/lang/String;

    sput-object v0, Lcom/tencent/mm/modelstat/l;->czt:Ljava/lang/String;

    .line 65
    sput v1, Lcom/tencent/mm/modelstat/l;->czA:I

    .line 66
    sput v1, Lcom/tencent/mm/modelstat/l;->czB:I

    .line 712
    const v0, -0xeeef

    sput v0, Lcom/tencent/mm/modelstat/l;->czW:I

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v2, Lcom/tencent/mm/modelstat/q;

    invoke-direct {v2}, Lcom/tencent/mm/modelstat/q;-><init>()V

    iput-object v2, p0, Lcom/tencent/mm/modelstat/l;->czu:Lcom/tencent/mm/modelstat/q;

    .line 57
    iput-object v5, p0, Lcom/tencent/mm/modelstat/l;->czv:Ljava/io/RandomAccessFile;

    .line 60
    iput-wide v6, p0, Lcom/tencent/mm/modelstat/l;->czw:J

    .line 61
    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/mm/modelstat/l;->czx:Ljava/lang/String;

    .line 63
    iput-object v5, p0, Lcom/tencent/mm/modelstat/l;->czy:Landroid/net/wifi/WifiManager;

    .line 64
    iput-object v5, p0, Lcom/tencent/mm/modelstat/l;->czz:Landroid/telephony/TelephonyManager;

    .line 68
    new-instance v2, Lcom/tencent/mm/sdk/platformtools/an;

    invoke-direct {v2}, Lcom/tencent/mm/sdk/platformtools/an;-><init>()V

    iput-object v2, p0, Lcom/tencent/mm/modelstat/l;->czC:Lcom/tencent/mm/sdk/platformtools/an;

    .line 70
    new-instance v2, Lcom/tencent/mm/sdk/platformtools/ay;

    iget-object v3, p0, Lcom/tencent/mm/modelstat/l;->czC:Lcom/tencent/mm/sdk/platformtools/an;

    invoke-virtual {v3}, Lcom/tencent/mm/sdk/platformtools/an;->getLooper()Landroid/os/Looper;

    move-result-object v3

    new-instance v4, Lcom/tencent/mm/modelstat/m;

    invoke-direct {v4, p0}, Lcom/tencent/mm/modelstat/m;-><init>(Lcom/tencent/mm/modelstat/l;)V

    invoke-direct {v2, v3, v4, v0}, Lcom/tencent/mm/sdk/platformtools/ay;-><init>(Landroid/os/Looper;Lcom/tencent/mm/sdk/platformtools/az;Z)V

    iput-object v2, p0, Lcom/tencent/mm/modelstat/l;->czD:Lcom/tencent/mm/sdk/platformtools/ay;

    .line 185
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/tencent/mm/modelstat/l;->czE:Ljava/util/Queue;

    .line 211
    iput v1, p0, Lcom/tencent/mm/modelstat/l;->czF:I

    .line 212
    iput-boolean v1, p0, Lcom/tencent/mm/modelstat/l;->czG:Z

    .line 213
    iput-object v5, p0, Lcom/tencent/mm/modelstat/l;->czH:Lcom/tencent/mm/protocal/a/vv;

    .line 215
    iput-wide v6, p0, Lcom/tencent/mm/modelstat/l;->czI:J

    .line 216
    iput-wide v6, p0, Lcom/tencent/mm/modelstat/l;->czJ:J

    .line 217
    iput-wide v6, p0, Lcom/tencent/mm/modelstat/l;->czK:J

    .line 218
    iput-wide v6, p0, Lcom/tencent/mm/modelstat/l;->czL:J

    .line 219
    iput-wide v6, p0, Lcom/tencent/mm/modelstat/l;->czM:J

    .line 221
    iput-object v5, p0, Lcom/tencent/mm/modelstat/l;->czN:Lcom/tencent/mm/protocal/a/vv;

    .line 222
    iput-object v5, p0, Lcom/tencent/mm/modelstat/l;->czO:Lcom/tencent/mm/protocal/a/vv;

    .line 223
    iput-boolean v1, p0, Lcom/tencent/mm/modelstat/l;->czP:Z

    .line 224
    iput-wide v6, p0, Lcom/tencent/mm/modelstat/l;->czQ:J

    .line 225
    iput v1, p0, Lcom/tencent/mm/modelstat/l;->czR:I

    .line 226
    iput v1, p0, Lcom/tencent/mm/modelstat/l;->czS:I

    .line 227
    iput v1, p0, Lcom/tencent/mm/modelstat/l;->czT:I

    .line 228
    iput v1, p0, Lcom/tencent/mm/modelstat/l;->czU:I

    .line 229
    iput v1, p0, Lcom/tencent/mm/modelstat/l;->czV:I

    .line 113
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/tencent/mm/modelstat/l;->czt:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 115
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/modelstat/l;->Da()V

    .line 121
    iget-object v2, p0, Lcom/tencent/mm/modelstat/l;->czx:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 124
    :goto_0
    invoke-direct {p0, v0}, Lcom/tencent/mm/modelstat/l;->Y(Z)V

    .line 125
    const/16 v0, 0x2711

    const-string v2, ""

    invoke-virtual {p0, v0, v2, v5}, Lcom/tencent/mm/modelstat/l;->a(ILjava/lang/String;Ljava/lang/Object;)V

    .line 127
    iget-object v0, p0, Lcom/tencent/mm/modelstat/l;->czD:Lcom/tencent/mm/sdk/platformtools/ay;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/sdk/platformtools/ay;->bO(J)V

    .line 129
    invoke-static {}, Lcom/tencent/mm/network/bk;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 130
    invoke-static {}, Lcom/tencent/mm/network/bk;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/tencent/mm/modelstat/l;->czy:Landroid/net/wifi/WifiManager;

    .line 131
    invoke-static {}, Lcom/tencent/mm/network/bk;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/tencent/mm/modelstat/l;->czz:Landroid/telephony/TelephonyManager;

    .line 132
    iget-object v0, p0, Lcom/tencent/mm/modelstat/l;->czz:Landroid/telephony/TelephonyManager;

    new-instance v2, Lcom/tencent/mm/modelstat/p;

    invoke-direct {v2, v1}, Lcom/tencent/mm/modelstat/p;-><init>(B)V

    const/16 v1, 0x100

    invoke-virtual {v0, v2, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 134
    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private Db()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/tencent/mm/modelstat/l;->czv:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    .line 183
    :goto_0
    return-void

    .line 178
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/modelstat/l;->czv:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/modelstat/l;->czv:Ljava/io/RandomAccessFile;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private Dc()V
    .locals 3

    .prologue
    .line 188
    iget-object v0, p0, Lcom/tencent/mm/modelstat/l;->czv:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    .line 189
    const-string v0, "MicroMsg.NetStatWatchDog"

    const-string v1, "file operator closed at commitFile"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/mm/modelstat/l;->Y(Z)V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelstat/l;->czu:Lcom/tencent/mm/modelstat/q;

    iget-object v1, p0, Lcom/tencent/mm/modelstat/l;->czv:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelstat/q;->b(Ljava/io/RandomAccessFile;)I

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/modelstat/l;->czv:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/tencent/mm/modelstat/l;->czv:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 196
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/modelstat/l;->czE:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 197
    iget-object v0, p0, Lcom/tencent/mm/modelstat/l;->czE:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 198
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->A([B)Z

    move-result v1

    if-nez v1, :cond_1

    .line 199
    iget-object v1, p0, Lcom/tencent/mm/modelstat/l;->czv:Ljava/io/RandomAccessFile;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 203
    iget-object v1, p0, Lcom/tencent/mm/modelstat/l;->czv:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    goto :goto_0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    :goto_1
    return-void

    .line 205
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/modelstat/l;->czv:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method static synthetic Dd()Lcom/tencent/mm/protocal/a/vv;
    .locals 3

    .prologue
    .line 42
    new-instance v0, Lcom/tencent/mm/protocal/a/vv;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/vv;-><init>()V

    sget v1, Lcom/tencent/mm/modelstat/l;->czW:I

    iput v1, v0, Lcom/tencent/mm/protocal/a/vv;->fWu:I

    sget v1, Lcom/tencent/mm/modelstat/l;->czW:I

    iput v1, v0, Lcom/tencent/mm/protocal/a/vv;->fWv:I

    sget v1, Lcom/tencent/mm/modelstat/l;->czW:I

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/tencent/mm/protocal/a/vv;->fWH:J

    sget v1, Lcom/tencent/mm/modelstat/l;->czW:I

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/tencent/mm/protocal/a/vv;->fWG:J

    sget v1, Lcom/tencent/mm/modelstat/l;->czW:I

    iput v1, v0, Lcom/tencent/mm/protocal/a/vv;->fAC:I

    sget v1, Lcom/tencent/mm/modelstat/l;->czW:I

    iput v1, v0, Lcom/tencent/mm/protocal/a/vv;->fWw:I

    sget v1, Lcom/tencent/mm/modelstat/l;->czW:I

    iput v1, v0, Lcom/tencent/mm/protocal/a/vv;->fWx:I

    sget v1, Lcom/tencent/mm/modelstat/l;->czW:I

    iput v1, v0, Lcom/tencent/mm/protocal/a/vv;->fWy:I

    sget v1, Lcom/tencent/mm/modelstat/l;->czW:I

    iput v1, v0, Lcom/tencent/mm/protocal/a/vv;->fUN:I

    sget v1, Lcom/tencent/mm/modelstat/l;->czW:I

    iput v1, v0, Lcom/tencent/mm/protocal/a/vv;->fWM:I

    const-string v1, ""

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/vv;->fWN:Ljava/lang/String;

    sget v1, Lcom/tencent/mm/modelstat/l;->czW:I

    iput v1, v0, Lcom/tencent/mm/protocal/a/vv;->fWz:I

    sget v1, Lcom/tencent/mm/modelstat/l;->czW:I

    iput v1, v0, Lcom/tencent/mm/protocal/a/vv;->fWA:I

    sget v1, Lcom/tencent/mm/modelstat/l;->czW:I

    iput v1, v0, Lcom/tencent/mm/protocal/a/vv;->fWB:I

    sget v1, Lcom/tencent/mm/modelstat/l;->czW:I

    iput v1, v0, Lcom/tencent/mm/protocal/a/vv;->fWC:I

    sget v1, Lcom/tencent/mm/modelstat/l;->czW:I

    iput v1, v0, Lcom/tencent/mm/protocal/a/vv;->fWD:I

    sget v1, Lcom/tencent/mm/modelstat/l;->czW:I

    iput v1, v0, Lcom/tencent/mm/protocal/a/vv;->fWE:I

    sget v1, Lcom/tencent/mm/modelstat/l;->czW:I

    iput v1, v0, Lcom/tencent/mm/protocal/a/vv;->fWJ:I

    sget v1, Lcom/tencent/mm/modelstat/l;->czW:I

    iput v1, v0, Lcom/tencent/mm/protocal/a/vv;->fWK:I

    sget v1, Lcom/tencent/mm/modelstat/l;->czW:I

    iput v1, v0, Lcom/tencent/mm/protocal/a/vv;->fWF:I

    sget v1, Lcom/tencent/mm/modelstat/l;->czW:I

    iput v1, v0, Lcom/tencent/mm/protocal/a/vv;->fWo:I

    sget v1, Lcom/tencent/mm/modelstat/l;->czW:I

    iput v1, v0, Lcom/tencent/mm/protocal/a/vv;->fWI:I

    sget v1, Lcom/tencent/mm/modelstat/l;->czW:I

    iput v1, v0, Lcom/tencent/mm/protocal/a/vv;->fWt:I

    sget v1, Lcom/tencent/mm/modelstat/l;->czW:I

    iput v1, v0, Lcom/tencent/mm/protocal/a/vv;->fDy:I

    sget v1, Lcom/tencent/mm/modelstat/l;->czW:I

    iput v1, v0, Lcom/tencent/mm/protocal/a/vv;->fWL:I

    sget v1, Lcom/tencent/mm/modelstat/l;->czW:I

    iput v1, v0, Lcom/tencent/mm/protocal/a/vv;->fWO:I

    const-string v1, ""

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/vv;->fWP:Ljava/lang/String;

    sget v1, Lcom/tencent/mm/modelstat/l;->czW:I

    iput v1, v0, Lcom/tencent/mm/protocal/a/vv;->fWQ:I

    sget v1, Lcom/tencent/mm/modelstat/l;->czW:I

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/tencent/mm/protocal/a/vv;->fWR:J

    sget v1, Lcom/tencent/mm/modelstat/l;->czW:I

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/tencent/mm/protocal/a/vv;->fWS:J

    sget v1, Lcom/tencent/mm/modelstat/l;->czW:I

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/tencent/mm/protocal/a/vv;->fWT:J

    const/4 v1, 0x0

    iput v1, v0, Lcom/tencent/mm/protocal/a/vv;->fWU:I

    return-object v0
.end method

.method private Y(Z)V
    .locals 6
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 147
    if-eqz p1, :cond_0

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FD()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelstat/l;->czx:Ljava/lang/String;

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tencent/mm/modelstat/l;->czt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "wd.ini"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LastFile"

    iget-object v2, p0, Lcom/tencent/mm/modelstat/l;->czx:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/platformtools/i;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 152
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/tencent/mm/modelstat/l;->czx:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/modelstat/l;->gx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/modelstat/l;->czv:Ljava/io/RandomAccessFile;

    .line 153
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/modelstat/l;->czv:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    .line 154
    const-string v0, "MicroMsg.NetStatWatchDog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "already exist , clean up file:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/modelstat/l;->czx:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/tencent/mm/modelstat/l;->czv:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 160
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/modelstat/l;->czv:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_4

    .line 161
    iget-object v0, p0, Lcom/tencent/mm/modelstat/l;->czu:Lcom/tencent/mm/modelstat/q;

    iget-object v1, p0, Lcom/tencent/mm/modelstat/l;->czv:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelstat/q;->a(Ljava/io/RandomAccessFile;)I

    .line 171
    :cond_2
    :goto_1
    return-void

    .line 156
    :cond_3
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/modelstat/l;->czv:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v2, 0xa0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 157
    const-string v0, "MicroMsg.NetStatWatchDog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "length error , clean up file:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/modelstat/l;->czx:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/tencent/mm/modelstat/l;->czv:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/tencent/mm/modelstat/l;->czv:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_2

    .line 168
    invoke-direct {p0}, Lcom/tencent/mm/modelstat/l;->Db()V

    goto :goto_1

    .line 163
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/tencent/mm/modelstat/l;->czu:Lcom/tencent/mm/modelstat/q;

    iget-object v1, p0, Lcom/tencent/mm/modelstat/l;->czv:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelstat/q;->b(Ljava/io/RandomAccessFile;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private a(ILcom/tencent/mm/protocal/a/vv;Ljava/lang/Object;)I
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 236
    sparse-switch p1, :sswitch_data_0

    .line 708
    const-string v0, "MicroMsg.NetStatWatchDog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "report: IGNORE stat:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 238
    :sswitch_0
    const-string v0, "MicroMsg.NetStatWatchDog"

    const-string v1, "dkdog net change connected"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/modelstat/l;->czG:Z

    .line 240
    const/4 v0, 0x0

    goto :goto_0

    .line 243
    :sswitch_1
    check-cast p3, Ljava/lang/Integer;

    invoke-static {p3}, Lcom/tencent/mm/sdk/platformtools/cj;->c(Ljava/lang/Integer;)I

    move-result v0

    .line 244
    const-string v1, "MicroMsg.NetStatWatchDog"

    const-string v2, "dkdog received:%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    iget-object v1, p0, Lcom/tencent/mm/modelstat/l;->czu:Lcom/tencent/mm/modelstat/q;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/modelstat/q;->M(II)V

    .line 246
    const/4 v0, 0x0

    goto :goto_0

    .line 249
    :sswitch_2
    check-cast p3, Ljava/lang/Integer;

    invoke-static {p3}, Lcom/tencent/mm/sdk/platformtools/cj;->c(Ljava/lang/Integer;)I

    move-result v0

    .line 250
    const-string v1, "MicroMsg.NetStatWatchDog"

    const-string v2, "dkdog send:%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    iget-object v1, p0, Lcom/tencent/mm/modelstat/l;->czu:Lcom/tencent/mm/modelstat/q;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/modelstat/q;->M(II)V

    .line 252
    const/4 v0, 0x0

    goto :goto_0

    .line 255
    :sswitch_3
    iget-object v0, p0, Lcom/tencent/mm/modelstat/l;->czu:Lcom/tencent/mm/modelstat/q;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelstat/q;->er(I)V

    .line 256
    iget-wide v0, p0, Lcom/tencent/mm/modelstat/l;->czK:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/mm/modelstat/l;->czK:J

    .line 257
    const/4 v0, 0x0

    goto :goto_0

    .line 260
    :sswitch_4
    iget-object v0, p0, Lcom/tencent/mm/modelstat/l;->czu:Lcom/tencent/mm/modelstat/q;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelstat/q;->er(I)V

    .line 261
    iget-wide v0, p0, Lcom/tencent/mm/modelstat/l;->czL:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/mm/modelstat/l;->czL:J

    .line 262
    const/4 v0, 0x0

    goto :goto_0

    .line 265
    :sswitch_5
    const-string v0, "MicroMsg.NetStatWatchDog"

    const-string v1, "dkdog push start"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FD()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/modelstat/l;->czI:J

    .line 267
    const/16 v0, 0x2711

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWu:I

    .line 268
    iget-wide v0, p0, Lcom/tencent/mm/modelstat/l;->czI:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWv:I

    .line 269
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWT:J

    .line 270
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 273
    :sswitch_6
    iget-wide v3, p0, Lcom/tencent/mm/modelstat/l;->czI:J

    .line 274
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/modelstat/l;->czI:J

    .line 275
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FD()J

    move-result-wide v5

    .line 276
    const/16 v0, 0x2712

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWu:I

    .line 277
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWT:J

    .line 278
    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    move-object v7, p2

    invoke-static/range {v0 .. v7}, Lcom/tencent/mm/modelstat/l;->a(ZJJJLcom/tencent/mm/protocal/a/vv;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 281
    :cond_0
    const-string v0, "MicroMsg.NetStatWatchDog"

    const-string v1, "dkdog push stop alive:%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p2, Lcom/tencent/mm/protocal/a/vv;->fWC:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    invoke-direct {p0}, Lcom/tencent/mm/modelstat/l;->Dc()V

    .line 283
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 286
    :sswitch_7
    const-string v0, "MicroMsg.NetStatWatchDog"

    const-string v1, "dkdog worker start"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FD()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/modelstat/l;->czJ:J

    .line 288
    const/16 v0, 0x2713

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWu:I

    .line 289
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWT:J

    .line 290
    iget-wide v0, p0, Lcom/tencent/mm/modelstat/l;->czJ:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWv:I

    .line 291
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 294
    :sswitch_8
    iget-wide v3, p0, Lcom/tencent/mm/modelstat/l;->czJ:J

    .line 295
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/modelstat/l;->czJ:J

    .line 296
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FD()J

    move-result-wide v5

    .line 297
    const/16 v0, 0x2714

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWu:I

    .line 298
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWT:J

    .line 299
    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    move-object v7, p2

    invoke-static/range {v0 .. v7}, Lcom/tencent/mm/modelstat/l;->a(ZJJJLcom/tencent/mm/protocal/a/vv;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 300
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 302
    :cond_1
    const-string v0, "MicroMsg.NetStatWatchDog"

    const-string v1, "dkdog worker start alive:%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p2, Lcom/tencent/mm/protocal/a/vv;->fWC:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    invoke-direct {p0}, Lcom/tencent/mm/modelstat/l;->Dc()V

    .line 304
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 308
    :sswitch_9
    check-cast p3, Lcom/tencent/mm/network/a/b;

    .line 309
    if-nez p3, :cond_2

    .line 310
    const-string v0, "MicroMsg.NetStatWatchDog"

    const-string v1, "report cgi info null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 313
    :cond_2
    iget-object v0, p3, Lcom/tencent/mm/network/a/b;->cFK:Lcom/tencent/mm/network/a/f;

    if-nez v0, :cond_3

    .line 314
    const-string v0, "MicroMsg.NetStatWatchDog"

    const-string v1, "report cgi info addrs null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 317
    :cond_3
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWT:J

    .line 318
    iget-wide v0, p3, Lcom/tencent/mm/network/a/b;->cFJ:J

    const-wide/16 v2, 0x26

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 319
    iget-wide v0, p0, Lcom/tencent/mm/modelstat/l;->czM:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/mm/modelstat/l;->czM:J

    .line 320
    iget-object v0, p0, Lcom/tencent/mm/modelstat/l;->czu:Lcom/tencent/mm/modelstat/q;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelstat/q;->er(I)V

    .line 321
    iget v0, p3, Lcom/tencent/mm/network/a/b;->bLI:I

    if-eqz v0, :cond_4

    .line 322
    iget-object v0, p0, Lcom/tencent/mm/modelstat/l;->czu:Lcom/tencent/mm/modelstat/q;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelstat/q;->er(I)V

    .line 325
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/modelstat/l;->czu:Lcom/tencent/mm/modelstat/q;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelstat/q;->er(I)V

    .line 326
    iget v0, p3, Lcom/tencent/mm/network/a/b;->bLI:I

    if-eqz v0, :cond_5

    .line 327
    iget-object v0, p0, Lcom/tencent/mm/modelstat/l;->czu:Lcom/tencent/mm/modelstat/q;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelstat/q;->er(I)V

    .line 330
    :cond_5
    iget-wide v0, p3, Lcom/tencent/mm/network/a/b;->cFJ:J

    long-to-int v0, v0

    invoke-static {v0}, Lcom/tencent/mm/protocal/bj;->get(I)I

    move-result v8

    .line 331
    const/16 v0, 0xfa

    if-ne v8, v0, :cond_6

    .line 332
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 335
    :cond_6
    const/4 v0, 0x0

    iget-wide v1, p3, Lcom/tencent/mm/network/a/b;->cyG:J

    iget-wide v3, p3, Lcom/tencent/mm/network/a/b;->cyD:J

    iget-wide v5, p3, Lcom/tencent/mm/network/a/b;->endTime:J

    move-object v7, p2

    invoke-static/range {v0 .. v7}, Lcom/tencent/mm/modelstat/l;->a(ZJJJLcom/tencent/mm/protocal/a/vv;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 336
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 338
    :cond_7
    iget v0, p3, Lcom/tencent/mm/network/a/b;->bLI:I

    .line 339
    if-nez v0, :cond_8

    iget v1, p3, Lcom/tencent/mm/network/a/b;->bLJ:I

    if-eqz v1, :cond_8

    .line 340
    const/4 v0, 0x4

    .line 341
    :cond_8
    const-string v1, "MicroMsg.NetStatWatchDog"

    const-string v2, "dkdog FUNC:%d [%d,%d] [%s] sock:%b cost:%d tx:%d rx:%d net:%d retry:%d"

    const/16 v3, 0xa

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x2

    iget v4, p3, Lcom/tencent/mm/network/a/b;->bLJ:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x3

    iget-object v4, p3, Lcom/tencent/mm/network/a/b;->cFK:Lcom/tencent/mm/network/a/f;

    aput-object v4, v3, v0

    const/4 v0, 0x4

    iget-boolean v4, p3, Lcom/tencent/mm/network/a/b;->cFL:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x5

    iget-wide v4, p3, Lcom/tencent/mm/network/a/b;->cyG:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x6

    iget-wide v4, p3, Lcom/tencent/mm/network/a/b;->cFN:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x7

    iget-wide v4, p3, Lcom/tencent/mm/network/a/b;->cFO:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0x8

    iget v4, p3, Lcom/tencent/mm/network/a/b;->cFM:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0x9

    iget v4, p3, Lcom/tencent/mm/network/a/b;->cFR:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 342
    iget-wide v0, p3, Lcom/tencent/mm/network/a/b;->cFX:J

    long-to-int v0, v0

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWC:I

    .line 343
    iput v8, p2, Lcom/tencent/mm/protocal/a/vv;->fWA:I

    .line 344
    const/16 v0, 0x44e

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWu:I

    .line 345
    iget v0, p3, Lcom/tencent/mm/network/a/b;->cFM:I

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fUN:I

    .line 346
    invoke-static {}, Lcom/tencent/mm/network/bk;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/ba;->bm(Landroid/content/Context;)I

    move-result v0

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWM:I

    .line 347
    invoke-static {}, Lcom/tencent/mm/network/bk;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/ba;->bn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWN:Ljava/lang/String;

    .line 348
    iget-object v0, p3, Lcom/tencent/mm/network/a/b;->cFK:Lcom/tencent/mm/network/a/f;

    invoke-static {v0}, Lcom/tencent/mm/network/a/f;->a(Lcom/tencent/mm/network/a/f;)I

    move-result v0

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWw:I

    .line 349
    iget-object v0, p3, Lcom/tencent/mm/network/a/b;->cFK:Lcom/tencent/mm/network/a/f;

    invoke-virtual {v0}, Lcom/tencent/mm/network/a/f;->type()I

    move-result v0

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWy:I

    .line 350
    iget-object v0, p3, Lcom/tencent/mm/network/a/b;->cFK:Lcom/tencent/mm/network/a/f;

    invoke-virtual {v0}, Lcom/tencent/mm/network/a/f;->Fn()I

    move-result v0

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWx:I

    .line 351
    iget v0, p3, Lcom/tencent/mm/network/a/b;->cFR:I

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWO:I

    .line 352
    iget-boolean v0, p3, Lcom/tencent/mm/network/a/b;->cFL:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_1
    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWK:I

    .line 353
    iget-object v0, p3, Lcom/tencent/mm/network/a/b;->cFK:Lcom/tencent/mm/network/a/f;

    if-eqz v0, :cond_9

    .line 354
    iget-object v0, p3, Lcom/tencent/mm/network/a/b;->cFK:Lcom/tencent/mm/network/a/f;

    invoke-virtual {v0}, Lcom/tencent/mm/network/a/f;->type()I

    move-result v0

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWJ:I

    .line 356
    :cond_9
    iget v0, p3, Lcom/tencent/mm/network/a/b;->bLI:I

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWz:I

    .line 357
    iget-wide v0, p3, Lcom/tencent/mm/network/a/b;->cFN:J

    long-to-int v0, v0

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWD:I

    .line 358
    iget-wide v0, p3, Lcom/tencent/mm/network/a/b;->cFO:J

    long-to-int v0, v0

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWE:I

    .line 359
    iget v0, p3, Lcom/tencent/mm/network/a/b;->bLJ:I

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fDy:I

    .line 360
    iget-wide v0, p3, Lcom/tencent/mm/network/a/b;->cFW:J

    long-to-int v0, v0

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWL:I

    .line 361
    iget-object v0, p3, Lcom/tencent/mm/network/a/b;->cFY:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelstat/l;->gy(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWU:I

    .line 362
    iget-wide v0, p3, Lcom/tencent/mm/network/a/b;->cFZ:J

    long-to-int v0, v0

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWV:I

    .line 364
    const/16 v0, 0x6e

    if-ne v8, v0, :cond_d

    .line 365
    iput-object p2, p0, Lcom/tencent/mm/modelstat/l;->czN:Lcom/tencent/mm/protocal/a/vv;

    .line 369
    :cond_a
    :goto_2
    iget-boolean v0, p0, Lcom/tencent/mm/modelstat/l;->czP:Z

    if-eqz v0, :cond_b

    const/16 v0, 0x17c

    if-ne v0, v8, :cond_b

    .line 371
    iget v0, p0, Lcom/tencent/mm/modelstat/l;->czS:I

    int-to-long v0, v0

    iput-wide v0, p3, Lcom/tencent/mm/network/a/b;->cFT:J

    .line 372
    iget v0, p0, Lcom/tencent/mm/modelstat/l;->czR:I

    int-to-long v0, v0

    iput-wide v0, p3, Lcom/tencent/mm/network/a/b;->cFU:J

    .line 373
    iget v0, p0, Lcom/tencent/mm/modelstat/l;->czU:I

    int-to-long v0, v0

    iput-wide v0, p3, Lcom/tencent/mm/network/a/b;->cFV:J

    .line 374
    iget v0, p0, Lcom/tencent/mm/modelstat/l;->czT:I

    int-to-long v0, v0

    iput-wide v0, p3, Lcom/tencent/mm/network/a/b;->cFX:J

    .line 375
    iget v0, p0, Lcom/tencent/mm/modelstat/l;->czV:I

    int-to-long v0, v0

    iput-wide v0, p3, Lcom/tencent/mm/network/a/b;->cFZ:J

    .line 376
    const/16 v0, 0x2990

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3}, Lcom/tencent/mm/modelstat/l;->a(ILjava/lang/String;Ljava/lang/Object;)V

    .line 377
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/modelstat/l;->czP:Z

    .line 378
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/modelstat/l;->czV:I

    iput v0, p0, Lcom/tencent/mm/modelstat/l;->czU:I

    iput v0, p0, Lcom/tencent/mm/modelstat/l;->czT:I

    iput v0, p0, Lcom/tencent/mm/modelstat/l;->czS:I

    iput v0, p0, Lcom/tencent/mm/modelstat/l;->czR:I

    .line 381
    :cond_b
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 352
    :cond_c
    const/4 v0, 0x0

    goto :goto_1

    .line 366
    :cond_d
    const/16 v0, 0x6d

    if-ne v8, v0, :cond_a

    .line 367
    iput-object p2, p0, Lcom/tencent/mm/modelstat/l;->czO:Lcom/tencent/mm/protocal/a/vv;

    goto :goto_2

    .line 384
    :sswitch_a
    check-cast p3, Lcom/tencent/mm/network/a/b;

    .line 385
    if-nez p3, :cond_e

    .line 386
    const-string v0, "MicroMsg.NetStatWatchDog"

    const-string v1, "report cgi info null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 389
    :cond_e
    iget-object v0, p3, Lcom/tencent/mm/network/a/b;->cFK:Lcom/tencent/mm/network/a/f;

    if-nez v0, :cond_f

    .line 390
    const-string v0, "MicroMsg.NetStatWatchDog"

    const-string v1, "report cgi info addrs null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 393
    :cond_f
    iget-wide v0, p3, Lcom/tencent/mm/network/a/b;->cFJ:J

    long-to-int v0, v0

    invoke-static {v0}, Lcom/tencent/mm/protocal/bj;->get(I)I

    move-result v8

    .line 394
    const/4 v0, 0x0

    iget-wide v1, p3, Lcom/tencent/mm/network/a/b;->cyG:J

    iget-wide v3, p3, Lcom/tencent/mm/network/a/b;->cyD:J

    iget-wide v5, p3, Lcom/tencent/mm/network/a/b;->endTime:J

    move-object v7, p2

    invoke-static/range {v0 .. v7}, Lcom/tencent/mm/modelstat/l;->a(ZJJJLcom/tencent/mm/protocal/a/vv;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 395
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 397
    :cond_10
    iget-wide v0, p3, Lcom/tencent/mm/network/a/b;->cFX:J

    long-to-int v0, v0

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWC:I

    .line 398
    iput v8, p2, Lcom/tencent/mm/protocal/a/vv;->fWA:I

    .line 399
    const/16 v0, 0x2990

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWu:I

    .line 400
    iget v0, p3, Lcom/tencent/mm/network/a/b;->cFM:I

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fUN:I

    .line 401
    invoke-static {}, Lcom/tencent/mm/network/bk;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/ba;->bm(Landroid/content/Context;)I

    move-result v0

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWM:I

    .line 402
    invoke-static {}, Lcom/tencent/mm/network/bk;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/ba;->bn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWN:Ljava/lang/String;

    .line 403
    iget-object v0, p3, Lcom/tencent/mm/network/a/b;->cFK:Lcom/tencent/mm/network/a/f;

    invoke-static {v0}, Lcom/tencent/mm/network/a/f;->a(Lcom/tencent/mm/network/a/f;)I

    move-result v0

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWw:I

    .line 404
    iget-object v0, p3, Lcom/tencent/mm/network/a/b;->cFK:Lcom/tencent/mm/network/a/f;

    invoke-virtual {v0}, Lcom/tencent/mm/network/a/f;->Fn()I

    move-result v0

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWx:I

    .line 405
    iget v0, p3, Lcom/tencent/mm/network/a/b;->cFR:I

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWO:I

    .line 406
    iget-boolean v0, p3, Lcom/tencent/mm/network/a/b;->cFL:Z

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_3
    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWK:I

    .line 407
    iget-object v0, p3, Lcom/tencent/mm/network/a/b;->cFK:Lcom/tencent/mm/network/a/f;

    if-eqz v0, :cond_11

    .line 408
    iget-object v0, p3, Lcom/tencent/mm/network/a/b;->cFK:Lcom/tencent/mm/network/a/f;

    invoke-virtual {v0}, Lcom/tencent/mm/network/a/f;->type()I

    move-result v0

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWJ:I

    .line 410
    :cond_11
    iget v0, p3, Lcom/tencent/mm/network/a/b;->bLI:I

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWz:I

    .line 411
    iget v0, p3, Lcom/tencent/mm/network/a/b;->bLJ:I

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fDy:I

    .line 412
    iget-wide v0, p3, Lcom/tencent/mm/network/a/b;->cFN:J

    long-to-int v0, v0

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWD:I

    .line 413
    iget-wide v0, p3, Lcom/tencent/mm/network/a/b;->cFO:J

    long-to-int v0, v0

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWE:I

    .line 414
    iget v0, p3, Lcom/tencent/mm/network/a/b;->bLJ:I

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fDy:I

    .line 415
    iget-wide v0, p3, Lcom/tencent/mm/network/a/b;->cFW:J

    long-to-int v0, v0

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWL:I

    .line 416
    iget-object v0, p3, Lcom/tencent/mm/network/a/b;->cFY:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelstat/l;->gy(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWU:I

    .line 417
    iget-wide v0, p3, Lcom/tencent/mm/network/a/b;->cFZ:J

    long-to-int v0, v0

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWV:I

    .line 418
    iget-wide v0, p3, Lcom/tencent/mm/network/a/b;->cFU:J

    long-to-int v0, v0

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWW:I

    .line 419
    iget-wide v0, p3, Lcom/tencent/mm/network/a/b;->cFT:J

    long-to-int v0, v0

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWX:I

    .line 420
    iget-wide v0, p3, Lcom/tencent/mm/network/a/b;->cFX:J

    long-to-int v0, v0

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWY:I

    .line 421
    iget-wide v0, p3, Lcom/tencent/mm/network/a/b;->cFV:J

    long-to-int v0, v0

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWZ:I

    .line 422
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 406
    :cond_12
    const/4 v0, 0x0

    goto :goto_3

    .line 425
    :sswitch_b
    check-cast p3, Lcom/tencent/mm/network/a/b;

    .line 426
    if-nez p3, :cond_13

    .line 427
    const-string v0, "MicroMsg.NetStatWatchDog"

    const-string v1, "report multi scene info null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 430
    :cond_13
    iget-wide v0, p3, Lcom/tencent/mm/network/a/b;->cFJ:J

    const-wide/16 v2, 0x6e

    cmp-long v0, v0, v2

    if-nez v0, :cond_15

    .line 431
    const/16 v0, 0x28a1

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWu:I

    .line 435
    :cond_14
    :goto_4
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWT:J

    .line 436
    const/4 v0, 0x0

    iget-wide v1, p3, Lcom/tencent/mm/network/a/b;->cyG:J

    iget-wide v3, p3, Lcom/tencent/mm/network/a/b;->cyD:J

    iget-wide v5, p3, Lcom/tencent/mm/network/a/b;->endTime:J

    move-object v7, p2

    invoke-static/range {v0 .. v7}, Lcom/tencent/mm/modelstat/l;->a(ZJJJLcom/tencent/mm/protocal/a/vv;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 437
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 432
    :cond_15
    iget-wide v0, p3, Lcom/tencent/mm/network/a/b;->cFJ:J

    const-wide/16 v2, 0x6d

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    .line 433
    const/16 v0, 0x28a2

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWu:I

    goto :goto_4

    .line 439
    :cond_16
    iget v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWu:I

    const/16 v1, 0x28a1

    if-ne v0, v1, :cond_18

    .line 440
    iget-object v0, p0, Lcom/tencent/mm/modelstat/l;->czN:Lcom/tencent/mm/protocal/a/vv;

    if-nez v0, :cond_17

    .line 441
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 443
    :cond_17
    iget-object v0, p0, Lcom/tencent/mm/modelstat/l;->czN:Lcom/tencent/mm/protocal/a/vv;

    iget v0, v0, Lcom/tencent/mm/protocal/a/vv;->fWK:I

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWK:I

    .line 444
    iget-object v0, p0, Lcom/tencent/mm/modelstat/l;->czN:Lcom/tencent/mm/protocal/a/vv;

    iget v0, v0, Lcom/tencent/mm/protocal/a/vv;->fWw:I

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWw:I

    .line 445
    iget-object v0, p0, Lcom/tencent/mm/modelstat/l;->czN:Lcom/tencent/mm/protocal/a/vv;

    iget v0, v0, Lcom/tencent/mm/protocal/a/vv;->fWx:I

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWx:I

    .line 446
    iget-object v0, p0, Lcom/tencent/mm/modelstat/l;->czN:Lcom/tencent/mm/protocal/a/vv;

    iget v0, v0, Lcom/tencent/mm/protocal/a/vv;->fWJ:I

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWJ:I

    .line 447
    iget-object v0, p0, Lcom/tencent/mm/modelstat/l;->czN:Lcom/tencent/mm/protocal/a/vv;

    iget v0, v0, Lcom/tencent/mm/protocal/a/vv;->fUN:I

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fUN:I

    .line 448
    invoke-static {}, Lcom/tencent/mm/network/bk;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/ba;->bt(Landroid/content/Context;)Z

    invoke-static {}, Lcom/tencent/mm/jni/platformcomm/c;->rY()J

    const/4 v0, 0x0

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWL:I

    .line 449
    iget-object v0, p0, Lcom/tencent/mm/modelstat/l;->czN:Lcom/tencent/mm/protocal/a/vv;

    iget v0, v0, Lcom/tencent/mm/protocal/a/vv;->fWM:I

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWM:I

    .line 450
    iget-object v0, p0, Lcom/tencent/mm/modelstat/l;->czN:Lcom/tencent/mm/protocal/a/vv;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/vv;->fWN:Ljava/lang/String;

    iput-object v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWN:Ljava/lang/String;

    .line 464
    :goto_5
    iget-wide v0, p3, Lcom/tencent/mm/network/a/b;->cFP:J

    long-to-int v0, v0

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fAC:I

    .line 465
    iget-wide v0, p3, Lcom/tencent/mm/network/a/b;->cFN:J

    long-to-int v0, v0

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWD:I

    .line 466
    iget-wide v0, p3, Lcom/tencent/mm/network/a/b;->cFO:J

    long-to-int v0, v0

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWE:I

    .line 467
    iget-object v0, p3, Lcom/tencent/mm/network/a/b;->cFY:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelstat/l;->gy(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWU:I

    .line 468
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 452
    :cond_18
    iget-object v0, p0, Lcom/tencent/mm/modelstat/l;->czO:Lcom/tencent/mm/protocal/a/vv;

    if-nez v0, :cond_19

    .line 453
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 455
    :cond_19
    iget-object v0, p0, Lcom/tencent/mm/modelstat/l;->czO:Lcom/tencent/mm/protocal/a/vv;

    iget v0, v0, Lcom/tencent/mm/protocal/a/vv;->fWK:I

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWK:I

    .line 456
    iget-object v0, p0, Lcom/tencent/mm/modelstat/l;->czO:Lcom/tencent/mm/protocal/a/vv;

    iget v0, v0, Lcom/tencent/mm/protocal/a/vv;->fWw:I

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWw:I

    .line 457
    iget-object v0, p0, Lcom/tencent/mm/modelstat/l;->czO:Lcom/tencent/mm/protocal/a/vv;

    iget v0, v0, Lcom/tencent/mm/protocal/a/vv;->fWx:I

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWx:I

    .line 458
    iget-object v0, p0, Lcom/tencent/mm/modelstat/l;->czO:Lcom/tencent/mm/protocal/a/vv;

    iget v0, v0, Lcom/tencent/mm/protocal/a/vv;->fWJ:I

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWJ:I

    .line 459
    iget-object v0, p0, Lcom/tencent/mm/modelstat/l;->czO:Lcom/tencent/mm/protocal/a/vv;

    iget v0, v0, Lcom/tencent/mm/protocal/a/vv;->fUN:I

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fUN:I

    .line 460
    invoke-static {}, Lcom/tencent/mm/network/bk;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/ba;->bt(Landroid/content/Context;)Z

    invoke-static {}, Lcom/tencent/mm/jni/platformcomm/c;->rY()J

    const/4 v0, 0x0

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWL:I

    .line 461
    iget-object v0, p0, Lcom/tencent/mm/modelstat/l;->czO:Lcom/tencent/mm/protocal/a/vv;

    iget v0, v0, Lcom/tencent/mm/protocal/a/vv;->fWM:I

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWM:I

    .line 462
    iget-object v0, p0, Lcom/tencent/mm/modelstat/l;->czO:Lcom/tencent/mm/protocal/a/vv;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/vv;->fWN:Ljava/lang/String;

    iput-object v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWN:Ljava/lang/String;

    goto :goto_5

    .line 473
    :sswitch_c
    check-cast p3, Lcom/tencent/mm/network/a/b;

    .line 474
    if-nez p3, :cond_1a

    .line 475
    const-string v0, "MicroMsg.NetStatWatchDog"

    const-string v1, "report connect ip info null or nettype error"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 478
    :cond_1a
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWT:J

    .line 479
    const-string v1, "MicroMsg.NetStatWatchDog"

    const-string v2, "dkdog %s:[%s] sock:%b net:%d cost:%d ret:%d tx:%d rx:%d"

    const/16 v0, 0x8

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/16 v0, 0x2779

    if-ne p1, v0, :cond_1b

    const-string v0, "synccheckconnect"

    :goto_6
    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget-object v4, p3, Lcom/tencent/mm/network/a/b;->cFK:Lcom/tencent/mm/network/a/f;

    aput-object v4, v3, v0

    const/4 v0, 0x2

    iget-boolean v4, p3, Lcom/tencent/mm/network/a/b;->cFL:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x3

    iget v4, p3, Lcom/tencent/mm/network/a/b;->cFM:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x4

    iget-wide v4, p3, Lcom/tencent/mm/network/a/b;->cyG:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x5

    iget v4, p3, Lcom/tencent/mm/network/a/b;->bLJ:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x6

    iget-wide v4, p3, Lcom/tencent/mm/network/a/b;->cFN:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x7

    iget-wide v4, p3, Lcom/tencent/mm/network/a/b;->cFO:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 481
    iget v0, p3, Lcom/tencent/mm/network/a/b;->bLJ:I

    if-eqz v0, :cond_1c

    .line 482
    iget v0, p0, Lcom/tencent/mm/modelstat/l;->czF:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/mm/modelstat/l;->czF:I

    .line 483
    iget v0, p0, Lcom/tencent/mm/modelstat/l;->czF:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1d

    .line 484
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 479
    :cond_1b
    const-string v0, "connect"

    goto :goto_6

    .line 487
    :cond_1c
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/modelstat/l;->czF:I

    .line 490
    :cond_1d
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/modelstat/l;->czM:J

    .line 491
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/modelstat/l;->czK:J

    .line 492
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/modelstat/l;->czL:J

    .line 494
    iput p1, p2, Lcom/tencent/mm/protocal/a/vv;->fWu:I

    .line 495
    iget v0, p3, Lcom/tencent/mm/network/a/b;->cFM:I

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fUN:I

    .line 496
    iget-wide v0, p3, Lcom/tencent/mm/network/a/b;->cFW:J

    long-to-int v0, v0

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWL:I

    .line 497
    invoke-static {}, Lcom/tencent/mm/network/bk;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/ba;->bm(Landroid/content/Context;)I

    move-result v0

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWM:I

    .line 498
    invoke-static {}, Lcom/tencent/mm/network/bk;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/ba;->bn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWN:Ljava/lang/String;

    .line 499
    iget-object v0, p3, Lcom/tencent/mm/network/a/b;->cFK:Lcom/tencent/mm/network/a/f;

    invoke-static {v0}, Lcom/tencent/mm/network/a/f;->a(Lcom/tencent/mm/network/a/f;)I

    move-result v0

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWw:I

    .line 500
    iget-object v0, p3, Lcom/tencent/mm/network/a/b;->cFK:Lcom/tencent/mm/network/a/f;

    invoke-virtual {v0}, Lcom/tencent/mm/network/a/f;->Fn()I

    move-result v0

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWx:I

    .line 501
    iget-object v0, p3, Lcom/tencent/mm/network/a/b;->cFK:Lcom/tencent/mm/network/a/f;

    invoke-virtual {v0}, Lcom/tencent/mm/network/a/f;->type()I

    move-result v0

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWy:I

    .line 502
    iget-wide v0, p3, Lcom/tencent/mm/network/a/b;->cFN:J

    long-to-int v0, v0

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWD:I

    .line 503
    iget-wide v0, p3, Lcom/tencent/mm/network/a/b;->cFO:J

    long-to-int v0, v0

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWE:I

    .line 504
    iget-boolean v0, p3, Lcom/tencent/mm/network/a/b;->cFL:Z

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    :goto_7
    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWK:I

    .line 505
    iget-object v0, p3, Lcom/tencent/mm/network/a/b;->cFK:Lcom/tencent/mm/network/a/f;

    if-eqz v0, :cond_1e

    .line 506
    iget-object v0, p3, Lcom/tencent/mm/network/a/b;->cFK:Lcom/tencent/mm/network/a/f;

    invoke-virtual {v0}, Lcom/tencent/mm/network/a/f;->type()I

    move-result v0

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWJ:I

    .line 508
    :cond_1e
    iget v0, p2, Lcom/tencent/mm/protocal/a/vv;->fUN:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 509
    iget-boolean v0, p0, Lcom/tencent/mm/modelstat/l;->czG:Z

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    :goto_8
    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWF:I

    .line 511
    :cond_1f
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/modelstat/l;->czG:Z

    .line 512
    iget v0, p3, Lcom/tencent/mm/network/a/b;->bLJ:I

    if-nez v0, :cond_22

    const/4 v0, 0x0

    :goto_9
    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWz:I

    .line 513
    iget v0, p3, Lcom/tencent/mm/network/a/b;->bLJ:I

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fDy:I

    .line 515
    const/4 v0, 0x0

    iget-wide v1, p3, Lcom/tencent/mm/network/a/b;->cyG:J

    iget-wide v3, p3, Lcom/tencent/mm/network/a/b;->cyD:J

    iget-wide v5, p3, Lcom/tencent/mm/network/a/b;->endTime:J

    move-object v7, p2

    invoke-static/range {v0 .. v7}, Lcom/tencent/mm/modelstat/l;->a(ZJJJLcom/tencent/mm/protocal/a/vv;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 516
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 504
    :cond_20
    const/4 v0, 0x0

    goto :goto_7

    .line 509
    :cond_21
    const/4 v0, 0x0

    goto :goto_8

    .line 512
    :cond_22
    const/4 v0, 0x1

    goto :goto_9

    .line 525
    :cond_23
    iget-boolean v0, p3, Lcom/tencent/mm/network/a/b;->cFL:Z

    if-eqz v0, :cond_24

    .line 526
    iput-object p2, p0, Lcom/tencent/mm/modelstat/l;->czH:Lcom/tencent/mm/protocal/a/vv;

    .line 528
    :cond_24
    iget-object v0, p3, Lcom/tencent/mm/network/a/b;->cFY:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelstat/l;->gy(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWU:I

    .line 529
    iget-boolean v0, p0, Lcom/tencent/mm/modelstat/l;->czP:Z

    if-eqz v0, :cond_25

    iget-wide v0, p3, Lcom/tencent/mm/network/a/b;->cyD:J

    iget-wide v2, p0, Lcom/tencent/mm/modelstat/l;->czQ:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_25

    const/16 v0, 0x2775

    if-ne v0, p1, :cond_25

    .line 530
    iget v0, p0, Lcom/tencent/mm/modelstat/l;->czU:I

    int-to-long v0, v0

    iget-wide v2, p3, Lcom/tencent/mm/network/a/b;->cyG:J

    add-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/tencent/mm/modelstat/l;->czU:I

    .line 531
    iget v0, p0, Lcom/tencent/mm/modelstat/l;->czT:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/mm/modelstat/l;->czT:I

    .line 533
    :cond_25
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 536
    :sswitch_d
    check-cast p3, Lcom/tencent/mm/network/a/b;

    .line 537
    if-nez p3, :cond_26

    .line 538
    const-string v0, "MicroMsg.NetStatWatchDog"

    const-string v1, "report nslookup info null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 542
    :cond_26
    const/4 v0, 0x0

    iget-wide v1, p3, Lcom/tencent/mm/network/a/b;->cyG:J

    iget-wide v3, p3, Lcom/tencent/mm/network/a/b;->cyD:J

    iget-wide v5, p3, Lcom/tencent/mm/network/a/b;->endTime:J

    move-object v7, p2

    invoke-static/range {v0 .. v7}, Lcom/tencent/mm/modelstat/l;->a(ZJJJLcom/tencent/mm/protocal/a/vv;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 543
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 545
    :cond_27
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWT:J

    .line 546
    const/16 v0, 0x28bc

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWu:I

    .line 547
    iget v0, p3, Lcom/tencent/mm/network/a/b;->cFM:I

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fUN:I

    .line 548
    iget v0, p2, Lcom/tencent/mm/protocal/a/vv;->fUN:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2b

    iget-object v0, p0, Lcom/tencent/mm/modelstat/l;->czy:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_28

    invoke-static {}, Lcom/tencent/mm/network/bk;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-static {}, Lcom/tencent/mm/network/bk;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/tencent/mm/modelstat/l;->czy:Landroid/net/wifi/WifiManager;

    :cond_28
    iget-object v0, p0, Lcom/tencent/mm/modelstat/l;->czy:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/tencent/mm/modelstat/l;->czy:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    :goto_a
    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWL:I

    .line 549
    iget-wide v0, p3, Lcom/tencent/mm/network/a/b;->cFX:J

    long-to-int v0, v0

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWQ:I

    .line 550
    iget v0, p3, Lcom/tencent/mm/network/a/b;->bLI:I

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWz:I

    .line 551
    iget-object v0, p3, Lcom/tencent/mm/network/a/b;->cEu:Ljava/lang/String;

    iput-object v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWP:Ljava/lang/String;

    .line 552
    iget-wide v0, p3, Lcom/tencent/mm/network/a/b;->cFX:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_29

    .line 553
    iget-object v0, p3, Lcom/tencent/mm/network/a/b;->cFK:Lcom/tencent/mm/network/a/f;

    invoke-static {v0}, Lcom/tencent/mm/network/a/f;->a(Lcom/tencent/mm/network/a/f;)I

    move-result v0

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWw:I

    .line 555
    :cond_29
    iget-boolean v0, p3, Lcom/tencent/mm/network/a/b;->cFL:Z

    if-eqz v0, :cond_30

    const/4 v0, 0x1

    :goto_b
    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWK:I

    .line 556
    invoke-static {}, Lcom/tencent/mm/network/bk;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/ba;->bm(Landroid/content/Context;)I

    move-result v0

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWM:I

    .line 557
    invoke-static {}, Lcom/tencent/mm/network/bk;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/ba;->bn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWN:Ljava/lang/String;

    .line 558
    iget v0, p3, Lcom/tencent/mm/network/a/b;->bLJ:I

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fDy:I

    .line 559
    iget-object v0, p3, Lcom/tencent/mm/network/a/b;->cFK:Lcom/tencent/mm/network/a/f;

    invoke-virtual {v0}, Lcom/tencent/mm/network/a/f;->type()I

    move-result v0

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWy:I

    .line 560
    iget-object v0, p3, Lcom/tencent/mm/network/a/b;->cFY:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelstat/l;->gy(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWU:I

    .line 561
    iget-boolean v0, p0, Lcom/tencent/mm/modelstat/l;->czP:Z

    if-eqz v0, :cond_2a

    iget-wide v0, p3, Lcom/tencent/mm/network/a/b;->cyD:J

    iget-wide v2, p0, Lcom/tencent/mm/modelstat/l;->czQ:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2a

    .line 562
    iget v0, p0, Lcom/tencent/mm/modelstat/l;->czS:I

    int-to-long v0, v0

    iget-wide v2, p3, Lcom/tencent/mm/network/a/b;->cyG:J

    add-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/tencent/mm/modelstat/l;->czS:I

    .line 563
    iget v0, p0, Lcom/tencent/mm/modelstat/l;->czR:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/mm/modelstat/l;->czR:I

    .line 565
    :cond_2a
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 548
    :cond_2b
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2d

    iget-object v0, p0, Lcom/tencent/mm/modelstat/l;->czz:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_2c

    invoke-static {}, Lcom/tencent/mm/network/bk;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-static {}, Lcom/tencent/mm/network/bk;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/tencent/mm/modelstat/l;->czz:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/tencent/mm/modelstat/l;->czz:Landroid/telephony/TelephonyManager;

    new-instance v1, Lcom/tencent/mm/modelstat/p;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/tencent/mm/modelstat/p;-><init>(B)V

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_2c
    iget-object v0, p0, Lcom/tencent/mm/modelstat/l;->czz:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_2f

    sget v0, Lcom/tencent/mm/modelstat/l;->czA:I

    goto/16 :goto_a

    :cond_2d
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2f

    iget-object v0, p0, Lcom/tencent/mm/modelstat/l;->czz:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_2e

    invoke-static {}, Lcom/tencent/mm/network/bk;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-static {}, Lcom/tencent/mm/network/bk;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/tencent/mm/modelstat/l;->czz:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/tencent/mm/modelstat/l;->czz:Landroid/telephony/TelephonyManager;

    new-instance v1, Lcom/tencent/mm/modelstat/p;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/tencent/mm/modelstat/p;-><init>(B)V

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_2e
    iget-object v0, p0, Lcom/tencent/mm/modelstat/l;->czz:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_2f

    sget v0, Lcom/tencent/mm/modelstat/l;->czB:I

    goto/16 :goto_a

    :cond_2f
    const/4 v0, 0x0

    goto/16 :goto_a

    .line 555
    :cond_30
    const/4 v0, 0x0

    goto/16 :goto_b

    .line 568
    :sswitch_e
    check-cast p3, Lcom/tencent/mm/network/a/b;

    .line 569
    if-nez p3, :cond_31

    .line 570
    const-string v0, "MicroMsg.NetStatWatchDog"

    const-string v1, "report disconnect ip info null or nettype error"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 573
    :cond_31
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWT:J

    .line 574
    const-string v0, "MicroMsg.NetStatWatchDog"

    const-string v1, "dkdog DISconnect:[%s] net:%d alive:%d err:%d "

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p3, Lcom/tencent/mm/network/a/b;->cFK:Lcom/tencent/mm/network/a/f;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p3, Lcom/tencent/mm/network/a/b;->cFM:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-wide v4, p3, Lcom/tencent/mm/network/a/b;->endTime:J

    iget-wide v6, p3, Lcom/tencent/mm/network/a/b;->cyD:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p3, Lcom/tencent/mm/network/a/b;->bLJ:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 575
    iget-wide v3, p3, Lcom/tencent/mm/network/a/b;->cyD:J

    .line 576
    iget-wide v0, p0, Lcom/tencent/mm/modelstat/l;->czL:J

    long-to-int v0, v0

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWt:I

    .line 577
    iget-wide v0, p0, Lcom/tencent/mm/modelstat/l;->czM:J

    long-to-int v0, v0

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWo:I

    .line 578
    iget-wide v0, p0, Lcom/tencent/mm/modelstat/l;->czK:J

    long-to-int v0, v0

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWI:I

    .line 579
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/modelstat/l;->czM:J

    .line 580
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/modelstat/l;->czL:J

    .line 581
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/modelstat/l;->czK:J

    .line 582
    iget-wide v5, p3, Lcom/tencent/mm/network/a/b;->endTime:J

    .line 583
    const/16 v0, 0x2776

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWu:I

    .line 584
    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    move-object v7, p2

    invoke-static/range {v0 .. v7}, Lcom/tencent/mm/modelstat/l;->a(ZJJJLcom/tencent/mm/protocal/a/vv;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 585
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 588
    :cond_32
    iget v0, p3, Lcom/tencent/mm/network/a/b;->bLJ:I

    if-nez v0, :cond_33

    const/4 v0, 0x0

    :goto_c
    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWz:I

    .line 589
    const/4 v0, 0x1

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWK:I

    .line 590
    iget-object v0, p3, Lcom/tencent/mm/network/a/b;->cFK:Lcom/tencent/mm/network/a/f;

    invoke-static {v0}, Lcom/tencent/mm/network/a/f;->a(Lcom/tencent/mm/network/a/f;)I

    move-result v0

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWw:I

    .line 591
    iget-object v0, p3, Lcom/tencent/mm/network/a/b;->cFK:Lcom/tencent/mm/network/a/f;

    invoke-virtual {v0}, Lcom/tencent/mm/network/a/f;->Fn()I

    move-result v0

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWx:I

    .line 592
    iget-object v0, p3, Lcom/tencent/mm/network/a/b;->cFK:Lcom/tencent/mm/network/a/f;

    invoke-virtual {v0}, Lcom/tencent/mm/network/a/f;->type()I

    move-result v0

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWy:I

    .line 593
    iget v0, p3, Lcom/tencent/mm/network/a/b;->cFM:I

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fUN:I

    .line 594
    const/4 v0, 0x0

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWA:I

    .line 595
    iget v0, p3, Lcom/tencent/mm/network/a/b;->bLJ:I

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fDy:I

    .line 596
    iget-wide v0, p3, Lcom/tencent/mm/network/a/b;->cFW:J

    long-to-int v0, v0

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWL:I

    .line 597
    iget-object v0, p0, Lcom/tencent/mm/modelstat/l;->czH:Lcom/tencent/mm/protocal/a/vv;

    iget v0, v0, Lcom/tencent/mm/protocal/a/vv;->fWM:I

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWM:I

    .line 598
    iget-object v0, p0, Lcom/tencent/mm/modelstat/l;->czH:Lcom/tencent/mm/protocal/a/vv;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/vv;->fWN:Ljava/lang/String;

    iput-object v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWN:Ljava/lang/String;

    .line 599
    iget-wide v0, p3, Lcom/tencent/mm/network/a/b;->cFX:J

    iput-wide v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWR:J

    .line 600
    iget-object v0, p3, Lcom/tencent/mm/network/a/b;->cFY:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelstat/l;->gy(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWU:I

    .line 601
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 588
    :cond_33
    const/4 v0, 0x1

    goto :goto_c

    .line 604
    :sswitch_f
    check-cast p3, Lcom/tencent/mm/network/a/b;

    .line 605
    if-nez p3, :cond_34

    .line 606
    const-string v0, "MicroMsg.NetStatWatchDog"

    const-string v1, "report ESS_FOR_IPXX_READ_TICKET info null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 609
    :cond_34
    const v0, 0x98929a

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWu:I

    .line 610
    iget-object v0, p3, Lcom/tencent/mm/network/a/b;->cEu:Ljava/lang/String;

    iput-object v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWP:Ljava/lang/String;

    .line 611
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 614
    :sswitch_10
    check-cast p3, Lcom/tencent/mm/network/a/b;

    .line 615
    if-nez p3, :cond_35

    .line 616
    const-string v0, "MicroMsg.NetStatWatchDog"

    const-string v1, "report ESS_FOR_IPXX_SAVE_TICKET info null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 619
    :cond_35
    const v0, 0x989299

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWu:I

    .line 620
    iget-object v0, p3, Lcom/tencent/mm/network/a/b;->cEu:Ljava/lang/String;

    iput-object v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWP:Ljava/lang/String;

    .line 621
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 624
    :sswitch_11
    check-cast p3, Lcom/tencent/mm/network/a/b;

    .line 625
    if-nez p3, :cond_36

    .line 626
    const-string v0, "MicroMsg.NetStatWatchDog"

    const-string v1, "report build connect info null or nettype error"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 630
    :cond_36
    const/4 v0, 0x1

    iget-wide v1, p3, Lcom/tencent/mm/network/a/b;->cyG:J

    iget-wide v3, p3, Lcom/tencent/mm/network/a/b;->cyD:J

    iget-wide v5, p3, Lcom/tencent/mm/network/a/b;->endTime:J

    move-object v7, p2

    invoke-static/range {v0 .. v7}, Lcom/tencent/mm/modelstat/l;->a(ZJJJLcom/tencent/mm/protocal/a/vv;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 631
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 633
    :cond_37
    const/16 v0, 0x2777

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWu:I

    .line 634
    iget v0, p3, Lcom/tencent/mm/network/a/b;->bLJ:I

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fDy:I

    .line 635
    iget-wide v0, p3, Lcom/tencent/mm/network/a/b;->cFW:J

    long-to-int v0, v0

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWL:I

    .line 636
    iget v0, p3, Lcom/tencent/mm/network/a/b;->cFM:I

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fUN:I

    .line 637
    iget-object v0, p3, Lcom/tencent/mm/network/a/b;->cFY:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelstat/l;->gy(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWU:I

    .line 639
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 642
    :sswitch_12
    check-cast p3, Lcom/tencent/mm/network/a/b;

    .line 643
    if-nez p3, :cond_38

    .line 644
    const-string v0, "MicroMsg.NetStatWatchDog"

    const-string v1, "report build connect info null or nettype error"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 648
    :cond_38
    const/4 v0, 0x1

    iget-wide v1, p3, Lcom/tencent/mm/network/a/b;->cyG:J

    iget-wide v3, p3, Lcom/tencent/mm/network/a/b;->cyD:J

    iget-wide v5, p3, Lcom/tencent/mm/network/a/b;->endTime:J

    move-object v7, p2

    invoke-static/range {v0 .. v7}, Lcom/tencent/mm/modelstat/l;->a(ZJJJLcom/tencent/mm/protocal/a/vv;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 649
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 651
    :cond_39
    const/16 v0, 0x2778

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWu:I

    .line 652
    iget-wide v0, p3, Lcom/tencent/mm/network/a/b;->cFW:J

    long-to-int v0, v0

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWL:I

    .line 653
    iget v0, p3, Lcom/tencent/mm/network/a/b;->cFM:I

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fUN:I

    .line 654
    iget-object v0, p3, Lcom/tencent/mm/network/a/b;->cFY:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelstat/l;->gy(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWU:I

    .line 656
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 659
    :sswitch_13
    check-cast p3, Lcom/tencent/mm/network/a/b;

    .line 660
    if-nez p3, :cond_3a

    .line 661
    const-string v0, "MicroMsg.NetStatWatchDog"

    const-string v1, "report build connect info null or nettype error"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 664
    :cond_3a
    const/4 v0, -0x1

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWu:I

    .line 665
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWG:J

    .line 666
    invoke-static {}, Lcom/tencent/mm/network/bp;->Fj()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWH:J

    .line 667
    invoke-static {}, Lcom/tencent/mm/network/bp;->Fk()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWB:I

    .line 669
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 672
    :sswitch_14
    check-cast p3, Lcom/tencent/mm/network/a/b;

    .line 673
    if-nez p3, :cond_3b

    .line 674
    const-string v0, "MicroMsg.NetStatWatchDog"

    const-string v1, "report build connect info null or nettype error"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 677
    :cond_3b
    const/4 v0, -0x2

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWu:I

    .line 678
    invoke-static {}, Lcom/tencent/mm/network/bk;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 679
    if-eqz v0, :cond_3c

    .line 680
    invoke-static {}, Lcom/tencent/mm/jni/platformcomm/PlatformComm$C2Java;->getStatisticsNetType()I

    move-result v1

    iput v1, p2, Lcom/tencent/mm/protocal/a/vv;->fUN:I

    .line 681
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/ba;->bm(Landroid/content/Context;)I

    move-result v1

    iput v1, p2, Lcom/tencent/mm/protocal/a/vv;->fWy:I

    .line 683
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/ba;->bt(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 684
    invoke-static {}, Lcom/tencent/mm/jni/platformcomm/c;->sa()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWL:I

    .line 689
    :cond_3c
    :goto_d
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 686
    :cond_3d
    invoke-static {}, Lcom/tencent/mm/jni/platformcomm/c;->rZ()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWL:I

    goto :goto_d

    .line 692
    :sswitch_15
    check-cast p3, Lcom/tencent/mm/network/a/b;

    .line 693
    if-nez p3, :cond_3e

    .line 694
    const-string v0, "MicroMsg.NetStatWatchDog"

    const-string v1, "report build connect info null or nettype error"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 698
    :cond_3e
    const/4 v0, 0x1

    iget-wide v1, p3, Lcom/tencent/mm/network/a/b;->cyG:J

    iget-wide v3, p3, Lcom/tencent/mm/network/a/b;->cyD:J

    iget-wide v5, p3, Lcom/tencent/mm/network/a/b;->endTime:J

    move-object v7, p2

    invoke-static/range {v0 .. v7}, Lcom/tencent/mm/modelstat/l;->a(ZJJJLcom/tencent/mm/protocal/a/vv;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 699
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 701
    :cond_3f
    invoke-static {}, Lcom/tencent/mm/jni/platformcomm/PlatformComm$C2Java;->getStatisticsNetType()I

    move-result v0

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fUN:I

    .line 702
    const/4 v0, -0x3

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWu:I

    .line 703
    iget-object v0, p3, Lcom/tencent/mm/network/a/b;->cFY:Ljava/lang/String;

    iput-object v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWP:Ljava/lang/String;

    .line 704
    iget-object v0, p3, Lcom/tencent/mm/network/a/b;->cFK:Lcom/tencent/mm/network/a/f;

    invoke-static {v0}, Lcom/tencent/mm/network/a/f;->a(Lcom/tencent/mm/network/a/f;)I

    move-result v0

    iput v0, p2, Lcom/tencent/mm/protocal/a/vv;->fWw:I

    .line 705
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 236
    :sswitch_data_0
    .sparse-switch
        -0x3 -> :sswitch_15
        -0x2 -> :sswitch_14
        -0x1 -> :sswitch_13
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0x44e -> :sswitch_9
        0x44f -> :sswitch_3
        0x450 -> :sswitch_4
        0x2711 -> :sswitch_5
        0x2712 -> :sswitch_6
        0x2713 -> :sswitch_7
        0x2714 -> :sswitch_8
        0x2775 -> :sswitch_c
        0x2776 -> :sswitch_e
        0x2777 -> :sswitch_11
        0x2778 -> :sswitch_12
        0x2779 -> :sswitch_c
        0x28a1 -> :sswitch_b
        0x28bc -> :sswitch_d
        0x2905 -> :sswitch_0
        0x2990 -> :sswitch_a
        0x989299 -> :sswitch_10
        0x98929a -> :sswitch_f
    .end sparse-switch
.end method

.method static synthetic a(Lcom/tencent/mm/modelstat/l;ILcom/tencent/mm/protocal/a/vv;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/mm/modelstat/l;->a(ILcom/tencent/mm/protocal/a/vv;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/tencent/mm/modelstat/l;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/tencent/mm/modelstat/l;->czw:J

    return-wide p1
.end method

.method static synthetic a(Lcom/tencent/mm/modelstat/l;)Lcom/tencent/mm/modelstat/q;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tencent/mm/modelstat/l;->czu:Lcom/tencent/mm/modelstat/q;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/modelstat/l;Lcom/tencent/mm/modelstat/q;)Lcom/tencent/mm/modelstat/q;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/tencent/mm/modelstat/l;->czu:Lcom/tencent/mm/modelstat/q;

    return-object p1
.end method

.method private static a(ZJJJLcom/tencent/mm/protocal/a/vv;)Z
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v5, 0x0

    .line 942
    sub-long v0, p5, p3

    .line 943
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FD()J

    move-result-wide v2

    .line 944
    cmp-long v4, p5, v5

    if-ltz v4, :cond_0

    cmp-long v4, p3, v5

    if-ltz v4, :cond_0

    cmp-long v4, v0, v5

    if-ltz v4, :cond_0

    cmp-long v4, p1, v5

    if-gez v4, :cond_1

    .line 945
    :cond_0
    const-string v4, "MicroMsg.NetStatWatchDog"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "dkreport fixItemTimes beg:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " end:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " now:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " t:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cost:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    const/4 v0, 0x0

    .line 956
    :goto_0
    return v0

    .line 948
    :cond_1
    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, p7, Lcom/tencent/mm/protocal/a/vv;->fWv:I

    .line 949
    iput-wide p5, p7, Lcom/tencent/mm/protocal/a/vv;->fWH:J

    .line 950
    iput-wide p3, p7, Lcom/tencent/mm/protocal/a/vv;->fWG:J

    .line 951
    if-eqz p0, :cond_2

    .line 952
    long-to-int v0, v0

    iput v0, p7, Lcom/tencent/mm/protocal/a/vv;->fWC:I

    .line 956
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 954
    :cond_2
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p7, Lcom/tencent/mm/protocal/a/vv;->fWB:I

    goto :goto_1
.end method

.method static synthetic b(Lcom/tencent/mm/modelstat/l;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/tencent/mm/modelstat/l;->Db()V

    return-void
.end method

.method static synthetic c(Lcom/tencent/mm/modelstat/l;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/tencent/mm/modelstat/l;->Dc()V

    return-void
.end method

.method static synthetic d(Lcom/tencent/mm/modelstat/l;)J
    .locals 2
    .parameter

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/tencent/mm/modelstat/l;->czw:J

    return-wide v0
.end method

.method static synthetic e(Lcom/tencent/mm/modelstat/l;)V
    .locals 1
    .parameter

    .prologue
    .line 42
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/mm/modelstat/l;->Y(Z)V

    return-void
.end method

.method static synthetic ep(I)I
    .locals 0
    .parameter

    .prologue
    .line 42
    sput p0, Lcom/tencent/mm/modelstat/l;->czA:I

    return p0
.end method

.method static synthetic eq(I)I
    .locals 0
    .parameter

    .prologue
    .line 42
    sput p0, Lcom/tencent/mm/modelstat/l;->czB:I

    return p0
.end method

.method static gx(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 83
    invoke-static {p0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tencent/mm/modelstat/l;->czt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "wd_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FD()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".bin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tencent/mm/modelstat/l;->czt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "wd_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".bin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static gy(Ljava/lang/String;)I
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 96
    :goto_0
    return v0

    .line 93
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 94
    const/4 v2, 0x3

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x2

    aget-byte v3, v1, v3

    shl-int/lit8 v3, v3, 0x8

    const v4, 0xff00

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    const/4 v3, 0x1

    aget-byte v3, v1, v3

    shl-int/lit8 v3, v3, 0x10

    const/high16 v4, 0xff

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    const/4 v3, 0x0

    aget-byte v0, v1, v3
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    shl-int/lit8 v0, v0, 0x18

    const/high16 v1, -0x100

    and-int/2addr v0, v1

    or-int/2addr v0, v2

    goto :goto_0

    .line 96
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final Da()V
    .locals 4

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tencent/mm/modelstat/l;->czt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "wd.ini"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NextReportTime"

    const-wide/16 v2, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/mm/platformtools/i;->a(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/modelstat/l;->czw:J

    .line 104
    iget-wide v0, p0, Lcom/tencent/mm/modelstat/l;->czw:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 105
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FC()J

    move-result-wide v0

    const-wide/32 v2, 0xa8c0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/mm/modelstat/l;->czw:J

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tencent/mm/modelstat/l;->czt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "wd.ini"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LastFile"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/i;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelstat/l;->czx:Ljava/lang/String;

    .line 108
    const-string v0, "MicroMsg.NetStatWatchDog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "readConfig: nextTime:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/tencent/mm/modelstat/l;->czw:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelstat/l;->czx:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public final declared-synchronized a(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 754
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/modelstat/l;->czC:Lcom/tencent/mm/sdk/platformtools/an;

    new-instance v1, Lcom/tencent/mm/modelstat/n;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/tencent/mm/modelstat/n;-><init>(Lcom/tencent/mm/modelstat/l;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/an;->o(Ljava/lang/Runnable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 816
    monitor-exit p0

    return-void

    .line 754
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final eo(I)V
    .locals 2
    .parameter

    .prologue
    .line 819
    const/16 v0, 0x17c

    if-ne v0, p1, :cond_0

    .line 820
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/modelstat/l;->czP:Z

    .line 821
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/modelstat/l;->czV:I

    iput v0, p0, Lcom/tencent/mm/modelstat/l;->czU:I

    iput v0, p0, Lcom/tencent/mm/modelstat/l;->czT:I

    iput v0, p0, Lcom/tencent/mm/modelstat/l;->czS:I

    iput v0, p0, Lcom/tencent/mm/modelstat/l;->czR:I

    .line 822
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/modelstat/l;->czQ:J

    .line 824
    :cond_0
    return-void
.end method
